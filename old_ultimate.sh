#!/data/data/com.termux/files/usr/bin/bash
set +x
# Kode warna ANSI
merah='\033[0;31m'
hijau='\033[0;32m'
kuning='\033[0;33m'
biru='\033[0;34m'
ungu='\033[0;35m'
cyan='\033[0;36m'
putih='\033[0;37m'
reset='\033[0m'
# Jangan Ubah Apapun Agar Tidak Eror!
# Source Code By Rolandino!

# Instal Neofetch jika belum terinstal
if ! command -v neofetch &> /dev/null; then
  pkg install neofetch -y
fi

# Cuki Ngana
type_effect() {
    text="$1"
    for ((i=0; i<${#text}; i++)); do
        echo -n "${text:$i:1}"
        sleep 0.025
    done
    echo
}

# Save Israel
clear
type_effect "Ultimate 4.0? Ngak Cuma Program Tapi Ini Mindset !"



type_effect "Bukan Buat Pamer? Tapi Buat Lo Yang Main Di Balik Layar !"



type_effect "Biarpun Cuma Progam Tools Script? Asal Impact Dan Suspension Bekerja 100% !"



type_effect "Hacking Bukan Cuman Seni Tapi Cara Lo Merusak Batas !"
type_effect " "
sleep 0.025

# ==========================================
# 🔐 Script Login Lisensi Premium By Roland
# ==========================================

# Roland Ganteng
LICENSE_URL="https://raw.githubusercontent.com/hegdepavankumar/VMware-Workstation-Pro-17-Licence-Keys/refs/heads/main/VMware%20Workstation%20Pro%2017%20keys"
# MUKALUKAYAKKONTOL
BELI_LINK="https://wa.me/6281243587205?text=Bang%20Roland%20Mau%20Beli%20Lisensi%20Script%20Nya%20Bang"
# Roland Imut
loading_bar() {
  frames=(
    "[\e[1;91m■\e[0m□□□□□□□□□]"
    "[\e[1;92m■■\e[0m□□□□□□□□]"
    "[\e[1;93m■■■\e[0m□□□□□□□]"
    "[\e[1;94m■■■■\e[0m□□□□□□]"
    "[\e[1;95m■■■■■\e[0m□□□□□]"
    "[\e[1;96m■■■■■■\e[0m□□□□]"
    "[\e[1;97m■■■■■■■\e[0m□□□]"
    "[\e[1;92m■■■■■■■■\e[0m□□]"
    "[\e[1;93m■■■■■■■■■\e[0m□]"
    "[\e[1;94m■■■■■■■■■■\e[0m]"
  )

  for frame in "${frames[@]}"; do
    echo -ne "\r$frame"
    sleep 0.15
  done
  echo -e "\n"
}

# Roland Lucu
menu_lisensi() {
  clear
  echo -e ""
  echo -e "          LOGIN LISENSI SCRIPT         "
  echo -e ""
  echo ""
  echo -e "1. Masukkan Lisensi "
  echo -e "0. Keluar "
  echo ""
  read -p " Pilih ➤ " opsi

  case $opsi in
    1)
      verifikasi_lisensi
      ;;
    2)
      beli_lisensi
      ;;
    0)
      echo -e "\n Byee "
      exit 0
      ;;
    *)
      echo -e "\nPilih Yang Benar Kontol!"
      sleep 1
      menu_lisensi
      ;;
  esac
}

# Roland Epep
beli_lisensi() {
  echo -e "\nMenghubungi Onwer Script..."
  sleep 2
  xdg-open "$BELI_LINK" 2>/dev/null || termux-open-url "$BELI_LINK" 2>/dev/null
  sleep 2
  menu_lisensi
}

# Bang Roland
verifikasi_lisensi() {
  read -p "Masukkan License Key Anda : " user_key
  echo -e "\nMemeriksa Database Lisensi "
  loading_bar

  license_list=$(curl -s "$LICENSE_URL")

  if echo "$license_list" | grep -qx "$user_key"; then
    echo -e "\e[92m Selamat! Lisensi Anda Sudah Aktif "
    sleep 5
    echo -e "\n Menjalankan Program Utama \n"
    sleep 5
    # Jalankan script utamamu di sini (jika ada)
    # ./script-utama.sh
  else
    echo -e "\e[91m Lisensi Tidak Valid Atau Belum Terdaftar "
    echo -e " Silakan Beli Lisensi Pada Owner Developer \e[0m"
    sleep 5
    menu_lisensi
  fi
}

