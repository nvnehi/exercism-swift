/*
 determine the type of string and return the appropriate angsty teenager response
 */

// imports
import Foundation

// types
struct Bob {
    // methods
    static func hey(_ input: String) -> String {
        // trim and filter the input
        let trimmed = input.trimmingCharacters(in: CharacterSet.whitespaces)
        let filtered = trimmed.components(separatedBy: CharacterSet.decimalDigits).joined()
        
        // ensure something has been said
        guard filtered.characters.count > 0 else { return "Fine, be that way." }
        
        // check if the entire string is uppercased and that uppercase letters exists
        if filtered.rangeOfCharacter(from: CharacterSet.uppercaseLetters) != nil &&
            filtered.uppercased() == filtered {
            return "Woah, chill out!"
        }
        
        // determine remaining possible responses
        if filtered.characters.last! == "?" { return "Sure." }
        else { return "Whatever." }
    }
}
