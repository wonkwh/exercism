
import Foundation

struct SpaceAge {
    var seconds: Int 
    var onMercury, onVenus, onEarth, onMars, onJupiter, onSaturn, onUranus, onNeptune: Double?

    init (_ seconds: Int) {
        self.seconds = seconds

        self.onMercury = getAge(scale: 0.2408467)
        self.onVenus = getAge(scale: 0.61519726)
        self.onEarth = getAge(scale: 1.0)
        self.onMars = getAge(scale: 1.8808158)
        self.onJupiter = getAge(scale: 11.862615)
        self.onSaturn = getAge(scale: 29.447498)
        self.onUranus = getAge(scale: 84.016846)
        self.onNeptune = getAge(scale: 164.79132)
    }

    private func getAge(scale: Double) -> Double {
        return round( Double(self.seconds) / (315576.0 * scale)) / 100.0
    }
}

