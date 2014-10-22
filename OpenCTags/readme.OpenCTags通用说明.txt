史上最强编辑器插件OpenCTags使用指南

版本：v1.2.0

一、致谢：
    感谢Romeo JunCU的卓绝工作，是他让我们拥有如此好的插件OpenCTags，感谢HonestQiao的辛勤工作，让我们的众多编辑器都可以插上taglist的翅膀。

二、概览：
    OpenCTags可以支持UltraEdit、UEStudio、EditPlus、EmEditor、Programmer's Notepad、Komodo Edit、NotePad++、Crimson Editor/Emerald Editor、TextPad、PSPad、AkelPad、PhpStorm、EditPadPro、LopeEdit、vim、emacs等任何一种可以设置用户工具的编辑器。
    OpenCTags支持的语言包括：Ant, Asm, Asp, Awk, Basic, BETA, C, C++, C#, Cobol, DosBatch, Eiffel, Erlang, Flex, Fortran, HTML, Java, JavaScript, Lisp, Lua, Make, MatLab, OCaml, Pascal, Perl, PHP, Python, REXX, Ruby, Scheme, Sh, SLang, SML, SQL, Tcl, Tex, Vera, Verilog, VHDL, Vim, YACC，并可以通过适当配置来增加新的语言解析。
    其主要用途为根据当前选中的tag（单词或者文本），快速在所有项目文件中定位列表，并可以根据在列表中的选择快速跳转到对应的文件及定位到tag所在的行，方便你在代码中跳来跳去，实乃编程开发和代码阅读的上好利器。

