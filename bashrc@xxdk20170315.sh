########################################################################
# File Name: bashrc@xxdk.sh
# Version:   v0.1.4
# Author:    XXDK
# Email:     v.manstein@qq.com
# Created Time: Thu 04 Jun 2015 05:59:17 PM CST
# Usage:
#	Put this file in /home/xxdk/~
#   vim .bashrc 
#   if [ -f ~/bashrc\@xxdk.sh ];
#		then source ~/bashrc\@xxdk.sh
#   fi
#########################################################################
#!/bin/bash
<<NOTE
XXDK self .bashrc
NOTE

#############################################
#xxdk's alias
##################--<alias-start>--##########
alias agi='apt-get install'
alias agm='apt-get remove'
alias agp='apt-get remove --purge'
alias apc='apt-get autoclean'
alias apu='apt-get -u dist-update'
alias mnc='minicom -s'
alias pwf='poweroff'
alias bcat='lolcat'
alias lcat='cat -n'
alias v='vim'
alias g+-='javac'
alias jv='java'

alias bye='./byebye.sh'
alias xxdk='sudo -s'
alias cp='cp -frd'
alias b='cd ..'
alias b2='cd ../..'
alias b3='cd ../../../'
alias b4='cd ../../../../'
alias ps='ps axj'

alias du='du -sh'
alias dpkg='sudo dpkg -i *'

alias tftp-restart='sudo /etc/init.d/tftpd-hpa restart'
alias nfs-restart='sudo /etc/init.d/nfs-kernel-server restart'


# CC -E xxdk.c -o xxdk.i   # preprocessing
# CC -S xxdk.i -o xxdk.s   # compiling
# AS xxdk.s -o xxdk.o      # assembly
# LD xxdk.o -----------    # linking

alias readelf='readelf -a'
alias objdump='objdump -x'


alias CC='arm-linux-gcc'
alias AS='arm-linux-as'			# assembly -> elf
alias CPP='arm-linux-gcc -E'		# preprogressing
alias AR='arm-linux-ar'			# reloctable object .o file to archive .a
alias NM='arm-linux-nm'         	# arm-linux-nm -an xxdk > xxdk.sym symbol file 
alias LDR='arm-linux-ldr'
alias STRIP='arm-linux-strip'
alias RANLIB='arm-linux-RANLIB' 	# bulid index for library file equal to -> arm-linux-ar -S
alias OBJCOPY='arm-linux-objcopy'
alias OBJDUMP='arm-linux-objdump -x -d -s'
alias LD='arm-linux-ld'
alias GDB='arm-linux-gdb'


alias QMAKE='qmake -project;qmake;make'
alias CDA='cd /home/xxdk/pixhawk/ardupilot/'
alias CDQ='cd /mnt/hgfs/FileShare/Qt/'
alias CDR='cd /opt/EmbedSky/TQIMX6/TQ_COREC/rootfs/'
alias CDU='cd /opt/EmbedSky/TQIMX6/TQ_COREC/uboot-2015.04'
alias CDK='cd /opt/EmbedSky/TQIMX6/TQ_COREC/linux-4.1.15'
alias CDFS='cd /mnt/hgfs/FileShare/'

alias gim='gedit'
alias gi='gedit'


alias mc='make clean'
alias c='clear'
alias md='make distclean'
alias mb='make backup'

#alias find='find -name'
#alias grep='grep -n -E -r'
alias nl='nl -b a'	            #add line number for text: nl xxdk.c > xxdkline.c
alias fn='ls -lR|grep "^-"|wc -l""' # Get total file numbers in xxdk directory

alias girl='man'

##################--<alias-end>--##################
# find  "*" -print | xargs perl -pi -e 's/MINI2440/XXDK2440/g' #find all and replace all MINI2440 to XXDK2440

#############################################
# xxdk's terminal configure
#############################################

#别名编队 by 910JQK

#如果不以交互方式运行，不做任何事情
#[[ $- != *i* ]] && return

#喇叭不发声
set bell-style visible

#【通用】终端标题
#日期
PROMPT_COMMAND='echo -ne "\033]0;$(date)\007"'
#默认
#PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'

#【通用】PS1
#用户+时间+当前目录-短
PS1='\[\e[34m\]【\u☆ \t】\[\e[36m\]\W >\[\e[0m\]'

#当前目录+换行+时间
#PS1='\[\e[33m\]\w\n\[\e[36m\]\$ \t >\[\e[0m\]'

#当前目录+换行+用户+时间
#PS1='\[\e[33m\]\w\n\[\e[32m\]【\u￥\t】\[\e[36m\] >\[\e[0m\]'

#Gentoo默认 用户+主机名+当前目录
#if [[ ${EUID} == 0 ]] ; then
# PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
#else
# PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
#fi

#用户+主机名+当前目录+换行
#PS1="\n\e[1;37m[\e[m\e[1;32m\u\e[m\e[1;33m☆ \e[m\e[1;35m\h\e[m \e[4m\`pwd\`\e[m\e[1;37m]\e[m\e[1;36m\n\e[m\\$ "

