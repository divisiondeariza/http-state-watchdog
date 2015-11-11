DEBUGMODE=false;
OUTPUT="/dev/stdout"
while getopts "do:" opt; do
	case $opt in
		d)	DEBUGMODE=true;;
		debug)	DEBUGMODE=true;;
		o)	OUTPUT=$OPTARG;;
	esac
done

DEFAULT_OPTIONS="--spider\
		--server-response\
		--random-wait
		-r
		-w 2"

URL=${!OPTIND}

if [ "$DEBUGMODE" = true -o "$URL" = "" ]; then
	wget $DEFAULT_OPTIONS "$URL" 2>&1;
else
	wget $DEFAULT_OPTIONS "$URL" 2>&1| awk -f data-extractor.awk>"$OUTPUT"
fi
