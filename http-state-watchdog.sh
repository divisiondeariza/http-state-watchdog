DEBUGMODE=false;
OUTPUT="/dev/stdout"
while getopts "do:" opt; do
	case $opt in
		d)	DEBUGMODE=true;;
		debug)	DEBUGMODE=true;;
		o)	OUTPUT=$OPTARG;;
	esac
done

URL=${!OPTIND}
if [ "$DEBUGMODE" = true -o "$URL" = "" ]; then
	wget --spider --server-response -r   "$URL" 2>&1;
else
	wget --spider --server-response -r  "$URL" 2>&1| awk -f data-extractor.awk>"$OUTPUT"
fi
