import Foundation

struct SumOfMultiples {
    static func toLimit(_ limit: Int , inMultiples : [Int]) -> Int {
        let filtered = (0..<limit).filter {
            $0 % 3 == 0 || $0 % 5 == 0
        }

        let sum = filtered.reduce(0, +)
        return sum
    }
}

