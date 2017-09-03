# vim
vim configuration!

>> 20170903------------------------------------>>
A. cscope:
	1. cscope -Rbq 生成cscope文件
	2. : cs find g xxdk 查找出现
	3. : cs find c xxdk 查看调用
B. MiniBuffer:
	ctrl + h, j, k, l 上下左右移动切换窗口
	ctrl + 箭头 上下左右移动切换窗口
C. MainWindow:
	正常模式下 wm 开启关闭窗口

D. A.vim:
	头文件源文件相互切换
	1. :A  在新的buffer中切换到c/h 文件
	2. :AS 横向分割打开c/h 文件
	3. :AV 纵向分割打开c/h 文件
	4. :AT 新建标签页并打开c/h 文件

E. Grep:
	: Grep/Rgrep/Fgrep/Egrep
	nnoremap <slient> <C-f>: Grep<CR> 将Ctrl + F 映射为Grep命令

F. virsual Mark:
	正常模式 mm 高亮标签
	Ctrl + n 遍历自定义标签

G. Onmi-Completion 
	1. 必须有tags文件
	2. 是c语言
	3. Ctrl + x + o 触发补全，Ctrl + n 选择
	4. Ctrl + x + l 整行补全

H. superTab:
	将tab 映射为Ctrl + x + o

>> end------------------------------------>>
