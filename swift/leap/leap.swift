class Year {
    let isLeapYear: Bool

    init(calendarYear: Int) {
        isLeapYear = (calendarYear % 100 != 0 && calendarYear % 4 == 0) || calendarYear % 400 == 0
    }
}
