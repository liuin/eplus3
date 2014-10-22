/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
OpenCTags for PSPad
Filename :     OpenCTags.js

Created :      2011/11/29
Created by :   HonestQiao (at) gmail.com
Instalation :
OpenCTags need to be installed in E:\\Program Files\\OpenCTags\\.
The JS (OpenCTags.js) will need to be installed in a directory named "Script\JScript".

Note :
This script has been tested on all Windows Versions.
You may distribute this script freely, but please keep this header intact.

About OpenCTags:
See more information on the website of author : http : // www.wapm.cn /

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
var module_name = "OpenCTags for PSPad";
var module_ver = "1.0.0";
var module_desc = "OpenCTags for PSPad"
var module_copyright = "HonestQiao";

var fs = new ActiveXObject("Scripting.FileSystemObject");
var wsh = new ActiveXObject("WScript.Shell");
var wsn = new ActiveXObject("WScript.Network");
var menu_name = "OpenCTags";
var editor = newEditor();
var openctags_path = "E:\\Program Files\\OpenCTags\\";
var openctags_param = '-t "openctags.tags" -word "{word}" -editor "PSPad" -sel "{sel}" -file "{file}" -line {line}';
var ctags_param = '-f "openctags.tags" --totals=yes -V -R *';
var init_status = false;

function Init() {
	if(init_status) return init_status;
	init_status = true;
	addMenuItem("Open Tag", menu_name, "OpenCTagLocation", "SHIFT+CTRL+8");
	addMenuItem("Prev Tag", menu_name, "OpenCTagLocationPrev", "SHIFT+CTRL+9");
	addMenuItem("Next Tag", menu_name, "OpenCTagLocationNext", "SHIFT+CTRL+0");
	addMenuItem("CTags Build", menu_name, "CTagBuild");
	addMenuItem("Edit this script", menu_name, "editMe");
	addMenuItem("About OpenCTags", menu_name, "About");
	return;
}

function editMe() {
	editor.openFile(moduleFileName(module_name));
}

function About() {
	var VN = "--- OpenCTags Information ---\nModule: " + module_desc +
	"\nVersion: " + module_ver + "\n\nCreated by: " + module_copyright;
	echo(VN);
}

function CTagBuild(){
	try {
		editor.assignActiveEditor();
		var myFile = editor.fileName();
		if (fs.FileExists(openctags_path+"ctags.exe")) {
			command  = openctags_path+"ctags.exe" + " " + ctags_param;
			wsh.CurrentDirectory = myFile.replace(/\\+[^\\]+$/,'');
			logClear();
			var oExec = wsh.Exec(command);
			var stdOut = oExec.StdOut;
			while ( ! stdOut.AtEndOfStream) {
				logAddLine(stdOut.ReadLine().replace(/[\r\n]/g, ''));
			}
		}
		else {
			echo ("This script needs OpenCTags installed in " + openctags_path);
		}
	}
	catch(err) {
		txt = "There was an error on OpenCTagsCmd.\n\n";
		txt += "Error description: " + err.description + "\n\n";
		txt += "Click OK to continue.\n\n";
		echo(txt);
		return;
	}
}

function OpenCTagLocation(){
	OpenCTagsCmd();
}

function OpenCTagLocationPrev(){
	OpenCTagsCmd('p');
}

function OpenCTagLocationNext(){
	OpenCTagsCmd('n');
}

function OpenCTagsCmd(action){
	try {
		editor.assignActiveEditor();
		var myFile = editor.fileName();
		var myTag = editor.selText();
		if (fs.FileExists(openctags_path+"OpenCTags.exe")) {
			if(action && (action=="p" || action=="n")) {
				action = " -action " + action;
			}
			else {
				action = "";
			}
			var myParam = openctags_param.replace('{word}', myTag).replace('{sel}', myTag).replace('{file}', myFile.replace(/^.+?([^\\]+)$/,'$1')).replace('{line}', editor.CaretY())
			command  = openctags_path+"OpenCTags.exe" + " " + myParam+action;
			wsh.CurrentDirectory = myFile.replace(/\\+[^\\]+$/,'');
			var oExec = wsh.Exec(command);
		}
		else {
			echo ("This script needs OpenCTags installed in " + openctags_path);
		}
	}
	catch(err) {
		txt = "There was an error on OpenCTagsCmd.\n\n";
		txt += "Error description: " + err.description + "\n\n";
		txt += "Click OK to continue.\n\n";
		echo(txt);
		return;
	}
}