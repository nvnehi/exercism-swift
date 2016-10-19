// imports
import Foundation

// types
class GradeSchool {
    // properties
    var roster = [Int: [String]]()
    var sortedRoster: [Int: [String]] {
        var result = [Int: [String]]()
        
        for (grade, students) in roster {
            result[grade] = students.sorted()
        }
        
        return result
    }
    
    // methods
    func addStudent(_ name: String, grade: Int) {
        if roster[grade] != nil {
            roster[grade]!.append(name)
        } else {
            roster[grade] = [name]
        }
    }
    
    func studentsInGrade(_ grade: Int) -> [String]? {
        return roster[grade] ?? []
    }
}
