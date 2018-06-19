# Reads hosts.txt, runs nikto against all found hosts.
for ip in `cat hosts.txt`; do
echo "" >>  gobuster.txt
echo $ip >> gobuster.txt
gobuster -w /usr/share/wordlists/directory-list-2.3-medium.txt -u $ip | tee -a gobuster.txt
done
