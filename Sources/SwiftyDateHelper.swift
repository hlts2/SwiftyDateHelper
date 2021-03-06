import Foundation

//Custom Initializer
public extension Date {

    public init(year: Int, month: Int, day: Int, hour: Int, minute: Int, second: Int) {
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : year,
                                                          month  : month,
                                                          day    : day,
                                                          hour   : hour,
                                                          minute : minute,
                                                          second : second))
        if let date = date {
            self = date
        } else {
            self = Date()
        }
    }

    public init(year: Int) {
        let now      = Date()
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : year,
                                                          month  : now.month,
                                                          day    : now.day,
                                                          hour   : now.hour,
                                                          minute : now.minute,
                                                          second : now.second))
        if let date = date {
            self = date
        } else {
            self = now
        }
    }

    public init(month: Int) {
        let now      = Date()
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : now.year,
                                                          month  : month,
                                                          day    : now.day,
                                                          hour   : now.hour,
                                                          minute : now.minute,
                                                          second : now.second))
        if let date = date {
            self = date
        } else {
            self = now
        }
    }
    
    public init(day: Int) {
        let now      = Date()
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : now.year,
                                                          month  : now.month,
                                                          day    : day,
                                                          hour   : now.hour,
                                                          minute : now.minute,
                                                          second : now.second))
        if let date = date {
            self = date
        } else {
            self = now
        }
    }

    public init(hour: Int) {
        let now      = Date()
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : now.year,
                                                          month  : now.month,
                                                          day    : now.day,
                                                          hour   : hour,
                                                          minute : now.minute,
                                                          second : now.second))
        if let date = date {
            self = date
        } else {
            self = now
        }
    }

    public init(minute: Int) {
        let now      = Date()
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : now.year,
                                                          month  : now.month,
                                                          day    : now.day,
                                                          hour   : now.hour,
                                                          minute : minute,
                                                          second : now.second))
        if let date = date {
            self = date
        } else {
            self = now
        }
    }

    public init(second: Int) {
        let now      = Date()
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : now.month,
                                                          month  : now.month,
                                                          day    : now.day,
                                                          hour   : now.hour,
                                                          minute : now.minute,
                                                          second : second))
        if let date = date {
            self = date
        } else {
            self = now
        }
    }
}


//Transform
public extension Date {

    public func toString(format: String = "yyyy/MM/dd HH:mm:ss") -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }

    public static func ToString(date: Date, format: String = "yyyy/MM/dd HH:mm:ss") -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
}

//Date Getter & Setter
public extension Date {

    public var year: Int {
        get {
            let formatter = DateFormatter()
            formatter.dateFormat = "YYYY"
            return Int(formatter.string(from: self))!
        }

        set {
            let calendar = Calendar(identifier: .gregorian)
            let date     = calendar.date(from: DateComponents(year   : newValue,
                                                              month  : self.month,
                                                              day    : self.day,
                                                              hour   : self.hour,
                                                              minute : self.minute,
                                                              second : self.second))
            if let date = date {
                self = date
            }
        }

    }

    public static func Year(date: Date) -> Int {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY"
        return Int(formatter.string(from: date))!
    }

    public var month: Int {
        get {
            let formatter = DateFormatter()
            formatter.dateFormat = "MM"
            return Int(formatter.string(from: self))!
        }

        set {
            let calendar = Calendar(identifier: .gregorian)
            let date     = calendar.date(from: DateComponents(year   : self.year,
                                                              month  : newValue,
                                                              day    : self.day,
                                                              hour   : self.hour,
                                                              minute : self.minute,
                                                              second : self.second))
            if let date = date {
                self = date
            }
        }
    }

    public static func Month(date: Date) -> Int {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM"
        return Int(formatter.string(from: date))!
    }

    public var day: Int {
        get {
            let formatter = DateFormatter()
            formatter.dateFormat = "dd"
            return Int(formatter.string(from: self))!
        }

        set {
            let calendar = Calendar(identifier: .gregorian)
            let date     = calendar.date(from: DateComponents(year   : self.year,
                                                              month  : self.month,
                                                              day    : newValue,
                                                              hour   : self.hour,
                                                              minute : self.minute,
                                                              second : self.second))
            if let date = date {
                self = date
            }
        }
    }

    public static func Day(date: Date) -> Int {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd"
        return Int(formatter.string(from: date))!
    }

    public var hour: Int {
        get {
            let formatter = DateFormatter()
            formatter.dateFormat = "HH"
            return Int(formatter.string(from: self))!
        }

        set {
            let calendar = Calendar(identifier: .gregorian)
            let date     = calendar.date(from: DateComponents(year   : self.year,
                                                              month  : self.month,
                                                              day    : self.day,
                                                              hour   : newValue,
                                                              minute : self.minute,
                                                              second : self.second))
            if let date = date {
                self = date
            }
        }
    }