# Roland Manis
menu_lisensi

# Deteksi OS
if [[ "$OSTYPE" == "Ubuntu"* ]]; then
  pkg install -y neofetch > /dev/null 2>&1
else
  sudo apt install -y neofetch > /dev/null 2>&1
fi

# Roland Love Araa ;(
install_with_animation() {
  repo="$1"
  folder="$2"
  shift 2
  if [ ! -d "$folder" ]; then
    loading_animation() {
      frames=(
        "[\e[1;91m■\e[0m□□□□□□□□□]"
        "[\e[1;92m■■\e[0m□□□□□□□□]"
        "[\e[1;93m■■■\e[0m□□□□□□□]"
        "[\e[1;94m■■■■\e[0m□□□□□□]"
        "[\e[1;95m■■■■■\e[0m□□□□□]"
        "[\e[1;96m■■■■■■\e[0m□□□□]"
        "[\e[1;97m■■■■■■■\e[0m□□□]"
        "[\e[1;92m■■■■■■■■\e[0m□□]"
        "[\e[1;93m■■■■■■■■■\e[0m□]"
        "[\e[1;94m■■■■■■■■■■\e[0m]"
      )
      while :; do
        for frame in "${frames[@]}"; do
          echo -ne "\r$frame"
          sleep 0.1
        done
      done
    }

    loading_animation &
    anim_pid=$!

    git clone "$repo" "$folder" > /dev/null 2>&1
    clone_status=$?

    kill "$anim_pid" >/dev/null 2>&1
    wait "$anim_pid" 2>/dev/null

    if [ $clone_status -eq 0 ]; then
      echo -e "\r[\e[1;92m✓\e[0m] $folder [ BERHASIL DI JALANKAN ]"
      sleep 5
    else
      echo -e "\r[\e[1;91m✗\e[0m] [ SEDANG DALAM PERBAIKAN! ] $folder."
      sleep 5
      return 1
    fi
  fi
  cd "$folder" || return
  "$@"
  cd ..
  
  if ! command -v "$1" &>/dev/null; then
  echo -e "\n[✗] Perintah '$1' Tidak Ditemukan Di Sistem!"
  sleep 2
  cd ..
  return
fi

}
#Manusia Tersakiti ;(
clear
neofetch --ascii_distro "Ubuntu"
echo "

 - Status        :      Free
 - Total Fiture  :      80
 - Version       :      Ultimate 4.0
 - Developer     :      Rolandino
 - Github        :      github.com/Rolandino23
 - WhatsApp      :      +6281243587205
 - Telegram      :      t.me/rolandino28
 - Facebook      :      Roland Cod
 - Support Team  :      Crackers Community

 [01] ADMIND FINDER                [21] FOLOWERS FACEBOOK  
 [02] CEK NIK EKTP                 [22] INFORMATION FACEBOOK UID
 [03] CRACK WIFI                   [23] CEK OPSI FACEBOOK  
 [04] DDOS WIFI (root)             [24] TERMUX STYLE         
 [05] WPBRUTE/BRUTEWP              [25] AUTO DEFACER WEB     
 [06] SERVEO DDOSNET               [26] IP TRACKER       
 [07] BRUTE FACEBOOK TARGETV1      [27] LEAKER DB      
 [08] TEMBAK/KOUTA TRI GRATIS      [28] GEO PHONE       
 [09] DEMO ACCESS OSIND            [29] TELEGRAM SCRAPING 
 [10] CCTV HACKERS                 [30] GPT BOT AI CYBERV1  
 [11] PEMINDAI XSS TERCANGGIH      [31] TEMBAK/KUOTA AXIS GRATIS
 [12] MY FRIEND MXT QUEST          [32] WIFI CLONE HACK     
 [13] HACK BLUETOOTH AUDIO         [33] TOR SEACHER
 [14] PRIVATE DOXING TRACKERV1     [34] SOSIAL OSIND 
 [15] SPAM BOT TELEGRAM            [35] WIFI TROLL
 [16] PRIVATE DOXING TRACKERV2     [36] SUBDOMAINS HACK
 [17] WEB SCANING PENETRATIONV1    [37] SOSIAL FAKE LOGV1
 [18] WEB SCANING PENETRATIONV2    [38] SPOOFING DNS
 [19] FACEBOOK CRACKV1             [39] WEBKIT TRACKERS
 [20] FACEBOOK CRACKV2             [40] HEAD MAIL

 [41] BRUTE FACEBOOK TARGETV2      [61] OLD SCRIPT RLNDYNO 0.0
 [42] PHPSPLOIT BACKDOR REDIRECT   [62] IMEI LOCATION
 [43] EXPLOITASI XSRF TOKEN        [63] INSTAGRAM REPORT
 [44] MAWARE & BACKDOOR            [64] XPLOITASI CVE
 [45] BRUTE ADMIND LOGIN           [65] PEMINDAI LFI & RFI
 [46] CREATE IMAIL FRESH           [66] PRIVATE DOXING TRACKERV5
 [47] ANDROID EXPLOIT              [67] HACK CAMERA
 [48] GPT BOT AI CYBERV2           [68] HACK DRONE PENGINTAI (esiylap)
 [49] DDOS SEDERHANA               [69] XPLOITASI/CONTROL PERANGKAT JAUH
 [50] ANTARMUKA MY CODE            [70] INSTAGRAM INFORMATION
 [51] WEB SCANING PENETRATIONV3    [71] BOTNET SERVER 100% PLANT ONLINE
 [52] OLD SCRIPT RLNDYNO 1.0       [72] WEB SCANING PENETRATIONV4
 [53] PRIVATE DOXING TRACKERV3     [73] SOSIAL FAKE LOGV2
 [54] WHATSAPP REPORT              [74] WEB SCANING PENETRATIONV5
 [55] PRIVATE DOXING TRACKERV4     [75] XMLRPC ATACK
 [56] OLD SCRIPT RLNDYNO 2.0       [76] WEB SCANING PENETRIONV6
 [57] FACEBOOK REPORT              [77] DRACOS LINUX TESTING
 [58] CSRF & XSRF                  [78] INSTAGRAM OSIND INFORMATION
 [59] EXUCUTOR DDOSV1              [79] LAPOR BUG
 [60] EXUCUTOR DDOSV2              [80] KELUAR
 "
