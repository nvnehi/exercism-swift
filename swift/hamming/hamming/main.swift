import Foundation

struct Hamming {
    static func compute(_ firstDNA: String, against secondDNA: String) -> Int? {
        guard firstDNA.isSameCount(as: secondDNA) else { return nil }

        return firstDNA.compareDifferences(to: secondDNA)
    }
}

private extension String {
    func compareDifferences(to s: String) -> Int? {
        var difference: Int? = 0

        for i in 0..<self.characters.count {
            let idx = self.index(self.startIndex, offsetBy: i)

            if self[idx] != s[idx] { difference! += 1 }
        }

        return difference
    }

    func isSameCount(as s: String) -> Bool {
        return self.characters.count == s.characters.count
    }
}
