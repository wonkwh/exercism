//Solution goes in Sources

struct Year {
	var calendarYear : Int 
	var isLeapYear : Bool {
		return calendarYear % 4 == 0 && calendarYear % 100 != 0 || 
				calendarYear % 400 == 0
	}

	init(calendarYear: Int) {
		self.calendarYear = calendarYear
	}
}