/*
 determine the type of string and return the appropriate angsty teenager response
 */

// imports
import Foundation

// types
struct Bob {
    // methods
    static func hey(_ input: String) -> String {
        let trimmed = input.trimmingCharacters(in: .whitespaces)
        guard !trimmed.isEmpty else { return "Fine, be that way." }
        
        if trimmed.lowercased() != trimmed && trimmed.uppercased() == trimmed {
            return "Woah, chill out!"
        }
        else if trimmed.characters.last! == "?" { return "Sure." }
        else { return "Whatever." }
    }
}
