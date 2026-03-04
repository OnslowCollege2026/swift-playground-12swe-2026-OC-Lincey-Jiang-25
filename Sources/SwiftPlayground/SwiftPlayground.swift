// The Swift Programming Language
// https://docs.swift.org/swift-book
func print(board: [[String]]) {
    print("+---+---+---+")
board.forEach { line in
    print("| \(line[0]) | \(line[1]) | \(line[2]) |")
    print("+---+---+---+")
}
print("")
}
func askPlayerMove(board: [[String]]) -> [Int] {
    let input = false

    while input == false {
    print(" Please enter the row number (1, 2, or 3): ")
    if let userInput = readLine(), let number = Int(userInput), number >= 1, number <= 3 {
        let rowNumber = number - 1

        print("Please enter the column number (1, 2, or 3): ")
        if let userInput2 = readLine(), let number = Int(userInput2), number >= 1, number <= 3 {
        let columnNumber = number - 1

            if board[rowNumber][columnNumber] == " " {
                return [rowNumber, columnNumber]
            } else {
                print("This spot is already taken. Please try again.")
            }
                
        } else {
            print ("Invalid column number")
        }
    } else {
        print("Invalid row number.")
    }

    }
} 

func winGame() {
    
}


@main 
struct SwiftPlayground {
        static func main() {

            var totalMoves = 0
            let maxTotalMoves = 9
            var player = 1

            var board = [
                [" ", " ", " "], // Row 0.
                [" ", " ", " "], // Row 1.
                [" ", " ", " "] // Row 2.
            ]
            print(board: board)

        while totalMoves < maxTotalMoves {
            // Ask for the user's move.
            if player == 1 {
                let position = askPlayerMove(board: board)
                board[position[0]][position [1]] = "x"
                print(board: board)
                totalMoves += 1
                player = 2
            } 

            if player == 2 {
                let position = askPlayerMove(board: board)
            board[position[0]][position [1]] = "o"
            print(board: board)
            totalMoves += 1
            player = 1
            } 
            
            if totalMoves == maxTotalMoves {
                print("Game over.")
            } 

            
        }
    }
}
