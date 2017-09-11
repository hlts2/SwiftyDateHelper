import Foundation

//Custom Initializer
public extension Date {
    
    public init(year: Int, month: Int, day: Int, hour: Int, minute: Int, second: Int) {
        self.init()
        
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : year,
                                                          month  : month,
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
        self.init()
        let now      = Date()
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : year,
                                                          month  : now.month,
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
        self.init()
        let now = Date()
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : now.year,
                                                          month  : month,
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
        self.init()
        let now = Date()
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : now.year,
                                                          month  : now.month,
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
        self.init()
        let now = Date()
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : now.year,
                                                          month  : now.month,
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
        self.init()
        let now = Date()
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : now.month,
                                                          month  : now.month,
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
    
    public func toString(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
    public static func ToString(date: Date, format: String) -> String {
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
}

//Extraction Week Day
public extension Date {
    
    public var weekDay: String {
        get {
            let weekDay   = Calendar.current.component(.weekday, from: self)
            let formatter = DateFormatter()
            return formatter.weekdaySymbols[weekDay - 1]
        }
    }
    
    public static func WeekDay(date: Date) -> String {
        let weekDay   = Calendar.current.component(.weekday, from: date)
        let formatter = DateFormatter()
        return formatter.weekdaySymbols[weekDay - 1]
    }
    
    public var firstDayOfWeek: String {
        get {
            let calendar = Calendar(identifier: .gregorian)
            let date     = calendar.date(from: DateComponents(year   : self.year,
                                                              month  : self.month,    //今月1日
                                                              day    : 1,             //今月1日
                                                              hour   : 12,            //今月1日13時
                                                              minute : 00))
            return Date.WeekDay(date: date!)
        }
    }
    
    public static func FirstDayOfWeek(date: Date) -> String {
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : date.year,
                                                          month  : date.month,    //今月
                                                          day    : 01,            //今月1日
                                                          hour   : 13,            //今月1日13時
                                                          minute : 00))
        return Date.WeekDay(date: date!)
    }
    
    public var lastDayOfWeek: String {
        get {
            let calendar = Calendar(identifier: .gregorian)
            let date     = calendar.date(from: DateComponents(year   : self.year,
                                                              month  : self.month + 1,  //翌月
                                                              day    : 01,              //翌月1日
                                                              hour   : -1,              //翌月1日になったときの-1時間前 => 今月の最終日
                                                              minute : 00))
            return Date.WeekDay(date: date!)
        }
    }
    
    public static func LastDayOfWeek(date: Date) -> String {
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year      : Int(date.year),
                                                          month     : date.month + 1,
                                                          day       : 01,
                                                          hour      : -1,
                                                          minute    : 00))
        return Date.WeekDay(date: date!)
    }
    
}

//Date Calcuration
public extension Date {
    
    public func beforeYear(_ year: Int) -> Date {
        let num = day < 0 ? -1 * day : day
        
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year - num,
                                                          month  : self.day,
                                                          day    : self.day,
                                                          hour   : self.hour,
                                                          minute : self.minute))
        if let date = date {
            return date
        } else {
            return self
        }
    }
    
    public func afterYear(_ year: Int) -> Date {
        let num = day < 0 ? -1 * day : day
        
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year + num,
                                                          month  : self.day,
                                                          day    : self.day,
                                                          hour   : self.hour,
                                                          minute : self.minute))
        if let date = date {
            return date
        } else {
            return self
        }
    }
    
    public func beforeMonth(_ month: Int) -> Date {
        let num = day < 0 ? -1 * day : day
        
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year,
                                                          month  : self.day - num,
                                                          day    : self.day,
                                                          hour   : self.hour,
                                                          minute : self.minute))
        if let date = date {
            return date
        } else {
            return self
        }
    }
    
    public func afterMonth(_ month: Int) -> Date {
        let num = day < 0 ? -1 * day : day
        
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year,
                                                          month  : self.day + num,
                                                          day    : self.day,
                                                          hour   : self.hour,
                                                          minute : self.minute))
        if let date = date {
            return date
        } else {
            return self
        }
    }
    
    public func beforeDay(_ day: Int) -> Date {
        let num = day < 0 ? -1 * day : day
        
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year,
                                                          month  : self.day,
                                                          day    : self.day - num,
                                                          hour   : self.hour,
                                                          minute : self.minute))
        if let date = date {
            return date
        } else {
            return self
        }
    }
    
    public func afterDay(_ day: Int) -> Date {
        let num = day < 0 ? -1 * day : day
        
        let calendar = Calendar(identifier: .gregorian)
        let date     = calendar.date(from: DateComponents(year   : self.year,
                                                          month  : self.day,
                                                          day    : self.day + num,
                                                          hour   : self.hour,
                                                          minute : self.minute))
        if let date = date {
            return date
        } else {
            return self
        }
    }
}
