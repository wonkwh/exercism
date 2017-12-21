
import Foundation

extension Dictionary where Value: Equatable {
    func key(forValue value: Value) -> Key? {
        return first { $0.1 == value }?.0
    }
}


struct Nucleotide {
    let nucleotides: String
    private let dnaToRna: [Character: Character] = [
        "G": "C",
        "T": "A",
        "A": "U",
        "C": "G",
    ]
    
    init(_ string: String) {
        nucleotides = string
    }
    
    func complementOfDNA() -> String {
        return String( nucleotides.map { dnaToRna[$0]! } )
    }
}
