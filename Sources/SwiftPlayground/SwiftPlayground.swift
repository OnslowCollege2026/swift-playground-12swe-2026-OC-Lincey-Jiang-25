// // The Swift Programming Language
// // https://docs.swift.org/swift-book

import Foundation

/// Used to break up sections.
func lineBreak() {
    print("-------------------------------------------")
}
/// Lets the owner use the menu to check different things or calculate kumara price for customer.
func customerMenu() -> Int {
    lineBreak()
    print("""
    What would you like to do today? Type in the number and press enter.

    1. Customer: Purchase Kumara (calculate cost)
    2. Owner: Add Stock
    3. Owner: View Current Stock
    4. Owner: View previous sales
    5. Owner: View summary (average weight sold per bag and the average amount earned per bag)
    6. Close program.
    """)

    while true {
        let minMenuNumber = 1
        let maxMenuNumber = 6
        if let answer = readLine(), let option = Int(answer), option >= minMenuNumber, option <= maxMenuNumber {
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
    - The minimum purchase amount is 0.1kg (100g / 1 Kumara)

    """)
}
/// Asks users how many bags they want.
/// - Parameter kumaraPurchased: total amount of kumara the user is purchasing.
/// - Returns: bags needed
func calculateBags() -> Int {
    while true {
    let minBagPurchased = 1
    print("How many bags do you want to use, $0.2 per pag? (5kg can fit in each bag.)")
    if let input = readLine(), let numberOfBags = Int(input), numberOfBags >= minBagPurchased {
        print("Bags purchased: \(numberOfBags)")
        return numberOfBags
    } else {
        print("Invalid input, it should be a whole number (Min amount = 1).")
        continue
        }
    }
}
/// Calculates the amount of money the kumara costs.
/// - Parameter kumaraPurchased: the amount of kumara the user is purchasing.
/// - Returns: the cost of the kumara.
func calculateKumaraCost(kumaraPurchased: Double) -> Double {
    let costPerKg = 3.0
    let kumaraCost = Double(kumaraPurchased * costPerKg)
    return kumaraCost
} 
/// Allows owner add Kumara to stock.
/// - Parameter currentStock: How much kumara is instock currently.
/// - Returns: The amount of kumara the owner wants to add.
func ownerAddKumara(currentStock: Double) -> Double {
    let minStock = 0.1
    let maxStock = 50.0
    let zeroValue = 0.0
    if currentStock != maxStock {
    while true {
        print("How much kumara do you want to add? (Between \(minStock)kg - \(maxStock - currentStock)kg)")
            if let input = readLine(),  let amount = Double(input), amount >= minStock, amount <= maxStock - currentStock  {
                print("You have added \(amount)kg of kumara.")
                return amount
            } else {
                print("Invalid input. Enter a value between \(minStock)kg - \(maxStock - currentStock)kg")
            }
        }
    } else {
        print("Your stock is full. You are unable to add anymore kumara. Please sell some before trying again. ")
        return zeroValue
    }
} 
/// Allows owner to calculate cost of Kumara in customer bag.
/// - Parameter currentStock: How much kumara is instock currently.
/// - Returns: The amount of kumara the customer wants to add.
func customerAddKumara(currentStock: Double) -> Double {
    lineBreak()
    let minStock = 0.1
    let nothing = 0.0
    let maxWeightPerBag = 5.0
    let numberOfBags = Double(calculateBags())
    if currentStock >= minStock {
    while true {
    print("How much kumara is in all of the customer's bags in Kg? (Should be between \(minStock)kg - \(currentStock)kg)")
            if let input = readLine(), let amount = Double(input), amount >= minStock, amount <= currentStock {
                if amount / maxWeightPerBag > numberOfBags {
                    let amountPurchasable = numberOfBags * maxWeightPerBag
                    print("You only have \(Int(numberOfBags)) bags, meaning you can only purchase \(amountPurchasable). Please come back to purchase more later.")
                    return amountPurchasable
                } else if amount / maxWeightPerBag <= numberOfBags {
                print("Customer is purchasing \(amount)kg of kumara.")
                return amount
            } else {
                print("Invalid input. Enter a value between \(minStock)kg - \(currentStock)kg")
            }
        } 
    }
    } else {
            print("Your stock is empty. Please add more before you try again.")
            return nothing
    }
}
/// Total cost of kumara and bags combined.
/// - Parameters:
///   - kumaraPurchased: how much kumara the user is purchasing.
///   - bagsNeeded: the amount of bags needed for the purchase.
/// - Returns: the combined cost of kumara and bags.
func totalCost(kumaraPurchased: Double, numberOfBags: Double) -> Double {
    lineBreak()
    let costPerBag = 0.2
    let kumaraCost = Double(calculateKumaraCost(kumaraPurchased: kumaraPurchased))
    let bagCost = Double(costPerBag * numberOfBags)
    let totalCost = Double(kumaraCost + bagCost)
    print("Number of bags: \(numberOfBags)")
    print("Bag Cost: $\(bagCost)")
    print("\(kumaraPurchased)kg kumara purchased.")
    print("Kumara cost :$\(kumaraCost)")
    print("Your total cost: $\(totalCost)")
    return totalCost
} 

@main 
struct SwiftPlayground {
    static func main() {

        // Sets up the needed shop values.
        var currentStock = 0.0
        var previousSalesWeight: [Double] = []
        var previousSaleCosts: [Double] = []
        var totalWeightSold = 0.0
        var totalCostEarnt = 0.0
        var totalBagsUsed = Double(0)


        // Sets up the option key values.
        let option1 = "1"
        let option2 = "2"
        let option3 = "3"
        let option4 = "4"
        let option5 = "5"
        let option6 = "6"

        // Greets and reminds the owner how the program runs.
        welcome()
        lineBreak()
        print("Owner: Please set up how much kumara is in stock currently.")
        let stock = ownerAddKumara(currentStock: currentStock)
        currentStock = stock
        print("CurrentStock: \(currentStock)kg")

        // Runs the app until the owner wants to stop.
        var programRunning = true

        while programRunning == true {
        // Sets up the program for the day.
        let option = String(customerMenu())

        // Customer puchases kumara.
        if option == option1 {
            let numberOfBags = Double(calculateBags())
            let numberAdded = Double(customerAddKumara(currentStock: currentStock))
            let costEarnt = totalCost(kumaraPurchased: numberAdded, numberOfBags: numberAdded)
            // Updates key variables.
            totalCostEarnt += costEarnt
            currentStock -= numberAdded
            previousSalesWeight.append(numberAdded)
            totalWeightSold += numberAdded
            totalCostEarnt += costEarnt
            previousSaleCosts.append(costEarnt)
            totalBagsUsed += numberOfBags


            // Owner add stock.
        } else if option == option2 {
            let numberAdded = ownerAddKumara(currentStock: currentStock)
            currentStock += numberAdded
            print("You now have \(currentStock)kg of kumara in stock.")
            
            // View current stock.
        } else if option == option3 {
            print("Current Stock: \(currentStock)kg")

            // View previous sales.
        } else if option == option4 {
            print("Previous Sales: \(previousSalesWeight)")
            
            // Sets up the lis variables.
            var index = 0
            let number = index + 1
            
            // Lists the sales in the order of purchase.
            while index <= number {
                for sale in previousSalesWeight {
                index += 1
                print("""
                Sale \(index) : \(sale)Kg
                """)
                }
                index += 1

            }

            // View summary.
        } else if option == option5 {
            print(totalWeightSold, totalBagsUsed, totalWeightSold/totalBagsUsed)
            print("""
            Total bags used: \(totalBagsUsed) bags
            You sold: \(totalWeightSold)kg of Kumara
            You earnt: $\(totalCostEarnt)
            The average weight per bag of kumara: \(Double(totalWeightSold / totalBagsUsed))kg
            The average cost per bag of kumara: $\(Double(totalCostEarnt / totalBagsUsed))
            """)

            // Close program.
        } else if option == option6 {
            programRunning = false
        }
        }

        // Closing message
        lineBreak()
        print("Thank you for using the Kumara shop. ")
        
    }
}