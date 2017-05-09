Red [authors: ["Gregg Irwin" "Nenad Rakocevic"]

view [
	title "TempConv"
	tc: field text "Celsius ="   
	tf: field text "Farenheight"
	do [
		react/later [if number? c: tc/data [tf/data: round/to (c * (9.0 / 5.0) + 32.0) .01]]
		react/later [if number? f: tf/data [tc/data: round/to (f - 32.0 * (5.0 / 9.0)) .01]]
	]
]