read -p "╰────𝕽𝖔𝖑𝖆𝖓𝖉𝖎𝖓𝖔 ➣ " pil

case $pil in
1)
install_with_animation "https://github.com/MrSanZz/AdminFinder" "AdminFinder" python3 find.py
;;

2)
install_with_animation "https://github.com/caturmahdialfurqon/nik-validator-ektp" "nik-validator-ektp" php NIK.php
;;

3)
install_with_animation "https://github.com/XFRANZZ/wifi-crack.git" "wifi-crack" python crack.py
;;

4)
install_with_animation "https://github.com/k1lgor/wifi-dos.git" "wifi-dos" bash wifi-dos.sh
;; 

5)
install_with_animation "https://github.com/MrSanZz/CRXKER.git" "CRXKER" python3 crxck.py
;;

6)
install_with_animation "https://github.com/CirqueiraDev/SentinelaNet" "SentinelaNet" python3 cnc.py 31337
;;

7)
install_with_animation "https://github.com/XFRANZZ/hackfb.git" "hackfb" python2 brute.py
;;

8)
install_with_animation "https://github.com/AmmarrBN/Tembak-Tri.git" "Tembak-Tri" php tri.php
;;

9)
install_with_animation "https://github.com/AmmarrBN/LeakOsint.git" "LeakOsint" bash osint.sh
;;

10)
install_with_animation "https://github.com/lahadiyani/Cam-Hackers.git" "Cam-Hackers" python3 cam-hackers.py
;;

11)
install_with_animation "https://github.com/s0md3v/XSStrike.git" "XSStrike" python xsstrike.py
;;

12)
install_with_animation "https://github.com/KhanhNguyen9872/TOOLSV5_src.git" "TOOLSV5_src" bash install.sh
;;

13)
install_with_animation "https://github.com/StealthIQ/Bluestrike.git" "Bluestrike" python main.py
;;

14) 
install_with_animation "https://github.com/IccTeam/OwlTrack.git" "OwlTrack" python3 owltrack.py
;;

15)
install_with_animation "https://github.com/THEOYS123/spam_tele.git" "spam_tele" python spam.py
;;

