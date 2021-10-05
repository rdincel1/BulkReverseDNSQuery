#!/bin/bash
filename='bulk.txt' # name of file with IPs to handle

for ip in `cat $filename`
do
echo 'Handling reverse DNS for $ip-range'
prips $ip-range | xargs -I{} dig @1.1.1.1 +noall +answer -x {}
done
