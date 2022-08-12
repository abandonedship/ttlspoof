#!/bin/bash

# ttl spoof by 0bfxgh0st*

if [[ $(id -u) != 0 ]]
then
	printf "%s\n" "Run this program as sudo/root"
	exit
fi

col_green="\e[32m"
col_end="\e[0m"

printf "${col_green}"
cat << 'EOF'

████████╗████████╗██╗         ███████╗██████╗  ██████╗  ██████╗ ███████╗
╚══██╔══╝╚══██╔══╝██║         ██╔════╝██╔══██╗██╔═══██╗██╔═══██╗██╔════╝
   ██║      ██║   ██║         ███████╗██████╔╝██║   ██║██║   ██║█████╗  
   ██║      ██║   ██║         ╚════██║██╔═══╝ ██║   ██║██║   ██║██╔══╝  
   ██║      ██║   ███████╗    ███████║██║     ╚██████╔╝╚██████╔╝██║     
   ╚═╝      ╚═╝   ╚══════╝    ╚══════╝╚═╝      ╚═════╝  ╚═════╝ ╚═╝     (PoC)

EOF
printf "${col_end}"

declare -A dict

dict[aix1]=60
dict[aix2]=30
dict[aix1]=255
dict[bsdi]=255
dict[compa]=64
dict[cisco]=254
dict[decpathworks]=30
dict[foundry]=64
dict[freebsd1]=64
dict[freebsd2]=255
dict[hpux1]=30
dict[hpux2]=64
dict[hpux3]=255
dict[hpux4]=64
dict[irix1]=60
dict[irix2]=255
dict[juniper]=64
dict[mpeixhp]=200
dict[linux1]=64
dict[linux2]=255
dict[macos1]=60
dict[macos2]=64
dict[netbsd]=255
dict[netgearfvg318]=64
dict[openbsd]=255
dict[openvms]=255
dict[os2]=64
dict[osf1A]=60
dict[osf1B]=30
dict[solaris1]=255
dict[solaris2]=64
dict[stratus1]=255
dict[stratus2]=30
dict[stratus3]=64
dict[stratus4]=60
dict[sunos1]=60
dict[sunos2]=255
dict[ultrix1]=60
dict[ultrix2]=30
dict[ultrix3]=255
dict[vmsmultine]=64
dict[vmstcpware1]=60
dict[vmstcpware2]=64
dict[vmswollongong1]=128
dict[vmswollongong2]=30
dict[vmsucx]=128
dict[windows1]=32
dict[windows2]=128

for os in "${!dict[@]}";
do
    printf "$os: ${dict[$os]}\n"
done | sort | column

printf "%s\n"

read -e -r -p "Enter: " os

if [ -v dict[$os] ];
then
	printf "\n${col_green}+${col_end} Spoofin *all* ipv4 ttl\n"
	sysctl -q -w net.ipv4.ip_default_ttl="${dict[$os]}"
	printf "${col_green}+${col_end} Spoofin eth0 ipv6 ttl\n"
	sysctl -q -w net.ipv6.conf.eth0.hop_limit="${dict[$os]}"
	printf "${col_green}+${col_end} Spoofin lo ipv6 ttl\n"
	sysctl -q -w net.ipv6.conf.lo.hop_limit="${dict[$os]}"
	printf "\nNow you look like $os OS\n"

elif [ ! -v dic[$os] ];
then
	printf "0 coincidences\n"

fi

