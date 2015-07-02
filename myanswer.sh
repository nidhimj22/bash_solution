awk 'BEGIN {time = 0;ans=""} ; {match(tolower($0),"started") ? req=$0 : split($5,a,"ms");if(a[1]!="Error" && time < a[1]){time = a[1]; ans = req;}} END {print ans}' tmp_more_than_50

