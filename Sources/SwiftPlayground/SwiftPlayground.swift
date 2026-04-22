// // The Swift Programming Language
// // https://docs.swift.org/swift-book

func lineBreak() {
    print("-------------------------------------------")
}

/// Lets the owner set up how much kumara is in stock today.
func ownerMenu() -> Int {
    print("""
    What would you like to do today? Type in the number and press enter.

    1. Add kumara (Kg)
    2. View Current Stock
    3. View previous sales
    4. View summary (average weight sold per bag and the average amount earned per bag)
    5. Close program.
    """)

    guard let answer = readLine(), let option = Int(answer), option >= 1, option <= 5 else {
        print("Invalid input, please try again.")
        return 0
    } 
    return option
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

@main 
struct SwiftPlayground {
    static func main() {

        // // Sets up the option key values.
        let option1 = 1
        let option2 = 2
        let option3 = 3
        let option4 = 4
        let option5 = 5

        // Sets up the program for the day.
        if ownerMenu() == option1 {
            print("add kumara")
        } else if ownerMenu() == option2 {
            print("view current stock")
        } else if ownerMenu() == option3 {
            print("view previous sales")
        } else if ownerMenu() == option4 {
            print("view summary")
        } else if ownerMenu() == option5 {
            print("close program")
        }
        
        // Greets and reminds the owner how the program runs.
        welcome()
        
        let maxStock = 50.0
        let minStock = 0.1
        let currentStock = 0.0

        // Customer weighs their kumara (Kg)
        print("Thank you for filling up your bag.")
        print("How much does your bag weigh in Kg?")
        if let answer = readLine(), let weight = Double(answer), weight >= 0.1, weight <= currentStock {
            print("You have put \(weight)kg of kumara in your bag")
        }
    }
}