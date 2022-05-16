#colors
r= ' \e[1; 31m ' 
g= ' \e[1; 32m ' 
y= ' \e[1; 33m ' 
b= ' \e[1; 34m ' 
p= ' \e[1; 35m ' 
lb= ' \e[1; 36m ' 




echo
echo  -e  $p " ███████╗██╗         ██╗██╗██╗" 
echo  -e  $r  " ██╔════╝██║         ██║██║██║" 
echo  -e  $y " █████╗      ╚██╗   ██╔╝██║██║"
echo  -e  $g " ██╔══╝         ╚████╔╝   ██║██║" 
echo  -e  $b " ███████╗      ╚██╔╝      ██║███████╗" 
echo  -e  $lb" ╚══════╝         ╚═╝         ╚═╝╚══════╝" 

echo  -e  $p " ██████╗      █████╗   ███╗     ██╗███╗      ██╗███████╗██████╗"
echo  -e  $r  " ██╔══██╗██╔══██╗████╗   ██║████╗   ██║██╔════╝██╔══██╗"
echo  -e  $y  " ██████╦╝███████║██╔██╗██║██╔██╗██║█████╗      ██████╔╝"
echo  - e  $g " ██╔══██╗██╔══██║██║╚████║██║╚████║██╔══╝      ██╔══██╗"
echo  -e  $b  " ██████╦╝██║      ██║██║   ╚███║██║   ╚███║███████╗██║      ██║"
echo  -e  $lb" ╚═════╝   ╚═╝      ╚═╝╚═╝      ╚══╝╚═╝      ╚══╝╚══════╝╚═╝      ╚═╝"
echo  -e  $r  "                                                      <Powered by Sandaru Adhithya>            " 
echo
echo    -e   $y " What is your banner name? : \c"
read varBname
echo
echo    -e    $y " What is your name? : \c"
read varname

echo "cowsay -f eyes " $varname " |  lolcat" > name.txt
echo  "figlet  "$varBname" |  lolcat"  > Bname.txt
echo "clear" > clear.txt
echo "PS1='\$' " > Temp.txt

#remove old files
rm -rf  /data/data/com.termux/files/usr/etc/zchrc
rm -rf  /data/data/com.termux/files/usr/etc/bash.bashrc

#inject files to zshrc
cat "clear.txt"  >>  /data/data/com.termux/files/usr/etc/zchrc
cat "name.txt"  >>  /data/data/com.termux/files/usr/etc/zchrc
cat "Bname.txt"  >>  /data/data/com.termux/files/usr/etc/zchrc
cat "Temp.txt"  >>  /data/data/com.termux/files/usr/etc/zchrc

#inject files to bash.bashrc
cat "clear.txt"  >>  /data/data/com.termux/files/usr/etc/bash.bashrc
cat "name.txt"  >>  /data/data/com.termux/files/usr/etc/bash.bashrc
cat "Bname.txt"  >>  /data/data/com.termux/files/usr/etc/bash.bashrc
cat "Temp.txt"  >>  /data/data/com.termux/files/usr/etc/bash.bashrc

rm -rf  name.txt  Bname.txt  clear.txt  Temp.txt
echo
figlet  Finish | lolcat
echo    - e   $lb "Please restart your Termux terminal"
