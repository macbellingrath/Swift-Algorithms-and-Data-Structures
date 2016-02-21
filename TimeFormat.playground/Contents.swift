//: Playground - noun: a place where people can play

import Foundation

let inputString = readLine() ?? ""


enum MorningOrNight {
    case AM, PM
}

extension String {
    
    var amPM: MorningOrNight? {
        if self.containsString("AM") {
            return MorningOrNight.AM
        } else if self.containsString("PM") {
            return MorningOrNight.PM
        } else {
            return nil
        }
    }
    
}


struct Time: CustomStringConvertible {
    let amPM: MorningOrNight?
    var hours: Int
    let minutes: Int
    let seconds: Int
    init?(str: String) {
        guard str.characters.count == 10 else { return nil }
        let components = str.componentsSeparatedByString(":")
        hours = Int(components.first ?? "") ?? 0
        minutes = Int(components[1] ?? "") ?? 0
        
        let secondsAndAMPM = components[2] ?? ""
        let secondsString = secondsAndAMPM.substringToIndex(secondsAndAMPM.characters.startIndex.advancedBy(2))
        seconds = Int(secondsString) ?? 0
        
        let ampmString = secondsAndAMPM.substringFromIndex(secondsAndAMPM.characters.startIndex.advancedBy(2))
            amPM = ampmString.amPM

    }
    
    mutating func toMilitaryTime() {
        guard let ampm = amPM else { return }
        
        switch ampm {
        case .PM: self.hours += 12
        default: break
        }
    }
    
    var description: String {
        let needsFormatting: (Int) -> Bool = { return $0 <= 9 }
        let hoursStr = needsFormatting(self.hours) ? "0\(hours)" : "\(hours)"
        let minutesStr = needsFormatting(self.minutes) ? "0\(minutes)" : "\(minutes)"
        let  secondsStr = needsFormatting(self.seconds) ? "0\(seconds)" : "\(seconds)"
        let separator = ":"
        
        return hoursStr + separator + minutesStr + separator + secondsStr
    }
}

if var t = Time(str: inputString) {
t.toMilitaryTime()
print(t)
}

