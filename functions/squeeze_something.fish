# IP
alias squeeze_ip "awk '{str=\$0; if(match(str, /([0-9]{1,3}\.){3}[0-9]{1,3}/)>0) printf(\"%s\n\", substr(str, RSTART, RLENGTH))}'"