    public static func Hour(date: Date) -> Int {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH"
        return Int(formatter.string(from: date))!
    }

    public var minute: Int {
        get {
            let formatter = DateFormatter()
            formatter.dateFormat = "mm"
            return Int(formatter.string(from: self))!
        }

        set {
            let calendar = Calendar(identifier: .gregorian)
            let date     = calendar.date(from: DateComponents(year   : self.year,
                                                              month  : self.month,
                                                              day    : self.day,
                                                              hour   : self.hour,
                                                              minute : newValue,
                                                              second : self.second))
            if let date = date {
                self = date
            }
        }
    }

    public static func Minute(date: Date) -> Int {
        let formatter = DateFormatter()
        formatter.dateFormat = "mm"
        return Int(formatter.string(from: date))!
    }

    public var second: Int {
        get {
            let formatter = DateFormatter()
            formatter.dateFormat = "ss"
            return Int(formatter.string(from: self))!
        }

        set {
            let calendar = Calendar(identifier: .gregorian)
            let date     = calendar.date(from: DateComponents(year   : self.year,
                                                              month  : self.month,
                                                              day    : self.day,
                                                              hour   : self.hour,
                                                              minute : self.minute,
                                                              second : newValue))
            if let date = date {
                self = date
            }
        }
    }

    public static func Second(date: Date) -> Int {
        let formatter = DateFormatter()
        formatter.dateFormat = "ss"
        return Int(formatter.string(from: date))!
    }
}

//Extraction day
public extension Date {

    public static var today: Date {
        get {
            return Date()
        }
    }
    
    public static var firstDate: Date {
        get {
            let now      = Date()
            let calendar = Calendar(identifier: .gregorian)
            let date     = calendar.date(from: DateComponents(year   : now.year,
                                                              month  : now.month,       //This month
                                                              day    : 01,              //1 day
                                                              hour   : 13,              //13 o'clock
                                                              minute : 00))
        
            return date!
        }
    }
    
    public var firstDate: Date {
        get {
            let calendar = Calendar(identifier: .gregorian)
            let date     = calendar.date(from: DateComponents(year   : self.year,
                                                              month  : self.month,      //The month of Date
                                                              day    : 01,              //1 day
                                                              hour   : 13,              //13 o'clock
                                                              minute : 00))
            
            return date!
        }
    }
    
    public static var lastDate: Date {
        get {
            let now      = Date()
            let calendar = Calendar(identifier: .gregorian)
            let date     = calendar.date(from: DateComponents(year   : now.year,
                                                              month  : now.month + 1,   //Next month
                                                              day    : 01,              //1 day
                                                              hour   : -1,              //1 hour ago => the last day of this month
                                                              minute : 00))
        
            return date!
        }
    }
    
    public var lastDate: Date {
        get {
            let calendar = Calendar(identifier: .gregorian)
            let date     = calendar.date(from: DateComponents(year   : self.year,
                                                              month  : self.month + 1,  //Next month of month of Date
                                                              day    : 01,              //1 day
                                                              hour   : -1,              //1 hour ago => The last day of the month of Date
                                                              minute : 00))
            return date!
        }
    }
}

//Extraction Week Day
public extension Date {
    
    public var weekDayIndex: Int {
        get {
            return Calendar.current.component(.weekday, from: self) - 1
        }
    }
    
    public var weekDay: String {
        get {
            let formatter = DateFormatter()
            return formatter.weekdaySymbols[weekDayIndex]
        }
    }

    public static func WeekDay(date: Date) -> String {
        let weekDay      = Calendar.current.component(.weekday, from: date)
        let formatter    = DateFormatter()
        return formatter.weekdaySymbols[weekDay]
    }
}

//Check Week Day
public extension Date {

    public enum week: Int {
        case sunDay
        case monDay
        case tuesDay
        case wednesDay
        case thursDay
        case friDay
        case saturDay
    }

    public func isSunday() -> Bool {
        let weekDay = Calendar.current.component(.weekday, from: self)
        return weekDay - 1 == week.sunDay.rawValue
    }

    public func isMonday() -> Bool {
        let weekDay = Calendar.current.component(.weekday, from: self)
        return weekDay - 1 == week.monDay.rawValue
    }

    public func isTuesday() -> Bool {
        let weekDay = Calendar.current.component(.weekday, from: self)
        return weekDay - 1 == week.tuesDay.rawValue
    }

