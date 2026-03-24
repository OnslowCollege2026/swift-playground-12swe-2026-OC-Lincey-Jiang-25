// The Swift Programming Language
// https://docs.swift.org/swift-book


@main
struct SwiftPlayground {
    static func main(){
        // Constants and variables.

        // Each inner array contains the english word, the correct anser, and then 3 incorrect answers
        let vocabulary = [
            ["Hello", "Hallo", "Holla", "Helo", "bonjour"],
            ["Goodbye", "Auf Wiedersehen", "" ],
            ["Yes", "Ja", "Ya", "Lampe", "Dunkel" ],
            ["No", "Nein", "Nah", "Tag", "Katze"],
            ["Good Evening", "Guten Abend", "Guten Tag", "Guten Morgen", "Hund" ]
        ]

        // The indices of the questions that the user got wrong.
        var incorrectIndices: [Int] = []

        /// The number of questions that the user got wrong first time around.
        var incorrectCount = 0

        // The number of questions that the user got right.
        var correctIndicies: [Int] = []

        /// The number of questions that the user got right first time around.
            var count = 0

        // Loop until all of the vocabulary questions have been asked.
        // while count < vocabulary.count {

        // Show the question.
        for array in vocabulary {
            print("What is the correct German word for \(array[0])")
        
            // Present the possible answers.
            let random1 = Int.random(in: 1...4)
            var random2 = Int.random(in: 1...4)
            while random2 == random1 {
                random2 = Int.random(in: 1...4)
            }
            var random3 = Int.random(in: 1...4)
            while random3 == random1 || random3 == random2 {
                random3 = Int.random(in: 1...4)  
            }
            var random4 = Int.random(in: 1...4)
            while random4 == random1 || random4 == random2 || random4 == random3 {
                random4 = Int.random(in: 1...4) 

            print(random1, random2, random3, random4)

            let option1: Int = random1
            let option2: Int = random2
            let option3: Int = random3
            let option4: Int = random4
            
                print("""
                1: \(array[option1])
                2: \(array[option2])
                3: \(array[option3])
                4: \(array[option4])
                """)
            // Check if the user guessed the correct answers.

            // If not, make a note of the questions to ask again later.

            }
    }
        }  

}