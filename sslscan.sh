# Reads hosts.txt, runs sslscan against all found hosts.
for ip in `cat hosts.txt`; do
echo "" >>  sslscan.txt
echo $ip\: >> sslscan.txt
sslscan $ip | tee -a sslscan.txt
done
