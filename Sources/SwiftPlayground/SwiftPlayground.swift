// The Swift Programming Language
// https://docs.swift.org/swift-book 



@main
struct SwiftPlayground {
    static func main() {
        // Constants and variables.

        // Each inner array contains the english word, the correct anser, and then 3 incorrect answers
        let vocabulary: [[String]] = [
            ["Hello", "Hallo", "Holla", "Helo", "bonjour"],
            ["Goodbye", "Auf Wiedersehen", "Hause", "Danke", "vier" ],
            ["Yes", "Ja", "Ya", "Lampe", "Dunkel" ],
            ["No", "Nein", "Nah", "Tag", "Katze"],
            ["Good Evening", "Guten Abend", "Guten Tag", "Guten Morgen", "Hund" ]
        ]

        var counter = 0
        var score = 0
        var incorrectAnswerIndices: [Int] = []

        while counter < vocabulary.count {
            let englishWord = vocabulary[counter][0]
            let correctWord = vocabulary[counter][1]
            let allAnswers = vocabulary[counter].dropFirst().shuffled()

            print("Please translate \(englishWord)")
            allAnswers.forEach { answer in
                print("- \(answer)")
            }

            if let userInput = readLine(), userInput.lowercased() == correctWord.lowercased() {
                score = score + 1
                print("Yes, \(correctWord) is correct!")
            } else {
                incorrectAnswerIndices.append(counter)
                print("Sorry! The correct answer is \(correctWord)")
            }

            counter = counter + 1
        }

        if incorrectAnswerIndices.count > 0 {
            let index = incorrectAnswerIndices[0]

            let englishWord = vocabulary[index][0]
            let correctWord = vocabulary[index][1]
            let allAnswers = vocabulary[index].dropFirst().shuffled()

            print("Please translate \(englishWord)")
            allAnswers.forEach { answer in
                print("- \(answer)")
        }

        if let userInput = readLine(), userInput.lowercased() == correctWord.lowercased() {
                incorrectAnswerIndices.removeFirst()
                print("Yes, \(correctWord) is correct!")
            } else {
                incorrectAnswerIndices.append(counter)
                print("Sorry! The correct answer is \(correctWord)")
            }  
        }
        print("You have a score of \(score)/\(vocabulary.count)")
        if Double(score) >= Double(vocabulary.count / 2) {
            print("congratulations")
        } else {
            print("Try again next time")
        }
    }
}