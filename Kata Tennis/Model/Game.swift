
import Foundation

enum SelectedPlayer {
    case PlayerOne
    case PlayerTwo
}

class Game {
    
    private let playerOne:Player
    private let playerTwo:Player
    
    
    init(firstPlayer:Player, secondPlayer:Player) {
        
        self.playerOne = firstPlayer
        self.playerTwo = secondPlayer
    }
    
    
    func calculateScore()->String{
        var score = ""
        var tempScore = 0
        let score1 = playerOne.points
        let score2 = playerTwo.points
        if score1 == score2
        {
            switch score1
            {
            case 0:
                score = " Love - All"
                
            case 1:
                score = " Fifteen - All"
                
            case 2:
                score = " Thirty - All"
                
            default:
                score = "Deuce"
                
            }
        }
        else if score1>=4 || score2>=4
        {
            let minusResult = score1-score2
            if minusResult==1 { score = " Advantage player1 " }
            else if minusResult  == -1 { score = " Advantage player2 " }
            else if minusResult>=2 { score = " Win for player1 " }
            else { score = " Win for player2 " }
        }
        else
        {
            for i in 1..<3
            {
                if i==1 { tempScore = score1 }
                else { score = "  \(score)   -   "; tempScore = score2 }
                switch tempScore
                {
                case 0:
                    score = " \(score)Love "
                    
                case 1:
                    score = " \(score)Fifteen "
                    
                case 2:
                    score = " \(score)Thirty "
                    
                case 3:
                    score = " \(score)Forty "
                    
                default:
                    break
                    
                }
            }
        }
        return score
    }
    
}

