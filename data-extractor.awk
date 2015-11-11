BEGIN 	{ RS = "\n--" ; FS = "\n"; print "'URL','CODE','STATUS'" }
match($0, /(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]+)(\/[^\n]*)?/){url =  substr($0, RSTART, RLENGTH)}
match($0, /HTTP\/[^\n]+/){split( substr($0, RSTART, RLENGTH), response_status, " ")}
url 	{print url "," response_status[2] "," response_status[3]}
END   	{}
