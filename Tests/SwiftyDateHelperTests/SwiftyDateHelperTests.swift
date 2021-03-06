import XCTest
@testable import SwiftyDateHelper

class SwiftyDateHelperTests: XCTestCase {

    func testInit() {
        let date = Date(year  : 2017,
                        month : 11,
                        day   : 10,
                        hour  : 13,
                        minute: 20,
                        second: 2)
        print(date)
        
        //year
        let dateWithYear = Date(year: 2017)
        print(dateWithYear)
        
        //Month
        let dateWithMonth = Date(month: 11)
        print(dateWithMonth)
        
        //Day
        let dateWithDay = Date(day: 20)
        print(dateWithDay.toString())
        
        //Hour
        let dateWithHour = Date(hour: 1)
        print(dateWithHour.toString())
        
        //Minute
        let dateWithMinute = Date(minute: 12)
        print(dateWithMinute)
        
        //Second
        let dateWithSecond = Date(second: 1)
        print(dateWithSecond)
    }

    func testTransform() {
        let date = Date()
        print(date.toString())
        print(Date.ToString(date: Date()))
    }
    
    func testDateGetterAndSetter() {
        var date = Date()
        
        print(date.year)
        print(date.month)
        print(date.day)
        print(date.hour)
        print(date.minute)
        print(date.second)
        
        date.year   = 2018
        date.month  = 11
        date.day    = 11
        date.hour   = 1
        date.minute = 11
        date.second = 11
        
        print(date.year)
        print(date.month)
        print(date.day)
        print(date.hour)
        print(date.minute)
        print(date.second)
    }
    
    func testDateGetterWithStatic() {
        print(Date.Year(date: Date()))
        print(Date.Month(date: Date()))
        print(Date.Day(date: Date()))
        print(Date.Hour(date: Date()))
        print(Date.Minute(date: Date()))
        print(Date.Second(date: Date()))
    }
    
    func testWeekDay() {
        let date = Date()
        print(date.weekDayIndex)
        print(date.weekDay)
    }
    
    func testCheckWeekDay() {
        let date = Date()
        
        print(date.isSunday())
        print(date.isMonday())
        print(date.isTuesday())
        print(date.isWednesday())
        print(date.isThursday())
        print(date.isFriday())
        print(date.isSaturday())
    }
    
    func testDateCalcuration() {
        let date = Date()
        
        print(date.beforeYear(1))
        print(date.beforeMonth(1))
        print(date.beforeDay(1))
        print(date.beforeHour(1))
        print(date.beforeMinute(1))
        print(date.beforeSecond(1))
        
        print(date.afterYear(1))
        print(date.afterMonth(1))
        print(date.afterDay(1))
        print(date.afterHour(1))
        print(date.afterMinute(1))
        print(date.afterSecond(1))
    }
    
    func testCalndarDate() {
        let calendar = Calendar(identifier: .gregorian)
        print(calendar.dates(date: Date()))        
    }
    
    static var allTests = [
        ("testInit", testInit),
        ("testTransform", testTransform),
        ("testDateGetterAndSetter", testDateGetterAndSetter),
        ("testdategetterwithstatic", testDateGetterWithStatic),
        ("testWeekDay", testWeekDay),
        ("testCheckWeekDay", testCheckWeekDay),
        ("testDateCalcuration", testDateCalcuration),
        ("testCalndarDate", testCalndarDate),
    ]
}