    public func isWednesday() -> Bool {
        let weekDay = Calendar.current.component(.weekday, from: self)
        return weekDay - 1 == week.wednesDay.rawValue
    }

    public func isThursday() -> Bool {
        let weekDay = Calendar.current.component(.weekday, from: self)
        return weekDay - 1 == week.thursDay.rawValue
    }

    public func isFriday() -> Bool {
        let weekDay = Calendar.current.component(.weekday, from: self)
        return weekDay - 1 == week.friDay.rawValue
    }

    public func isSaturday() -> Bool {
        let weekDay = Calendar.current.component(.weekday, from: self)
        return weekDay - 1 == week.saturDay.rawValue
    }
}

//Date Calcuration
public extension Date {

    public func beforeYear(_ year: Int) -> Date {
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year - year,
                                                          month  : self.month,
                                                          day    : self.day,
                                                          hour   : self.hour,
                                                          minute : self.minute,
                                                          second : self.second))
        if let date = date {
            return date
        } else {
            return self
        }
    }

    public func afterYear(_ year: Int) -> Date {
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year + year,
                                                          month  : self.month,
                                                          day    : self.day,
                                                          hour   : self.hour,
                                                          minute : self.minute,
                                                          second : self.second))
        if let date = date {
            return date
        } else {
            return self
        }
    }

    public func beforeMonth(_ month: Int) -> Date {
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year,
                                                          month  : self.month - month,
                                                          day    : self.day,
                                                          hour   : self.hour,
                                                          minute : self.minute,
                                                          second : self.second))
        if let date = date {
            return date
        } else {
            return self
        }
    }

    public func afterMonth(_ month: Int) -> Date {
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year,
                                                          month  : self.month + month,
                                                          day    : self.day,
                                                          hour   : self.hour,
                                                          minute : self.minute,
                                                          second : self.second))
        if let date = date {
            return date
        } else {
            return self
        }
    }
    
    public func beforeDay(_ day: Int) -> Date {
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year,
                                                          month  : self.month,
                                                          day    : self.day - day,
                                                          hour   : self.hour,
                                                          minute : self.minute,
                                                          second : self.second))
        if let date = date {
            return date
        } else {
            return self
        }
    }

    public func afterDay(_ day: Int) -> Date {
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year,
                                                          month  : self.month,
                                                          day    : self.day + day,
                                                          hour   : self.hour,
                                                          minute : self.minute,
                                                          second : self.second))
        if let date = date {
            return date
        } else {
            return self
        }
    }
    
    public func beforeHour(_ hour: Int) -> Date {
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year,
                                                          month  : self.month,
                                                          day    : self.day,
                                                          hour   : self.hour - hour,
                                                          minute : self.minute,
                                                          second : self.second))
        if let date = date {
            return date
        } else {
            return self
        }
    }
    
    public func afterHour(_ hour: Int) -> Date {
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year,
                                                          month  : self.month,
                                                          day    : self.day,
                                                          hour   : self.hour + hour,
                                                          minute : self.minute,
                                                          second : self.second))
        if let date = date {
            return date
        } else {
            return self
        }
    }
    
    public func beforeMinute(_ minute: Int) -> Date {
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year,
                                                          month  : self.month,
                                                          day    : self.day,
                                                          hour   : self.hour,
                                                          minute : self.minute - minute,
                                                          second : self.second))
        if let date = date {
            return date
        } else {
            return self
        }
    }
    
    public func afterMinute(_ minute: Int) -> Date {
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year,
                                                          month  : self.month,
                                                          day    : self.day,
                                                          hour   : self.hour,
                                                          minute : self.minute + minute,
                                                          second : self.second))
        if let date = date {
            return date
        } else {
            return self
        }
    }
    
    public func beforeSecond(_ second: Int) -> Date {
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year,
                                                          month  : self.month,
                                                          day    : self.day,
                                                          minute : self.minute,
                                                          second : self.second - second))
        if let date = date {
            return date
        } else {
            return self
        }
    }
    
    public func afterSecond(_ second: Int) -> Date {
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year,
                                                          month  : self.month,
                                                          day    : self.day,
                                                          minute : self.minute,
                                                          second : self.second + second))
        if let date = date {
            return date
        } else {
            return self
        }
    }
}


public extension Calendar {
    
    public struct CalendarCell {
        public var date: Date
        
        init(date: Date) {
            self.date = date
        }
    }
    
    public func dates(date: Date) -> [CalendarCell] {
        var cells = [CalendarCell]()
        
        cells.append(CalendarCell(date: date.firstDate))
        for i in 1..<date.lastDate.day {
            cells.append(CalendarCell(date: date.firstDate.afterDay(i)))
        }
        
        return cells
    }
}
