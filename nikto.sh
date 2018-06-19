# Reads hosts.txt, runs nikto against all found hosts.
for ip in `cat hosts.txt`; do
echo "" >>  nikto.txt
echo $ip >> nikto.txt
nikto -h $ip | tee -a nikto.txt
done