使用：
    1. 将解压后目录中的OpenCTags目录（不包含版本号的），拷贝到 编辑器安装目录E:\Program Files下；也可以拷贝到其他目录，但是要对应修改以下的配置；

    2. 打开OpenCTags.ini，按照其中的说明，设置编辑器对应的安装路径，即“编辑器安装路径”所对应的列。
        配置文件为Json格式，注意保持Json结构。注意Json数组[]的最后一个元素后，不要加“,”符号，但是之前的元素后，则需要加“,”符号。
        如果你所使用的编辑器已经存在于OpenCTags的配置的列表中，修改“编辑器安装路径”即可；否则需要按照以下格式配置加入新的编辑器。
        editors部分的配置格式，举例如下：
        ["编辑器名称", "编辑器exe文件名", "编辑窗口类名", "编辑器安装路径",		"编辑器调用参数"]
        ["EditPlus3", "EDITPLUS.EXE", "AfxFrameOrView", "E:\\Program Files\\EditPlus 3\\",		"-e \"__PATH____FILENAME__\" -cursor __LINENUMBER__:1 "]
        其中，以下宏变量用于设置对应编辑器的命令行调用，从而正确根据选择的tag打开对应的文件并定位到对应的行：
        编辑器安装路径：路径符号请使用\\或者/
        __PATH__：表示tag所在文件的目录
        __FILENAME__：表示对应tag所在文件的文件名
        __LINENUMBER__：表示对应tag所在文件中的行数

    3. 在编辑器的用户工具中进行如下设置：
        a.【假设快捷键为Ctrl+Alt+Shift+1】
            菜单名称：OpenCTags索引                                          以下命令，请根据实际情况设置OpenCTags路径，注意不要漏了""符号
            命令："E:\Program Files\OpenCTags\ctags.exe"
            参数： -f "openctags.tags" --totals=yes -V -R *
            初始目录：{当前文件目录}
            程序类型：DOS程序
	    保存文件：所有打开文件
            附加说明：
                1) -f 表示ctags文件名
                2) 需要在项目根目录下打开某个文件，再调用该工具，然后才可使用b、c、d、e的工具

        b.【假设快捷键为Ctrl+2】
            菜单名称：OpenCTags定位                                          以下命令，请根据实际情况设置OpenCTags路径，注意不要漏了""符号
            命令："E:\Program Files\OpenCTags\OpenCTags.exe"
            参数： -t "openctags.tags" -word "{当前单词}" -editor "{编辑器名称}" -sel "{当前所选文本}" -file "{当前文件名称}" -line {当前行号}
            初始目录：{当前文件目录}
            程序类型：Windows程序
	    保存文件：无
            附加说明：
                1) -t 表示ctags文件名
                2) -file 表示当前文件名称，不包含路径，包含扩展名
                3) -path 表示当前文件所在的目录，一般无需设置

        c.【假设快捷键为Ctrl+3】
            菜单名称：OpenCTags向前查找                                      以下命令，请根据实际情况设置OpenCTags路径，注意不要漏了""符号
            命令："E:\Program Files\OpenCTags\OpenCTags.exe"
            参数： -t "openctags.tags" -word "{当前单词}" -editor "{编辑器名称}" -sel "{当前所选文本}" -file "{当前文件名称}" -line {当前行号} -action p
            初始目录：{当前文件目录}
            程序类型：Windows程序
	    保存文件：无
            附加说明：
                1) -t 表示ctags文件名
                2) -file 表示当前文件名称，不包含路径，包含扩展名
                3) -path 表示当前文件所在的目录，一般无需设置
                4) -action 表示动作，p表示向前搜索tag访问历史

        d.【假设快捷键为Ctrl+4】
            菜单名称：OpenCTags向后查找                                          以下命令，请根据实际情况设置OpenCTags路径，注意不要漏了""符号
            命令："E:\Program Files\OpenCTags\OpenCTags.exe"
            参数： -t "openctags.tags" -word "{当前单词}" -editor "{编辑器名称}" -sel "{当前所选文本}" -file "{当前文件名称}" -line {当前行号} -action n
            初始目录：{当前文件目录}
            程序类型：Windows程序
	    保存文件：无
            附加说明：
                1) -t 表示ctags文件名
                2) -file 表示当前文件名称，不包含路径，包含扩展名
                3) -path 表示当前文件所在的目录，一般无需设置
                4) -action 表示动作，n表示向前搜索tag访问历史

        e.【假设快捷键为Ctrl+5】
            菜单名称：OpenCTags定位在当前文件                                  以下命令，请根据实际情况设置OpenCTags路径，注意不要漏了""符号
            命令："E:\Program Files\OpenCTags\OpenCTags.exe"
            参数： -t "openctags.tags" -word ":{当前单词}" -editor "{编辑器名称}" -sel ":{当前所选文本}" -file "{当前文件名称}" -line {当前行号}
            初始目录：{当前文件目录}
            程序类型：Windows程序
	    保存文件：无
            附加说明：
                1) -t 表示ctags文件名
                2) -file 表示当前文件名称，不包含路径，包含扩展名
                3) -path 表示当前文件所在的目录，一般无需设置
                4) -word 前面加:，表示在当前文件搜索
                5) -sel 前面加:，表示在当前文件搜索

    4. 使用方法：
        a. 到项目的根目录，打开一个文件，然后按快捷键Ctrl+Alt+Shift+1（或者点击菜单执行“OpenCTags索引”），等待建立ctags完成，在根目录会生成tags文件，注意在svn/git/hg/cvs等中设置忽略该文件
        b. 打开项目内任意文件，选中需要查看的关键字（类名或者函数方法名或者任意玩意），，然后按快捷键Ctrl+2（或者点击菜单执行“OpenCTags”），将会打开OpenCTags提示窗口，提示对应的tags信息
        c. 提示窗口中，会给出匹配的名称，原型缩写，以及所在的文件相对路径，鼠标移动上去，会显示完整的原型提示，双击，会自动打开对应的文件并定位到对应的位置
        d. 提示窗口中，左则的图标代表不同的类型，包括但不限于：类、方法/函数、常量定义、变量等等
        e. 进过多次跳转后，可以按快捷键Ctrl+3、Ctrl+4，来回快速跳转，方便异常
        f. 按下鼠标右键，提示窗口可以随意拖动，只要OpenCTags服务不退出，窗口位置可以自动保持
        g. 提示窗口输入栏，可以任意改变，输入你喜欢的关键字（类名或者函数方法名或者任意玩意）可以实时搜索
        h. 按TAB，会将当前选中的tag自动输入到编辑器（AutoComplete/自动完成），按空格键或者回车会自动打开对应的文件并定位到对应的位置
        i. 当tag前面带有:符号时，可以在当前文件中进行搜索

    5. 快捷键设置：
        当前快捷键列表，可以看：菜单＝》帮助＝》键盘映射
        设置新的快捷键，可以用：菜单＝》工具＝》参数设置＝》快捷键＝》类型：工具＝》用户工具1~20进行设置

