// imports
import Foundation

// types
struct SpaceAge {
    // types
    enum Planets {
        case Mercury
        case Venus
        case Earth
        case Mars
        case Jupiter
        case Saturn
        case Uranus
        case Neptune
    }
    
    // properties
    let seconds: Double
    
    // computed properties
    var onMercury: Double { return convertToEarthYears(from: .Mercury) }
    var onVenus: Double { return convertToEarthYears(from: .Venus) }
    var onEarth: Double { return convertToEarthYears() }
    var onMars: Double { return convertToEarthYears(from: .Mars) }
    var onJupiter: Double { return convertToEarthYears(from: .Jupiter) }
    var onSaturn: Double { return convertToEarthYears(from: .Saturn) }
    var onUranus: Double { return convertToEarthYears(from: .Uranus) }
    var onNeptune: Double { return convertToEarthYears(from: .Neptune) }
    
    // initializers
    init(_ seconds: Double) {
        self.seconds = seconds
    }
    
    // methods
    func convertToEarthYears(from planet: Planets = .Earth) -> Double {
        let earthSeconds = 31557600.00
        let earthYears = seconds / earthSeconds
        let orbitalPeriod: Double
        let age: Double
        
        // convert age on another planet to earth years by dividing by its orbital period
        switch planet {
        case .Mercury: orbitalPeriod = 0.2408467
        case .Venus: orbitalPeriod = 0.61519726
        case .Earth: orbitalPeriod = 1.0
        case .Mars: orbitalPeriod = 1.8808158
        case .Jupiter: orbitalPeriod = 11.862615
        case .Saturn: orbitalPeriod = 29.447498
        case .Uranus: orbitalPeriod = 84.016846
        case .Neptune: orbitalPeriod = 164.79132
        }
        
        age = earthYears / orbitalPeriod
        
        // fix precision to the hundredths place
        return Double(String(format: "%.2f", age))!

    }
}

