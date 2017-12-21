
struct SpaceAge {
    var seconds: Int 

    init (_ seconds: Int) {
        self.seconds = seconds
    }
}

let age = SpaceAge(1_000_000)
print(age)