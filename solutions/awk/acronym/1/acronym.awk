BEGIN {
	FS = "[[:space:]-]+"
}

{
	for (i = 1; i <= NF; i++) {
		if (match($i, /[[:alpha:]]/))
			acronym = acronym toupper(substr($i, RSTART, 1))
	}
	print acronym
}
