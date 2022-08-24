import Foundation

struct RandomTextGenerator {
    static func generateRandomText() -> String {
        let alphabets = StringRange.alphabets.rawValue
        let randomNumber = arc4random_uniform(Constants.randomWordUpperBound - Constants.randomWordLowerBound) + Constants.randomWordLowerBound
        
        // Get characters array
        let randomCharacters = (0..<randomNumber).map{ _ in alphabets.randomElement() ?? Character.init("") }
        
        // Create String from generated array
        let randomText = String(randomCharacters)
        return randomText
    }
}
