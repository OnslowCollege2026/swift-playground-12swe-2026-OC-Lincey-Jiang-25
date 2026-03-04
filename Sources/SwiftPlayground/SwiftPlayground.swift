// The Swift Programming Language
// https://docs.swift.org/swift-book

/// Calculates the total of chosen column.
/// - Parameter table: numbers in 2D arrays.
/// - Returns the total of the chosen column.
func columnTotal(in table: [[Int]]) {
    var running = true

    while running == true {
        print("----------------------------------------------------")
        print(table[0])
        print(table[1])
        print(table[2])
        print("Which column do you want to total? (1 - 4 inclusive)")
        print("Press '5' to exit program")
        if let input = readLine(), let answer = Int(input), answer <= 5, answer >= 1 {

            var sum = 0

            if answer != 5 {

            // Calculates the column total.
            for row in table {
                if row.count >= answer{
                    sum += row[answer - 1]
                } 
            }
            print("The sum of column \(answer) is \(sum)")
            }
            
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
/// Finds the max value in the 2D array and prints it.
/// - Parameter array: the 2D array that stores Double values.
/// - Returns the largest value.
func maxValue(in array: [[Double]]) {
    var number = array[0][0]

    // The array can't be empty? 'if number == nil' will always return false.
    // if number == nil {
    //     print("You don't have any values in the sample.")
    // }

        for rows in array {
            for value in rows {
                if value > number {
                    number = value
                }
            }
        }
        print("Your largest value is \(number)")
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

        // Prints entire first row.
        print(tempuratures[0])

        // Prints the value in row 2, column 3. 
        print(tempuratures[1][2]) 

        // prints the value in row 3, column 1.
        print(tempuratures[2][0]) 

        // The average temperature of row 2 (Int).
        print(tempuratures[1].reduce(0, +) / tempuratures[1].count ) 

        // Break.
        print("......................................")


        // Task B.
        let table = [
        [2, 4, 6],
        [8, 10, 12],
        [14, 16, 18]
        ]

        var count = 0

        // Counts how many values in the table.
        for row in table {
            for value in row {
                print(value)
                count += 1
            }
        }
        print(count)


        // Break.
        print("......................................")


        // Task C.
        let unevenTable = [
            [3, 5, 7, 9],
            [2, 4],
            [8, 6, 1],
            [10]
        ]        

        // Calls the function that calculates the total of a column.
        columnTotal(in:unevenTable)

        // Break.
        print("......................................")

        
        // Task D.
        let readings = [
        [1.5, 3.2, 2.8],
        [7.1],
        [4.4, 6.0],
        [5.9, 8.3, 0.7, 2.2]
        ]

        // Calls the maxValue function to find the highest value.
        maxValue(in: readings)

    }
}

