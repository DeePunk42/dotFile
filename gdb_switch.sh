#!/bin/bash
function Mode_change {
    name=$1
    gdbinitfile=${HOME}/.gdbinit    #这个路径按照你的实际情况修改
    
    gef="${HOME}/dotConfig/.gefinit"   #这个路径按照你的实际情况修改
    pwndbg="${HOME}/dotConfig/.pwndbginit"   #这个路径按照你的实际情况修改
    if [ $name -eq "1" ];then
        ln -fs ${gef} ${gdbinitfile}
        echo -e "Enjoy the gef!\n"
    else
        ln -fs ${pwndbg} ${gdbinitfile}
        echo -e "Enjoy the pwndbg!\n"
    fi
    
}
 
echo -e "Choose one mode of GDB?\n1.gef    2.pwndbg"
 
read -p "Input your choice:" num
 
if [ $num -eq "1" ];then
    Mode_change $num
elif [ $num -eq "2" ];then
    Mode_change $num
else
    echo -e "Error!\nPleasse input right number!"
fi
 
# gdb $1 $2 $3 $4 $5 $6 $7 $8 $9
