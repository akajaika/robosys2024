#!/bin/bash

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### NOMAL INPUT ###
out=$( seq 5 | ./plus)
[ "$out" = 15 ] || ng "$LINENO"

### STRAGE INPUT ###
out=$(echo あ| ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

### weather TEST ###
out=$(echo "today" | ./weather)
[ "$?" = 0 ] || ng ${LINENO}

out=$(echo "tomorrow" | ./weather)
[ "$?" = 0 ] || ng ${LINENO}

out=$(echo " " | ./weather)
[ "$?" = 0 ] || ng ${LINENO}

out=$(echo "明日" | ./weather)
[ "$?" = 0 ] || ng ${LINENO}

out=$(echo "123" | ./weather)
[ "$?" = 0 ] || ng ${LINENO}

out=$(echo "today, tomorrow" | ./weather)
[ "$?" = 1 ] || ng "$LINENO"

out=$(echo today | ./weather)
[ "$?" = 1 ] || ng "$LINENO"

out=$(echo ^c | ./weather)
[ "$?" = 1 ] || ng "$LINENO"

out=$(echo "today"| ./weather)
[ "$?" = 1 ] || ng "$LINENO"

out=$(./weather)
[ "$?" = 1 ] || ng "$LINENO"

out=$(echo "@#$%^&*" | ./weather)
[ "$?" = 1 ] || ng "$LINENO"

out=$(echo -e "\x00\x01\x02" | ./weather)
[ "$?" = 1 ] || ng "$LINENO"

out=$(echo ""Today\n"" | ./weather)
[ "$?" = 1 ] || ng "$LINENO"

out=$(echo ""Today"" | ./weather)
[ "$?" = 1 ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit "$res"
