
var insertNewLine = false;

var input = "";

input += WScript.StdIn.ReadAll();

var output = input.replace(/ {2,}|[\f\n\r\t\v]+/g, " ");
output = output.replace(/(\*\/|})/g, '$1\r\n');
output = output.replace(/( )?(:|}|{|;)( )?/g, '$2');
output = output.replace(/\/\*/g, '\n\/*');
if (insertNewLine) output = output.replace(/(\*\/|})/g, '$1\r\n');
var output_word = '';

for (var i = 0; i < output.length; i++) {
	var s = output.charAt(i);
	if (escape(s).indexOf("%u") > -1) {
		//s = uniencode(s);
	}
	output_word += s ;
}
function uniencode(text) {
	text = escape(text.toString()).replace(/\+/g, "%2B");
	var matches = text.match(/(%([0-9A-F]{2}))/gi);
	if (matches) {
		for (var matchid = 0; matchid < matches.length; matchid++) {
			var code = matches[matchid].substring(1, 3);
			if (parseInt(code, 16) >= 128) {
				text = text.replace(matches[matchid], '%u00' + code);
			}
		}
	}
	text = text.replace('%25', '%u0025');
	text = text.replace('%', '\\');
	return text;
}
var opc = '/*-- \u9428\u52EB\u578E\u9480\u3129\uE5D7\u6D93\u6EC8\uE5D3\u9428\u52EB\u578E\u9480\u3129\uE5D7\u6D93\u6EC8\uE5D3\u9428\u52EB\u578E\u9480\u3129\uE5D7\u6D93\u6EC8\uE5D3\u9428\u52EB\u578E\u9480\u3129\uE5D7\u6D93\u6EC8\uE5D3\u9428\u52EB\u578E\u9480\u3129\uE5D7\u6D93\u6EC8\uE5D3\u9428\u52EB\u578E\u9480\u3129\uE5D7\u6D93\u6EC8\uE5D3\u9428\u52EB\u578E\u9480\u3129\uE5D7\u6D93\u6EC8\uE5D3\u9428\u52EB\u578E\u9480\u3129\uE5D7\u6D93\u6EC8\uE5D3\u9428\u52EB\u578E\u9480\u3129\uE5D7\u6D93\u6EC8\uE5D3\u9428\u52EB\u578E\u9480\u3129\uE5D7\u6D93\u6EC8\uE5D3\u9428\u52EB\u578E\u9480\u3129\uE5D7\u6D93\u6EC8\uE5D3\u9428\u52EB\u578E\u9480\u3129\uE5D7\u6D93\u6EC8\uE5D3\u9428\u52EB\u578E\u9480\u3129\uE5D7\u6D93\u6EC8\uE5D3\u9428\u52EB\u578E\u9480\u3129\uE5D7\u6D93\u6EC8\uE5D3--*/';
WScript.ECHO(output_word + opc);

function unicode2Chr(str) { 
if ('' != str) { 
var st, t, i 
st = ''; 
for (i = 1; i <= str.length/4; i ++){ 
t = str.slice(4*i-4, 4*i-2); 
t = str.slice(4*i-2, 4*i).concat(t); 
st = st.concat('%u').concat(t); 
} 
st = unescape(st); 
return(st); 
} 
else 
return(''); 
} 
