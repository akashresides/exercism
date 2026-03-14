{
	r = $0
	if (r < 1) { print "Error: Only positive numbers are allowed"; exit 1 }
	step = 0
	while (r != 1) {
		r % 2 ? r = r*3 + 1 : r /= 2
		step++
	}
	print step
}
