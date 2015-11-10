#url=http://www.actualidadpanamericana.com/
url=http://www.dane.gov.co/
#wget --spider ‐‐server-response -w 1 -r -p "$url"  
#wget --spider --server-response -r -l 1  "$url" 2>temporal-log
#awk -f 'data-extractor.awk' temporal-log
wget --spider --server-response -r -l 1  "$url" 2>&1| awk -f 'data-extractor.awk'