主流编辑器用户工具设置举例： 
        UltraEdit:
        添加方式：“高级”菜单＝》工具栏配置
        调用命令：""E:\Program Files\OpenCTags\OpenCTags.exe"" -t openctags.tags -editor "UltraEdit" -sel "%sel%" -file "%f" -line %line% 
        当前目录：%p

        UEStudio:
        添加方式：“高级”菜单＝》工具栏配置
        调用命令：""E:\Program Files\OpenCTags\OpenCTags.exe"" -t openctags.tags -editor "UEStudio" -sel "%sel%" -file "%f" -line %line% 
        当前目录：%p

        EditPlus2:
        添加方式：“工具/Tools”菜单＝》配置用户工具
        调用命令："E:\Program Files\OpenCTags\OpenCTags.exe"
        调用参数：-t openctags.tags -word "$(CurWord)" -editor "EditPlus2" -sel "$(CurSel)" -file "$(FilePath)" -line $(CurLine)
        当前目录：$(FileDir)

        EditPlus3:
        添加方式：“工具/Tools”菜单＝》配置用户工具
        调用命令："E:\Program Files\OpenCTags\OpenCTags.exe"
        调用参数：-t openctags.tags -word "$(CurWord)" -editor "EditPlus3" -sel "$(CurSel)" -file "$(FilePath)" -line $(CurLine)
        当前目录：$(FileDir)

        EmEditor:
        添加方式：“工具/Tools”菜单＝》外部工具＝》自定义工具
        调用命令："E:\Program Files\OpenCTags\OpenCTags.exe"
        调用参数：-t "openctags.tags" -word "$(WordText)" -editor "EmEditor" -sel "$(SelText)" -file "$(FilenameEx)" -line $(CurLine)
        当前目录：$(Dir)

        Programmer's Notepad:
        添加方式：“工具/Tools”菜单＝》Options＝》Tools＝》Global Tools
        调用命令："E:\Program Files\OpenCTags\OpenCTags.exe"
        调用参数：-t "openctags.tags" -word "%w" -editor "Programmer's Notepad" -sel "" -file "%d" -line %l
        当前目录：%d

        Komodo Edit:
        添加方式：“View”菜单＝》Tabs& Sidebars ＝》Toolbox，Toolbox面板＝》鼠标右键＝》Add＝》New Command
        调用命令：""E:\Program Files\OpenCTags\OpenCTags.exe"" -t "openctags.tags" -word "%w" -editor "Komodo Edit" -sel "%s" -file "%f" -line %L
        当前目录：%D

        NotePad++:
        添加方式：“运行”菜单＝》运行，输入调用命令后，点保存设置快捷键
        调用命令：""E:\Program Files\OpenCTags\OpenCTags.exe"" -t "openctags.tags" -word "$(CURRENT_WORD)" -editor "NotePad++" -sel "$(CURRENT_WORD)" -file "$(FILE_NAME)" -line $(CURRENT_LINE) -path "$(CURRENT_DIRECTORY)"
        当前目录：使用-path参数设置
        附加说明：OpenCTags索引请使用如下调用命令：
        CMD /K CD /D "$(CURRENT_DIRECTORY)" && ("E:\Program Files\OpenCTags\ctags.exe" -f "openctags.tags" --totals=yes -V -R *)

        Crimson Editor:
        添加方式：“Tools”菜单＝》Conf. User Tools，输入调用命令和参数后，点应用
        调用命令："E:\Program Files\OpenCTags\OpenCTags.exe"
        调用参数：-t "openctags.tags" -word "$(CurrWord)" -editor "Crimson Editor" -sel "$(CurrWord)" -file "$(FileName)" -line $(LineNum)
        当前目录：$(FileDir)

        TextPad:
        添加方式：“配置”菜单＝》参数＝》工具，添加后，点开左则“工具”列表，再进行具体设置
        调用命令："E:\Program Files\OpenCTags\OpenCTags.exe"
        调用参数：-t "openctags.tags" -word "$SelWord" -editor "TextPad" -sel "$Sel" -file "$File" -line $Line
        当前目录：$FileDir
        
        PSPad:
        添加方式：将Scripts\PSPad下的Script目录，拷贝到PSPad的安装目录
        使用方式：然后打开PSPad，”脚本“菜单＝》重新编译脚本（Recompile Scripts），即可在”脚本“菜单下生成OpenCTags子菜单，点击进行操作
        附加说明：在Scripts\PSPad\Script\JScript\OpenCTags.js中设置OpenCTags的安装目录

        AkelPad:
        添加方式：将Scripts\AkelPad下的AkelFiles目录，拷贝到AkelPad的安装目录
        使用方式：然后打开AkelPad，”选项“菜单＝》插件＝》Scripts::Main，点击进入Scripts plugin，即可运行对应的指令，并可设置对应快捷键（输入框输入后点Assign）
        附加说明：在AkelFiles\Plugs\Scripts\Include\OpenCTags.js中设置OpenCTags的安装目录

        PHPStorm：
        添加方式：“File”菜单＝》Settings＝》External Tools，点击Add
        调用命令："E:\Program Files\OpenCTags\OpenCTags.exe"
        调用参数：-t "openctags.tags" -word "$SelectedText$" -editor "PhpStorm" -sel "$SelectedText$" -file "$FileName$" -line $LineNumber$
        当前目录：$FileDir$ 

        EditPad：
        添加方式：“Tools”菜单＝》Configure Tools＝》New
        调用命令："E:\Program Files\OpenCTags\OpenCTags.exe" -t "openctags.tags" -word "%WORD%" -editor "EditPad" -sel "%WORD%" -file "%FILENAME%" -line %LINE%
        当前目录：%PATH%

        对应工具设置中，除了OpenCTags索引选择为Console/DOS程序并捕捉输出外，其他的请全部设置为GUI/Windows程序并不捕获输出，也无需接受任何其他参数传递，请参考“readme.OpenCTags通用说明.txt”。

