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
func printLine() {
    print("------------------------------------")
}
func askPlayerMove(board: [[String]]) -> [Int] {
    var rowInput = 4
    var columnInput = 4
    var validMove = false

    while validMove == false {
    while rowInput == 4 {
    print(" Please enter the row number (1, 2, or 3): ")
    if let userInput = readLine(), let input = Int(userInput), input >= 1, input <= 3 {
    let rowNumber = input - 1
    rowInput = rowNumber 
    } else {
        print("Invalid row Number, choose a number 1 - 3 inclusive.")
        printLine()
        rowInput = 4
    }}


    while columnInput == 4 {
    print("Please enter the column number (1, 2, or 3): ")
    if let userInput2 = readLine(), let input = Int(userInput2), input >= 1, input <= 3 {
        let columnNumber = input - 1
            columnInput = columnNumber
    } else {
        print("Invalid row Number, choose a number 1 - 3 inclusive.")
        printLine()
    }


    }

    if board[rowInput][columnInput] != "." {
        validMove = true
    } else {
        print("This square has already been taken. Please try another one.")
        printLine()
        }
        
    return [rowInput, columnInput]
}}

@main 
struct SwiftPlayground {
        static func main() {

            var totalMoves = 0
            let maxTotalMoves = 9

            var board = [
                [".", ".", "."], // Row 0.
                [".", ".", "."], // Row 1.
                [".", ".", "."] // Row 2.
            ]
            print(board: board)

        while totalMoves < maxTotalMoves {
            // Ask for the user's move.
            if totalMoves % 2 != 0 {
                let position = askPlayerMove(board: board)
                board[position[0]][position [1]] = "x"
                print(board: board)
                totalMoves += 1
            } else if totalMoves % 2 == 0 {
                let position = askPlayerMove(board: board)
            board[position[0]][position [1]] = "o"
            print(board: board)
            totalMoves += 1
            } else if totalMoves == maxTotalMoves {
                print("Game over.")
            } 

            
        }

            // // First Move : o in the middle.
            // board[1][1] = "o"
            // print(board: board)

            // // Second Move : x in top-left.
            // board[0][0] = "x"
            // print(board: board)

            // // Third Move: o in top-right.
            // board[0][2] = "o"
            // print(board: board)

            // // Fourth Move : x in bottom left.
            // board[2][0] = "x"
            // print(board: board)

            // // Fifth Move: o in middle left.
            // board[1][0] = "o"
            // print(board: board)

            // // Sixth Move: x in middle right.
            // board[1][2] = "x"
            // print(board: board)

            // // Seventh Move : o in bottom middle.
            // board[2][1] = "o"
            // print(board: board)

            // // Eighth Move : x in bottom right.
            // board[2][2] = "x"
            // print(board: board)

            // // Ninth Move : o in top middle.
            // board[0][1] = "o"
            // print(board: board)
        }
}
