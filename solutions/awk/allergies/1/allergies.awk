BEGIN {
	FS=",";
	score["eggs"] = 1;
	score["peanuts"] = 2;
	score["shellfish"] = 4;
	score["strawberries"] = 8;
	score["tomatoes"] = 16;
	score["chocolate"] = 32;
	score["pollen"] = 64;
	score["cats"] = 128;
} 
NF > 2 {
	print and(score[$3],$1) ? "true" : "false";
	next;
}
{
	for (key in score) {
		if (and(score[key],$1)) {seen[score[key]] = key}
	}
	list = "";
	for (key in seen) {
		list = list ? list "," seen[key] : seen[key]
	}
	delete seen;
	if (list) print list;
}
