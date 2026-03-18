// // The Swift Programming Language
// // https://docs.swift.org/swift-book


// /// Creates a break in the page.
func lineBreak() {
    print("-------------------------------------------------------------")
}
// /// Gives players a brief summary on how to play.
// func welcomeMessage() {
//     lineBreak()
//     print("Welcome to the tic tac toe game.")
//     print("Player1 is 'x', Player2 is 'o'. ")
//     print("The game will ask you to enter a row number, then ask you to enter a column number.")
//     print("The aim of the game is to get 3 in a row. (Diagonals allowed).")
//     print("May the best player win!")
//     lineBreak()
// }


/// Creates the battle ship board.
/// - Parameter board: 2D array with String values.
func print(board: [[String]]) {
    let yAxis = ["1", "2", "3", "4", "5", "6"]
    print("   ", yAxis[0], "  ", yAxis[1],"  ", yAxis[2],"  ", yAxis[3],"  ", yAxis[4],"   ", yAxis[5])
    print("  +----+----+----+----+----+----+")

    var index = 0
    while index < 5 {
        for row in board {
    print("\(yAxis[index]) |  \(row[0]) |  \(row[1]) |  \(row[2]) |  \(row[3]) |  \(row[4]) |  \(row[5]) |")
    print("  +----+----+----+----+----+----+")
    index += 1
        }
    }


lineBreak()
print("")
}
/// Parameters:
/// - row: The row index for the guess.
/// - col: The column index for the guess.
/// - ocean: The hidden ships grid.
/// - guesses: The player's current guesses grid.
///
/// Returns: The updated guesses grid after the guess is applied.
func processGuess( ocean: [[String]], ) -> [[String]] {
    let maxNumber = 6
    let minNumber = 1
    let maximumGuesses = 5
    var guessCount = 1
    while guessCount <= maximumGuesses {
    print("Please enter the x-coordinate, press enter, then enter your y-coordinate. (1 - 6)")
    guard let input = readLine(), 
    let xCoordinate = Int(input), xCoordinate <= maxNumber, xCoordinate >= minNumber,
    let input2 = readLine(),
    let yCoordinate = Int(input2), yCoordinate <= maxNumber, yCoordinate >= minNumber else {
        print("invalid input")
        guessCount = guessCount - 1
        continue
    } 
        let guess = ocean[xCoordinate][yCoordinate]

        // Makes sure the user hasn't guessed this position already
        guard guess != "X" || guess != "0" else {
            print("You have already guessed this spot.")
            continue
        }
        guard guess != "~" else {
            print("You missed!")
            continue
        }

        print("You hit a ship!")
        return [["X"]]
    }   
return [["O"]]
}




// /// Creates a second board to tally up wins.
// /// - Parameter board: 2D array with Int values.
// func printCalculationBoard(board: [[Int]]) {
//     print("+---+---+---+")
// board.forEach { line in
//     print("| \(line[0]) | \(line[1]) | \(line[2]) |")
//     print("+---+---+---+")
// }
// print("")
// }
// /// Asks the player where they want their next move.
// /// - Parameter board: 2D array with String values.
// /// - Returns: An Integer value for the co-ordinate of the move.
// func askPlayerMove(board: [[String]]) -> [Int] {
//     while true {
//         print("Please enter the row number (1, 2, or 3): ")
//         if let userInput = readLine(), let number = Int(userInput), number >= 1, number <= 3 {
//             let rowNumber = number - 1

//             print("Please enter the column number (1, 2, or 3): ")
//             if let userInput2 = readLine(), let number = Int(userInput2), number >= 1, number <= 3 {
//             let columnNumber = number - 1

//             if board[rowNumber][columnNumber] == " " {
//                 return [rowNumber, columnNumber]
//             } else {
//                 print("This spot is already taken. Please try again.")
//             }
                        
//         } else {
//             print ("Invalid column number")
//         }
//     } else {
//         print("Invalid row number.")
//     }

//     }
// } 
// /// Calculates whether someone has one yet.
// /// - Parameter board2: Uses the Int 2D array to calculate scores.
// /// - Returns: true if a player has won.
// func winGame(board2: [[Int]]) -> Bool {
    
//     let row1Sum = board2[0][0] + board2[0][1] + board2[0][2]
//     let row2Sum = board2[1][0] + board2[1][1] + board2[1][2]
//     let row3Sum = board2[2][0] + board2[2][1] + board2[2][2]

//     let column1Sum = board2[0][0] + board2[1][0] + board2[2][0]
//     let column2Sum = board2[0][1] + board2[1][1] + board2[2][1]
//     let column3Sum = board2[0][2] + board2[1][2] + board2[2][2]

//     let diagonal1Sum = board2[0][0] + board2[1][1] + board2[2][2]
//     let diagonal2Sum = board2[2][0] + board2[1][1] + board2[0][2]

//     if row1Sum == 3 || row2Sum == 3 || row3Sum == 3 || column1Sum == 3 || column2Sum == 3 || column3Sum == 3 || diagonal1Sum == 3 || diagonal2Sum == 3 {
//         print("Player 1 (x) wins!")
//         print(" ")
//         lineBreak()
//         return true
//     }

//     if row1Sum == 12 || row2Sum == 12 || row3Sum == 12 || column1Sum == 12 || column2Sum == 12 || column3Sum == 12 || diagonal1Sum == 12 || diagonal2Sum == 12 {
//         print("Player 2 (o) wins!")
//         print(" ")
//         lineBreak()
//         return true
//     }
//     return false
// }
@main 
struct SwiftPlayground {
        static func main() {

            // Guessing board.
            let board = [
                ["~", "~", "~", "~", "~", "~"], // Row 0.
                ["~", "~", "~", "~", "~", "~"], // Row 1.
                ["~", "~", "~", "~", "~", "~"], // Row 2.
                ["~", "~", "~", "~", "~", "~"], // Row 3.
                ["~", "~", "~", "~", "~", "~"], // Row 4.
                ["~", "~", "~", "~", "~", "~"], // Row 5.
            ]

            let size = 6
            var ocean = Array(repeating: Array(repeating: "~", count: size), count: size)
            // var guesses = Array(repeating: Array(repeating: "~", count: size), count: size)
            ocean[1][3] = "S"
            ocean[2][3] = "S"
            ocean[4][0] = "S"
            ocean[5][4] = "S"

            print(board: board)
            print(board: ocean)
            print(board: processGuess( ocean: ocean))
//             // Sets up calculation board.
//             var board2 = [
//                 [0, 0, 0], // Row 0.
//                 [0, 0, 0], // Row 1.
//                 [0, 0, 0] // Row 2.
//             ]
        
//         welcomeMessage()

//         // Prints the board the players will use.
//         print(board: board)

//         // If no one wins, the game will end once the board is full.
//         while totalMoves < maxTotalMoves {

//             if player == 1 {
//                 print("Player 1 turn: ")
//                 let position = askPlayerMove(board: board)
//                 board[position[0]][position [1]] = "x"
//                 board2[position[0]][position [1]] = 1
//                 player = 2
//             } else {
//                 print("Player 2 turn: ")
//                 let position = askPlayerMove(board: board)
//                 board[position[0]][position [1]] = "o"
//                 board2[position[0]][position [1]] = 4
//                 player = 1
//             }  

//             totalMoves += 1   

//             // Updates the board with the players move.  
//             print(board: board)

//             // Checks if the game has been won.
//             if winGame(board2: board2) {
//                 return
//             }
//         } 
//             print("Game over. You tied.")
//             print (" ")
//             lineBreak()
        }}