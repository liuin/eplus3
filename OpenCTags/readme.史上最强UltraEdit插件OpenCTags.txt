UltraEdit配置指南

使用：
    1. 将解压后目录中的OpenCTags目录（不包含版本号的），拷贝到 编辑器安装目录E:\Program Files下；也可以拷贝到其他目录，但是要对应修改以下的配置；

    2. 打开OpenCTags.ini，按照其中的说明，设置编辑器对应的安装路径，即“编辑器安装路径”所对应的列。

    3. 在编辑的 高级菜单=>工具栏配置 中，插入工具（Add Tool）并进行如下设置：
        a.【假设快捷键为Ctrl+Alt+Shift+1】
            菜单名称：OpenCTags索引                                              以下命令，请根据实际情况设置OpenCTags路径，注意不要漏了""符号
            命令行："E:\Program Files\OpenCTags\ctags.exe" -f "openctags.tags" --totals=yes -V -R *      (请根据实际路径设置，注意不要漏了""符号)
            工作目录：%p
            选项：程序类型：Dos 程序
            选项：保存：全部勾选
            输出：捕获输出，输出到列表框，不替换
            附加说明：
                2) 需要在项目根目录下打开某个文件，再调用该工具，然后才可使用b、c、d的工具

        b.【假设快捷键为Ctrl+2】
            菜单名称：OpenCTags定位                                              以下命令，请根据实际情况设置OpenCTags路径，注意不要漏了""符号
            命令："E:\Program Files\OpenCTags\OpenCTags.exe" -t "openctags.tags" -editor uedit -sel "%sel%" -file "%f" -line %line%
            工作目录：%p
            选项：程序类型：Windows 程序
            保存文件：无勾选
            输出：无勾选

        c.【假设快捷键为Ctrl+3】
            菜单名称：OpenCTags向前查找                                          以下命令，请根据实际情况设置OpenCTags路径，注意不要漏了""符号
            命令："E:\Program Files\OpenCTags\OpenCTags.exe" -t "openctags.tags" -editor uedit -sel "%sel%" -file "%f" -line %line% -action p
            工作目录：%p
            选项：程序类型：Windows 程序
            保存文件：无勾选
            输出：无勾选

        d.【假设快捷键为Ctrl+4】
            菜单名称：OpenCTags向后查找                                          以下命令，请根据实际情况设置OpenCTags路径，注意不要漏了""符号
            命令："E:\Program Files\OpenCTags\OpenCTags.exe" -t "openctags.tags" -editor uedit -sel "%sel%" -file "%f" -line %line% -action n
            工作目录：%p
            选项：程序类型：Windows 程序
            保存文件：无勾选
            输出：无勾选

        e.【假设快捷键为Ctrl+5】
            菜单名称：OpenCTags定位在当前文件                                  以下命令，请根据实际情况设置OpenCTags路径，注意不要漏了""符号
            命令："E:\Program Files\OpenCTags\OpenCTags.exe" -t "openctags.tags" -editor uedit -sel ":%sel%" -file "%f" -line %line%
            工作目录：%p
            选项：程序类型：Windows 程序
            保存文件：无勾选
            输出：无勾选

    4. 使用方法：
        请参考《readme.OpenCTags通用说明.txt》中的“使用方法”

    5. 快捷键设置：
        编辑器的快捷键设置，可以用：菜单＝》高级=>配置=>键盘映射＝>AdvancedUserTool1~25