#用户+主机名+当前目录-短
#PS1='\[\e[36m\]\u%\[\e[35m\]\h \[\e[34m\]\W\\$\[\e[0m\]'

#用户+主机名
#PS1="\[\e[1;33m\][\[\e[1;35m\]\u\[\e[1;36m\]@\[\e[1;32m\]\h \[\e[1;38m\]\W\[\e[1;33m\]N${ip_name}]\\$\[\e[0m\]"

#bash的提示符为 PS1 变量， 默认是 环境变量，
#下面包含bash为用户在PS1中所使用的符号的一个完整列表：
#
#\a ASCII 响铃字符（也可以键入 \007）
#\d "Wed Sep 06" 格式的日期
#\e ASCII 转义字符（也可以键入 \033）
#\h 主机名的第一部分（如 "mybox"）
#\H 主机的全称（如 ""）
#\j 在此 shell 中通过按 ^Z 挂起的进程数
#\l 此 shell 的终端设备名（如 "ttyp4"）
#\n 换行符
#\r 回车符
#\s shell 的名称（如 "bash"）
#\t 24 小时制时间（如 "23:01:01"）
#\T 12 小时制时间（如 "11:01:01"）
#\@ 带有 am/pm 的 12 小时制时间
#\u 用户名
#\v bash 的版本（如 ）
#\V Bash 版本（包括补丁级别） ?/td>;
#\w 当前工作目录（如 "/home/drobbins"）
#\W 当前工作目录的“基名 (basename)”（如 "drobbins"）
#\! 当前命令在历史缓冲区中的位置
#\# 命令编号（只要您键入内容，它就会在每次提示时累加）
#\$ 如果您不是超级用户 (root)，则插入一个
#"$"；如果您是超级用户，则显示一个 "#"
#\xxx 插入一个用三位数 xxx（用零代替未使用的数字，如 "\007"）表示的 ASCII
#字符
#\\ 反斜杠
#\[ 这个序列应该出现在不移动光标的字符序列（如颜色转义序列）之前。它使
#bash 能够正确计算自动换行。
#\] 这个序列应该出现在非打印字符序列之后。
#
#颜色是通过在 PS1 中添加专用序列来选择的 -- 基本上是夹在
#"\e["（转义开方括号）和 "m"
#之间数字值。如果指定一个以上的数字代码，则用分号将它们分开。
#下面是一个颜色代码示例：
#"\e[0m"
#
#如果将数字代码指定为零，则它就会通知终端将前景、背景和加粗设置重置为它们的默认值。您可能会在提示行结束时使用这个代码，以使您键入的文字成为非彩色的。现在，让我们看一下这些颜色代码。请注意下面的抓屏结果：
#
#
#颜色表
# 前景 背景 颜色
# -------------jjj--------------------------
# 30 40 黑色
# 31 41 红色

#############################################
# xxdk's PATH
#############################################
# IMX6'S PATH
# arm-linux-gcc4.6.2/5.3.1
#############################################
#export PATH=$PATH:/arm/arm-linux-gcc4.6.2/bin
#export PATH=$PATH:/arm/arm-linux-gcc5.3.1/bin

#############################################
# SUMSUNG-4412'S PATH
# arm-linux-gcc4.6.4
#############################################
export PATH=$PATH:/arm/arm-linux-gcc4.6.4/bin

#############################################
# TI-BBB'S PATH
# arm-linux-gcc4.8.2
#############################################
#export PATH=$PATH:/arm/gcc-linaro-arm-linux-gnueabihf-4.8-2013.10_linux/bin

#############################################
# pixhawk'S PATH old
#############################################
#export PATH=/arm/gcc-arm-none-eabi-4_7-2014q2/bin:$PATH
#export PATH=/opt/cmake-3.4.3/bin:$PATH

#############################################
# pixhawk'S PATH new
#############################################
#export PATH=$PATH:/arm/gcc-arm-none-eabi-4_9-2015q3/bin
#export PATH=$PATH:/home/xxdk/pixhawk/ardupilot/Tools/autotest
#export PATH=/opt/cmake-3.4.3/bin:$PATH

#############################################
# QT5.7.0'S PATH
#############################################
#export PATH=$PATH:/home/xxdk/Qt5.7.0/5.7/gcc_64/bin

#############################################
# JLink-Linux tools
#############################################
export PATH=$PATH:/home/xxdk/source@xxdk/JLink_Linux_V612_x86_64

#############################################
# JDK tools
#############################################
export PATH=$PATH:/home/xxdk/source@xxdk/jdk1.8.0_121/bin

export USE_CCACHE=1
export CCACHE_DIR=/home/xxdk/.ccache_temp
export PATH=$PATH:/usr/lib/ccache
export PATH=$PATH:.
export PATH=.:$PATH
export PATH=/usr/games:$PATH
echo "^_^"










