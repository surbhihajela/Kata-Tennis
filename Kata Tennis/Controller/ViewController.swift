
import UIKit

class ViewController: UIViewController {

    private let playerOne: Player
    private let playerTwo: Player
    private let game:Game
    
    @IBOutlet weak var playerOneName: UILabel!
    @IBOutlet weak var playerTwoName: UILabel!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.playerOneName.text = self.playerOne.name
        self.playerTwoName.text = self.playerTwo.name
    }

    required init?(coder aDecoder: NSCoder) {
        
        self.playerOne = Player(name: "Player 1")
        self.playerTwo = Player(name: "Player 2")
        self.game = Game(firstPlayer: self.playerOne, secondPlayer: self.playerTwo)
        super.init(coder: aDecoder)
    }
    
    @IBAction func playerOnePlayTapped(_ sender: Any) {
        playerOne.performGame()
        self.updateScore()
    }
    
    @IBAction func playerTwoPlayTapped(_ sender: Any) {
        playerTwo.performGame()
        self.updateScore()
    }
    
    func updateScore() {

        self.playerScoreLabel.text = self.game.calculateScore()
    }
}

