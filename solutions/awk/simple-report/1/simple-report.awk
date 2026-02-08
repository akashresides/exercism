BEGIN {
	FS=","
}

{
	read1 = $3*10 + $4;
	read2 = $5*10 + $6;
	print "#" $1 ", " $2 " = " (read1 + read2) / 2
}
