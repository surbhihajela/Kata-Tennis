
import Foundation

class Player {
    
    var name: String
    var points:Int = 0
    
    init(name: String) {
        self.name = name
        self.points = 0
    }
    
    func performGame() {
        points = points + 1
    }
    
}
