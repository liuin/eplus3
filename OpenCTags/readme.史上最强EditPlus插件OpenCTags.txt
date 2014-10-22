EditPlus配置指南

使用：
    1. 将解压后目录中的OpenCTags目录（不包含版本号的），拷贝到 编辑器安装目录E:\Program Files下；也可以拷贝到其他目录，但是要对应修改以下的配置；

    2. 打开OpenCTags.ini，按照其中的说明，设置编辑器对应的安装路径，即“编辑器安装路径”所对应的列。

    3. 在编辑器的 工具（Tools）菜单=>配置用户工具（Config User Tools）中，添加工具（Add Tool）并进行如下设置：
        a.【假设快捷键为Ctrl+Alt+Shift+1】
            菜单名称：OpenCTags索引                                          以下命令，请根据实际情况设置OpenCTags路径，注意不要漏了""符号
            命令："E:\Program Files\OpenCTags\ctags.exe"
            参数： -f "openctags.tags" --totals=yes -V -R *
            初始目录：$(FileDir)
            动作：捕捉输出
            输出模板：默认
            保存文件：所有打开文件
            附加说明：
                2) 需要在项目根目录下打开某个文件，再调用该工具，然后才可使用b、c、d的工具

        b.【假设快捷键为Ctrl+2】
            菜单名称：OpenCTags定位                                          以下命令，请根据实际情况设置OpenCTags路径，注意不要漏了""符号
            命令："E:\Program Files\OpenCTags\OpenCTags.exe"
            参数： -t "openctags.tags" -word "$(CurWord)" -editor "EditPlus3" -sel "$(CurSel)" -file "$(FilePath)" -line $(CurLine)
            初始目录：$(FileDir) 
            动作：退出时关闭窗口
            输出模板：默认
            保存文件：无

        c.【假设快捷键为Ctrl+3】
            菜单名称：OpenCTags向前查找                                      以下命令，请根据实际情况设置OpenCTags路径，注意不要漏了""符号
            命令："E:\Program Files\OpenCTags\OpenCTags.exe"
            参数：-t "openctags.tags" -word "$(CurWord)" -editor "EditPlus3" -sel "$(CurSel)" -file "$(FilePath)" -line $(CurLine) -action p
            初始目录：$(FileDir) 
            动作：退出时关闭窗口
            输出模板：默认
            保存文件：无

        d.【假设快捷键为Ctrl+4】
            菜单名称：OpenCTags向后查找                                      以下命令，请根据实际情况设置OpenCTags路径，注意不要漏了""符号
            命令："E:\Program Files\OpenCTags\OpenCTags.exe"
            参数：-t "openctags.tags" -word "$(CurWord)" -editor "EditPlus3" -sel "$(CurSel)" -file "$(FilePath)" -line $(CurLine) -action n
            初始目录：$(FileDir) 
            动作：退出时关闭窗口
            输出模板：默认
            保存文件：无

        e.【假设快捷键为Ctrl+5】
            菜单名称：OpenCTags定位在当前文件                              以下命令，请根据实际情况设置OpenCTags路径，注意不要漏了""符号
            命令："E:\Program Files\OpenCTags\OpenCTags.exe" 
            参数： -t "openctags.tags" -word ":$(CurWord)" -editor "EditPlus3" -sel ":$(CurSel)" -file "$(FilePath)" -line $(CurLine)
            初始目录：$(FileDir) 
            动作：退出时关闭窗口
            输出模板：默认
            保存文件：无

    4. 使用方法：
        请参考《readme.OpenCTags通用说明.txt》中的“使用方法”

    5. 快捷键设置：
        当前快捷键列表，可以看：菜单＝》帮助＝》键盘映射
        设置新的快捷键，可以用：菜单＝》工具＝》参数设置＝》快捷键＝》类型：工具＝》用户工具1~20进行设置