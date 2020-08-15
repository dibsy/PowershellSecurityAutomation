#Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser 

$types = @('A','AAAA','AFSDB','ALIAS','ATMA','CAA','CERT','CNAME','DHCID','DNAME','DNSKEY','DS','HINFO','ISDN','LOC','MB','MG','MINFO','MR','MX','NAPTR','NS','NSAP','NSEC','NSEC3','NSEC3PARAM','PTR','RP','RRSIG','RT','SOA','SRV','TLSA','TXT','X25')
foreach ($type in $types){
$cmd = "nslookup -type=$type google.com"

Write-Output $cmd
Invoke-Expression $cmd
}