16)
install_with_animation "https://github.com/THEOYS123/R-Dox.git" "R-Dox" python3 dox.py
;;

17)
install_with_animation "https://github.com/THEOYS123/Tools_RenScaning.git" "Tools_RenScaning" python Scaning.py
;;

18)
install_with_animation "https://github.com/THEOYS123/ParamHunterv2.git" "ParamHunterv2"python param.py
;;

19)
install_with_animation "https://github.com/BOT-033/Sensei.git" "Sensei" python2 main.py
;;

20)
install_with_animation "https://github.com/BOT-033/Fb-Mafia.git" "Fb-Mafia" python2 Dark-Cloning.py
;;

21)
install_with_animation "https://github.com/RIZKY4/follow.git" "follow" php follow.php
;;

22)
install_with_animation "https://github.com/RIZKY4/find-id.git" "find-id" python2 find-id.py
;;

23)
install_with_animation "https://github.com/awokawokwokk/CekOpsi.git" "CekOpsi" python run.py
;;

24)
install_with_animation "https://github.com/S4E35AR/tstyle.git" "tstyle" tstyle
;;

25)
install_with_animation "https://github.com/LuciverXploit/DEFACER-WEB.git" "DEFACER-WEB" python luci.py
;;

26)
install_with_animation "https://github.com/rajkumardusad/IP-Tracer.git" "IP-Tracer" sh install
;;

27)
install_with_animation "https://github.com/supdevinci/derrick.git" "derrick" python derrick.py
;;

28)
install_with_animation "https://github.com/evilfeonix/Geo-Phone.git" "Geo-Phone" bash installer.sh
;;

29)
install_with_animation "https://github.com/saifalisew1508/Telegram-Members-Adder.git" "Telegram-Members-Adder" python manager.py
;;

30)
install_with_animation "https://github.com/BlackTechX011/Hacx-GPT.git" "Hacx-GPT" python3 main.py
;;

31)
install_with_animation "https://github.com/hidessh99/tembakaxis.git" "tembakaxis" php apiaxis.php
;;

32)
install_with_animation "https://github.com/ALHARAMM/DarkSkull.git" "DarkSkull" python3 DarkSkull.py
;;

33)
install_with_animation "https://github.com/ALHARAMM/Anonymous.git" "Anonymous" python3 Anonymous.py
;;

34)
install_with_animation "https://github.com/XDeadHackerX/NetSoc_OSINT.git" "NetSoc_OSINT" bash netsoc_osint.sh
;;

35)
install_with_animation "https://github.com/XDeadHackerX/Wifi_Troll.git" "Wifi_Troll" bash wifi_troll.sh
;;

36)
install_with_animation "https://github.com/ALHARAMM/HackSubs.git" "HackSubs" python3 HackSubs.py -h
;;

37)
install_with_animation "https://github.com/BlackTechX011/LogX" "LogX" python3 st.py
;;

38)
install_with_animation "https://github.com/Trackbool/DerpNSpoof.git" "DerpNSpoof" python3 DerpNSpoof.py
;;

39)
install_with_animation "https://github.com/jxroot/adbwebkit.git" "adbwebkit" php -S 127.0.0.1:8000
;;

40)
install_with_animation "https://github.com/umair9747/headmail.git" "headmail" node index.js
;;

41)
install_with_animation "https://github.com/ADIRTTA/FB_BRUTE.git" "FB_BRUTE" python3 BRUTE.py
;;

42)
install_with_animation "https://github.com/nil0x42/phpsploit.git" "phpsploit" ./phpsploit --interactive --eval help
;;

43)
install_with_animation "https://github.com/0xInfection/XSRFProbe.git" "XSRFProbe" xsrfprobe --help
;;

44)
install_with_animation "https://github.com/screetsec/TheFatRat.git" "TheFatRat" ./setup.sh
;;

45)
install_with_animation "https://github.com/s0md3v/Blazy.git" "Blazy" python3 main.py
;;

46)
install_with_animation "https://github.com/s0md3v/ote.git" "ote" python3 setup.py --help-commands
;;

47)
install_with_animation "https://github.com/sundaysec/Andspoilt.git" "Andspoilt" python2 andspoilt.py
;;

48)
install_with_animation "https://github.com/sundaysec/hackerbot.gi" "hackerbot" python2 hackerbot.py
;;

49)
install_with_animation "https://github.com/cyweb/hammer.git" "hammer" python3 hammer.py
;;

