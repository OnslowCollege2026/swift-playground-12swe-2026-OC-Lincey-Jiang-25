// // The Swift Programming Language
// // https://docs.swift.org/swift-book

/// Used to break up sections.
func lineBreak() {
    print("-------------------------------------------")
}

/// Lets the owner use the menu to check different things..
func ownerMenu() -> Int {
    lineBreak()
    print("""
    What would you like to do today? Type in the number and press enter.

    1. Add kumara (Kg)
    2. View Current Stock
    3. View previous sales
    4. View summary (average weight sold per bag and the average amount earned per bag)
    5. Close program.
    """)

    while true {
    if let answer = readLine(), let option = Int(answer), option >= 1, option <= 5 {
        return option
    } else {
        print("Invalid input, please try again.")
    }
}
}
/// Welcomes and informs the user what is happening.
func welcome() {
    lineBreak()
    print("Welcome to the Kumara shop.")
    print("""

    Key points to note:
    - A bag (compulsory) is 20c, bags can hold up to 5kg
    - Kumara is $3 per Kg
    - The minimum purchase amount is 100g

    """)
}
func calculateBags(kumaraPurchased: Double) -> Int{
    let maxBagWeight = 5.0
    let bagsNeeded = Int(kumaraPurchased / maxBagWeight)
    return bagsNeeded
}

/// Allows owner to add Kumara.
/// - Parameter currentStock: How much kumara is instock currently.
/// - Returns: The amount of kumara the owner wants to add.
func addKumara(currentStock: Double) -> Double {
    let minStock = 0.1
    let maxStock = 50.0
    while true {
    print("How much kumara would you like to add (Between \(minStock)kg - \(maxStock - currentStock)kg)")
            if let input = readLine(), let amount = Double(input), amount >= minStock, amount <= maxStock - currentStock {
                print("You have added \(amount)kg of kumara.")
                return amount
            } else {
                print("Invalid input. Enter a value between \(minStock)kg - \(maxStock - currentStock)kg")
            }
    }
} 


@main 
struct SwiftPlayground {
    static func main() {

        // Sets up shop values.
        var currentStock = 0.0
        let previousSales: [Double] = []
        var totalWeightSold = 0.0
        var totalBagsUsed = Double(0)
        let summary = ("The average weight sold per bag is \(totalWeightSold / totalBagsUsed)")
        let minStock = 0.1
        let maxStock = 50.0

        // Sets up the option key values.
        let option1 = "1"
        let option2 = "2"
        let option3 = "3"
        let option4 = "4"
        let option5 = "5"

        // Greets and reminds the owner how the program runs.
        welcome()
        lineBreak()
        print("Please set up how much kumara is in stock currently.")
        let stock = addKumara(currentStock: currentStock)
        currentStock = stock

        // Sets up the program for the day.
        let option = String(ownerMenu())

        // Adds kumara to stock.
        if option == option1 {
            currentStock += addKumara(currentStock: currentStock)
            print(currentStock)

            // View current stock.
        } else if option == option2 {
            print("view current stock")

            // View previous sales.
        } else if option == option3 {
            print("view previous sales")

            // View summary.
        } else if option == option4 {
            print("view summary")

            // Close program.
        } else if option == option5 {
            print("close program")
        }

        lineBreak()
        // Customer weighs their kumara (Kg)
        print("Thank you for filling up your bag.")
        print("How much does your bag weigh in Kg?")
        if let answer = readLine(), let weight = Double(answer), weight >= 0.1, weight <= currentStock {
            print("You have put \(weight)kg of kumara in your bag")
        }
    }
}