问题：
　　Q: Not known editor
　　A: 没有正确设置编辑器的名称，请检查使用OpenCTags.exe的指令中，-editor部分的设置正确，并且在OpenCTags.ini之中做好了对应的配置。

　　Q: Could not find install dir for editor ...？
　　A: 找不到 编辑器的安装路径，绿色版本的一般会出现该问题；
　　　请确认OpenCTags.ini之中编辑器对应的安装路径设置正确。

　　Q: 双击无法打开文件？
　　A: 请打开“tools\Microsoft Visual Studio Spy++.exe”，按照“tools\Spy++步骤1~4”，找到对应编辑器的类名，然后在OpenCTags.ini，设置编辑器对应的类名

　　Q: 修改或者增加新的代码后，匹配不到怎么办？
　　A: 此时，因为代码发生了变化，所以需要及时再来一次：OpenCTags索引

　　Q: 索引JS文件出错，OpenCTags索引时提示：ctags: Warning: ignoring null tag in .............js
　　A: js文件内有特殊结构，不在CTags默认定义列表中；请将“.ctags”拷贝到%HOMEDRIVE%%HOMEPATH%（Win+R，输入回车即可打开）目录下，然后重新索引

　　Q: 调用时，提示：Could not find tags file names [openctags.tags] in directory ...... or in a parent directory
　　A: 还没有建立ctags索引，请按照“使用”=>“4. 使用方法”=>“a. 到项目的根目录”，打开一个文件，然后建立索引即可

附加：
　 0. ctags是个什么东东？你out了，快点上网查吧。

    1. 该插件，来自于sf的OpenCTags，我经过完善和给予中文说明后发布了新版；再次感谢Romeo JunCU的卓绝工作。
    
    2. 如果所使用的编辑器不在现有列表中，请查看器帮助文档进行设置。
    
    3. 如调用遇到问题，请仔细阅读本说明以及所使用编辑器的帮助文档，并及时与我沟通。
    
    4. 欢迎推广，欢迎传播至少一人，好东西要一起分享嘛！

    5. 如有问题和建议，请致信honestqiao@gmail.com，谢谢

    6. 在线讨论，请访问：http://bbs.chinaunix.net/thread-3619603-1-1.html
    
    7. 欢迎访问史上最强PHP中文手册－－PHP手册中文翻译补完计划 －－http://code.google.com/p/phpdoc-zh/

    8. 待补充
