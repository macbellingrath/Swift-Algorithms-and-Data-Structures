import UIKit



//func isPalindrome(str: String) -> Bool {
//    
//    var i = 0
//    
//    while i < str.characters.count - 1 {
//        // is first character == last character
//        if str.characters[]] != str.characters[str.characters.count - i] { return false }
//        else i += 1
//    }
//    return true
//}



//enum SubstringErrors: ErrorType {
//    case OutOfBounds
//    
//}
//
////ensure error types are clear *
//
//
//
//func makeSubstring(str: String, startIndex: Int, count: Int) throws -> String {
//    guard str.characters.count > 0 else { throw SubstringErrors.OutOfBounds }
//    guard startIndex + count < str.characters.count else { throw SubstringErrors.OutOfBounds}
//    
//    // string property to return
//    var subStr: String = ""
//    
//    // loop
//    // for some variable i = 0 in range startIndex...count
//    // subStr.append(i[str.characters])
//    
//    for i in startIndex..<startIndex + count {
//        subStr.insert(str.substringWithRange(<#T##aRange: Range<Index>##Range<Index>#>), atIndex:i)
//        
//    }
//    return subStr
//}
