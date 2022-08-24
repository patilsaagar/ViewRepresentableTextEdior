import Foundation
import Combine

class RandomTextGeneratorService: ObservableObject {
    @Published var randomText: String = String()
        
    init() {
        generateRandomText()
    }
    
    func generateRandomText() {
        self.randomText = RandomTextGenerator.generateRandomText()
    }
    
    func getWordCount(sourceString: String) -> Int {
        let chararacterSet = CharacterSet.whitespacesAndNewlines.union(.newlines)
        let components = sourceString.components(separatedBy: chararacterSet)
        let words = components.filter { !$0.isEmpty }
        
        return words.count
    }
}