50)
install_with_animation "https://github.com/b3-v3r/Hunner.git" "Hunner" python3 hunner.py
;;

51)
install_with_animation "https://github.com/b3-v3r/ASKT-AutoScriptKiddiesTool-.git" "ASKT-AutoScriptKiddiesTool-" python3 askt.py
;;

52)
install_with_animation "https://github.com/Gameye98/Lazymux.git" "Lazymux" python3 lazymux.py
;;

53)
install_with_animation "https://github.com/Teammatrixx/GhostRecon.git" "GhostRecon" bash Grecon
;;

54)
install_with_animation "https://github.com/GALIRUS404/REPOT-WA.git" "REPOT-WA" bash gas.sh
;;

55)
install_with_animation "https://github.com/GALIRUS404/Osint.git" "Osint" bash osint.sh
;;

56)
install_with_animation "https://github.com/BasHB00M01001/LulzSec-kroketool.git" "LulzSec-kroketool" "LulzSec-kroketool"
;;

57)
install_with_animation "https://github.com/BasHB00M01001/kr0k3tT41m4R12.git" "kr0k3tT41m4R12" python kr0k3tTⒶ1mⒶR12.py
;;

58)
install_with_animation "https://github.com/BasHB00M01001/xsrfpr0b3-.git" "xsrfpr0b3" python xsrfkr0k3.py
;;

59)
install_with_animation "https://github.com/BasHB00M01001/LulZSeCDdos.git" "LulZSeCDdos" python2 icarusbot.py
;;

60)
install_with_animation "https://github.com/BasHB00M01001/LulZSeCDdos.git" "LulZSeCDdos" c xerxes.c
;;

61)
install_with_animation "https://github.com/Phamchie/GhostManSec.git" "GhostManSec" python gms.py
;;

62)
  install_with_animation "https://github.com/MrShoza/IP-ImeiTracker.git" "IP-ImeiTracker" python imei.py
  ;;

63)
install_with_animation "https://github.com/Mrmachinepro/instagram_report_tool.git" "instagram_report_tool" python InstagramReportBot2.py
;;

64)
install_with_animation "https://github.com/AnonKryptiQuz/NextSploit.git" "NextSploit" python NextSploit.py
;;

65)
install_with_animation "https://github.com/Orphan510/SCAN-LFI-RFI.git" "SCAN-LFI-RFI" python2 SCAN-LFI-RFI.py
;;

66)
install_with_animation "https://github.com/readloud/Hawker.git" "Hawker" python main.py
;;

67)
install_with_animation "https://github.com/readloud/Cam-Hackers.git" "Cam-Hackers" python3 cam-hackers.py
;;

68)
install_with_animation "https://github.com/readloud/Drone-Hacking-Tool.git" "Drone-Hacking-Tool" python2 Drone-Hacking-Tool
;;

69)
install_with_animation "https://github.com/readloud/phonesploitpro.git" "phonesploitpro" python3 phonesploitpro.py
;;

70)
install_with_animation "https://github.com/readloud/toutatis.git" "toutatis" python3 setup.py
;;

71)
install_with_animation "https://github.com/readloud/PyRai.git" "PyRai" python relay.py
;;

72)
install_with_animation "https://github.com/readloud/ghost_eye.git" "ghost_eye" python ghost_eye.py
;;

73)
install_with_animation "https://github.com/readloud/blackeye-python.git" "blackeye-python" python blackeye.sh
;;

74)
install_with_animation "https://github.com/uzairhaider502/lostools.git" "lostools" python loxs.py
;;

75)
install_with_animation "https://github.com/HackingTeamOficial/WpxPloit.git" "WpxPloit" python exploit.py
;;

76)
install_with_animation "https://github.com/screetsec/LALIN.git" "LALIN" bash Lalin.sh
;;

77)
install_with_animation "https://github.com/screetsec/super-dracos.git" "super-dracos" bash dracos-tools.sh
;;

78)
install_with_animation "https://github.com/HunxByts/INSTA-OSINT.git" "INSTA-OSINT" python3 instaOSINT.py
;;

79)
  install_with_animation "xdg-open https://wa.me/+6281243587205" || termux-open-url "https://wa.me/+6281243587205"
;;

80)
  echo -e "\n Keluar Dari Program "
  sleep 1
  exit
  ;;
esac
