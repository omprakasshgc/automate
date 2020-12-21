echo "Enter IP"
read ip
echo "1.Ping Scan - disable port scan"
echo "2.List Scan - simply list targets to scan"
echo "3.TCP SYN"
echo "4.Port scan"
echo "5.Scan using a specific script"
echo "6.Detect OS and Services"
echo "7.Aggressive service detection"
echo "8.Scan using default safe scripts"
echo "Enter any option, for default scan press 9"
read a
if [ $a == 1 ];
then
sudo nmap -sn $ip
elif [ $a == 2 ];
then
sudo nmap -sL $ip
elif [ $a == 3 ];
then
sudo nmap -Pn -F -sS $ip
elif [ $a == 4 ];
then
sudo nmap -Pn  -p1-65535 $ip
elif [ $a == 5 ];
then
sudo nmap -sV -p 443 -script=ssl-heartbleed $ip
elif [ $a == 6 ];
then
sudo nmap -A $ip
elif [ $a == 7 ];
then
sudo nmap -sV –version-intensity 5 $ip
elif [ $a == 8 ];
then
sudo nmap -sV -sC  $ip
else
sudo nmap -sn -sV --script=vuln $ip
fi

