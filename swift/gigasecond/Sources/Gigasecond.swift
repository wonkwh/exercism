//Solution goes in Sources
import Foundation
	
struct Gigasecond {
    let gs = TimeInterval(1000000000)
    let birthDay: Date?
    let endDate: Date
    var description: String

    init?(from: String) {
        let RFC3339DateFormatter = DateFormatter()
        RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        self.birthDay = RFC3339DateFormatter.date(from: from)

        //add 10 ^ 9 second
        if let date = birthDay {
            self.endDate = date.addingTimeInterval(gs)
            description = RFC3339DateFormatter.string(from: endDate)
        } else {
            return nil
        }
    }
}

// extension Gigasecond : CustomStringConvertible {
// 	var description : String {
// 		return "2043-01-01T01:46:40"
// 	}
// }