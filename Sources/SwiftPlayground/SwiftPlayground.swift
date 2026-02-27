// The Swift Programming Language
// https://docs.swift.org/swift-book

/// Prints the menuchoice.
/// Returns the options they can choose from.
func menuChoice() {
    print("""
    __________________________

    1. Add eggs
    2. Sell eggs
    3. Show current stock
    4. Show total eggs sold
    5. Exit
    Choose an option:
    __________________________
    """)
}
/// Adds Eggs into the inventory.
/// - Parameter currentStock: The number of eggs currently in the inventory.
/// - Returns: The number of eggs in inventory after adding more eggs.
func addEggs(currentStock: Int) -> Int {  
    let minAmount = 0
    let maxAmount = 1000
    print("How many eggs do you want to add? (Enter a number 1 - 1000 inclusive.)")
    if let input = readLine(), let amount = Int(input), amount >= minAmount, amount <= maxAmount {
    let newStockTotal = currentStock + amount
    print("Your current stock is now \(newStockTotal) eggs")
    return newStockTotal
    } else {
        print("Invalid input, please try again.")
        return currentStock
    }
}
/// Sells eggs and removes it from the inventory
/// - Parameter currentStock: The number of eggs currently in the inventory.
/// - Returns: The number of eggs in the inventory after selling some.
func sellEggs(currentStock: Int) -> Int {
        let minAmount = 1
        let maxAmount = currentStock
        if currentStock > minAmount {
                    print("How many eggs do you want to sell?")
            print("(Enter a number 1 - \(currentStock) inclusive.)")
            if let input = readLine(), let amount = Int(input), amount >= minAmount, amount <= maxAmount {
            let newStockTotal = currentStock - amount
            print("Your current stock is now \(newStockTotal) eggs")
            return newStockTotal
            } else {
            print("Invalid input, please try again.")
            return currentStock
        }
    } else if currentStock == minAmount {
        print("You only have one egg, press '1' to sell it, press '2' to go back to the menu.")
        if let input = readLine(), let userInput = Int(input), userInput >= 1, userInput <= 2 {
            if userInput == 1 {
                let newStockTotal = 0
                return newStockTotal
            } else if userInput == 2 {
                return currentStock
            } else {
                print("Invalid input, please try again.")
                return currentStock
            }
        }
    } else if currentStock < minAmount {
        print("You do not have any eggs left. Please add more eggs.")
        return currentStock
    }
return currentStock
}
/// Shows current stock
/// - Parameter currentStock: The number of eggs currently in the inventory.
/// - Returns: The current stock.
func showCurrentStock(stock: Int) {
    print("You have \(stock) eggs in total.")
}
/// Sums up total sales
/// - Parameter currentSold: The number of eggs currently sold.
/// - Returns: The number of eggs sold.
func totalSales(currentSold: Int) {
    print("You have sold \(currentSold) eggs in total.")
}
/// Ends program
/// - Returns: Goodbye message.
func exitProgram() {
    print("Thank you for using the Egg Shop App")
}


@main 
struct SwiftPlayground {
    static func main() {

        // Sets the shop details.
        var currentStock = 0
        var eggsSold = 0
        var appIsRunning = true

    // Lists the menu options and their corresponding number in a variable.
        let optionOne = 1
        let optionTwo = 2
        let optionThree = 3
        let optionFour = 4
        let optionFive = 5

        print("Welcome to the Egg shop App.")

        // Carries out the user's menu choice until they decide to stop the app. 
        while appIsRunning == true {
            menuChoice()
            if let input = readLine(), let menuNumber = Int(input), menuNumber >= 1, menuNumber <= 5 {

                if menuNumber == optionOne {

                    // Allows the user to add eggs to their inventory. Tells the user their new 'current stock'.
                    currentStock = addEggs(currentStock: currentStock )

                } else if menuNumber == optionTwo {

                    // Allows the user to sell eggs. Tells the user their new 'current stock'
                    eggsSold = sellEggs(currentStock: currentStock)

                } else if menuNumber == optionThree {

                    // Lets the user see their current stock.
                    showCurrentStock(stock: currentStock)

                } else if menuNumber == optionFour {

                    // Shows the user how many eggs they sold.
                    totalSales(currentSold: eggsSold)

                } else if menuNumber == optionFive {
                    // Gives the user a summary of their egg transactions.
                    print("""
                    You sold \(eggsSold) eggs
                    Your current stock is \(currentStock)
                    """)

                    // Thanks the user for using the app.
                    exitProgram()

                    // Stops running the app.
                    appIsRunning = false
                }

            // Runs if the user enters an incorrect menu number.
            } else {

                // Error message for the user.
                print("Invalid input, enter a number between 1 and 5 inclusive.")
            } 
        }
    }
} 