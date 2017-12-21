//Solution goes in Sources

import Foundation

extension Sequence where Element: Numeric {
    func sum() -> Element {
        return reduce(0, +)
    }
}

struct Squares {
    let maxNumber: Int
    var squareOfSums: Int {
        let numbers = 1...maxNumber
        let sums = numbers.sum()
        return sums * sums
    }

    var sumOfSquares: Int {
        let numbers = 1...maxNumber
        let numbersSquare = numbers.map {$0 * $0}
        return numbersSquare.sum()
    }
    var differenceOfSquares: Int {
        return squareOfSums - sumOfSquares
    }

    init(_ maxNumber: Int) {
        self.maxNumber = maxNumber
    }
}

