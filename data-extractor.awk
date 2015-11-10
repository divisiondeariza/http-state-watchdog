BEGIN { RS = "\n--" ; FS = "\n" }
       {print $1 $4}
END   { print "STOP"  }
