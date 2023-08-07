#!/bin/sh

# Print the Welcome, Ubuntu Logo and System Information and Tux

# below is ganked from the 00-header file in /etc/update-motd.d

[ -r /etc/lsb-release ] && . /etc/lsb-release

if [ -z "$DISTRIB_DESCRIPTION" ] && [ -x /usr/bin/lsb_release ]; then
	# Fall back to using the very slow lsb_release utility
	DISTRIB_DESCRIPTION=$(lsb_release -s -d)
fi

# ANSI color codes

## Black        0;30     Dark Gray     1;30
## Red          0;31     Light Red     1;31
## Green        0;32     Light Green   1;32
## Brown/Orange 0;33     Yellow        1;33
## Blue         0;34     Light Blue    1;34
## Purple       0;35     Light Purple  1;35
## Cyan         0;36     Light Cyan    1;36
## Light Gray   0;37     White         1;37

color1='\033[1;31m'  		# light red
color2='\033[1;35m'  		# light purple
color3='\033[01;38;5;220m'  # Yellow
color4='\033[1;33m'  		# Brown/Orange
color5='\033[1;37m'  		# White
color6='\033[0;32m'  		# Green
color7='\033[1;32m'  		# Light Green
color8='\033[01;38;5;208m' 	# Bold Orange
color9='\033[1;34m'  		# light blue
nocolor='\033[0m'    		# no color



printf "Welcome to ${color6}%s ${nocolor}\n" "$(uname -n)"
#printf "${color8}%s ${nocolor}(%s %s %s)\n" "$DISTRIB_DESCRIPTION" "$(uname -o)" "$(uname -r)" "$(uname -m)"
#printf "\n" "\n" "$DISTRIB_DESCRIPTION" "$(uname -n)" "$(uname -r)" "$(uname -m)" "\n"

# my version of the Ubuntu logo by linuxlogo in classic colors

# printf "               ${color1}.-.${nocolor}\n"
# printf "         ${color8}.-'\`\`${color1}(   ) ${nocolor}\n"
# printf "      ${color3},\`\\ ${color8}\\    ${color1}\`-\`${color8}.${nocolor}\n"
# printf "     ${color3}/   \\ ${color8}'\`\`-.   \`   ${color8}`lsb_release -s -d`${nocolor}\n"
# printf "   ${color8}.-.  ${color3},       ${color8}\`___:  ${color3}`uname -srmo`${nocolor}\n"
# printf "  ${color8}(   ) ${color3}:       ${color1} ___   ${color1}`date`${nocolor}\n"
# printf "   ${color8}\`-\`  ${color3}\`      ${color1} ,   :${nocolor}\n"
# printf "     ${color3}\\   / ${color1},..-\`   ,${nocolor}\n"
# printf "      ${color3}\`./${color1} /    ${color3}.-.${color1}\`${nocolor}\n"
# printf "         ${color1}\`-..-${color3}(   )${nocolor}\n"
# printf "               ${color3}\`-\`${nocolor}\n"


#multi color version:

printf "               ${color5}.-.${nocolor}\n"
printf "         ${color6}.-'\`\`${color5}(   ) ${nocolor}\n"
printf "      ${color3},\`\\ ${color6}\\    ${color5}\`-\`${color6}.${nocolor}\n"
printf "     ${color3}/   \\ ${color6}'\`\`-.   \`   ${color6}`lsb_release -s -d`${nocolor}\n"
printf "   ${color5}.-.  ${color3},       ${color6}\`___:  ${color3}`uname -srmo`${nocolor}\n"
printf "  ${color5}(   ) ${color3}:       ${color1} ___   ${color5}`date`${nocolor}\n"
printf "   ${color5}\`-\`  ${color3}\`      ${color1} ,   :${nocolor}\n"
printf "     ${color3}\\   / ${color1},..-\`   ,${nocolor}\n"
printf "      ${color3}\`./${color1} /    ${color5}.-.${color1}\`${nocolor}\n"
printf "         ${color1}\`-..-${color5}(   )${nocolor}\n"
printf "               ${color5}\`-\`${nocolor}\n"


# my version of cowsay tux.cow logo

printf "        .--. \n"
printf "       |${color6}o${nocolor}_${color6}o${nocolor} | \n"
printf "       |${color3}\_/${nocolor} | \n"
printf "      //   \\ \\ \n"
printf "     (|     | )	 \n"
printf "    ${color3}/${nocolor}\'\_   _/\'${color3}\ \n"
printf "    ${color3}\\___)${nocolor}=${color3}(___/ \n"
printf "\n"
printf "\n"

# references:
# https://unix.stackexchange.com/questions/124407/what-color-codes-can-i-use-in-my-bash-ps1-prompt