// The Swift Programming Language
// https://docs.swift.org/swift-book

/// Calculates the total of chosen column.
/// - Parameter table: numbers in 2D arrays.
/// Returns the total of the chosen column.
func columnTotal(in table: [[Int]]) {
    var running = true

    while running == true {
        print("Which column do you want to total? (1 - 5 inclusive)")
        print("Press '5' to exit program")
        if let input = readLine(), let answer = Int(input), answer <= 5, answer >= 1 {

            var sum = 0

            // Calculates the column total.
            for row in table {
                if row.count >= answer {
                    sum += row[answer - 1]
                } 
            }
            print(sum)
            
            // Returns the sum to 0 for further calculations.
            sum = 0

            // Ends the program.    
            if answer == 5 {
                running = false
                print("Thank you for using the totalling program.")
            }
        }
    }
}

@main 
struct SwiftPlayground {
    static func main() {

        // Task A.
        let tempuratures: [[Int]] = [
            [0, 3, 6, 9],
            [12, 15, 18, 21],
            [24, 27, 30, 33]
        ]
        print(tempuratures[0]) // Prints entire first row.
        print(tempuratures[1][2]) // The value in row 2, column 3.
        print(tempuratures[2][0]) // The value in row 3, column 1.
        print(tempuratures[1].reduce(0, +) / tempuratures[1].count ) // The average temperature of row 2 (Int).

        print("......................................")

        // Task B.
        let table = [
        [2, 4, 6],
        [8, 10, 12],
        [14, 16, 18]
        ]

        var count = 0
        for row in table {
            for value in row {
                print(value)
                count += 1
            }
        }
        print(count)

        print("......................................")

        // Task C.
        let unevenTable = [
            [3, 5, 7, 9],
            [2, 4],
            [8, 6, 1],
            [10]
        ]        

        columnTotal(in:unevenTable)
    }
}
