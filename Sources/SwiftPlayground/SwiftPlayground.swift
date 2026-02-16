// The Swift Programming Language
// https://docs.swift.org/swift-book

// Task 1.
func showArea() {
    let x = 5
    let y = 6
    let area = x * y
    print(area)
}



@main 
struct SwiftPlayground {
    static func main() {
        // Task 1

        var note = "hello"
        if true {
            let note = "Inside"
            print(note)
        }
    // print(note)
    showArea()
    // print(area)

    // Task 4.
    let isLarge = false
    if isLarge == false {
        let x = 5
        let y = 6
        let area = x * y
        print (area)
    } else {
        let x = 1
        let y = 2
        let area = x * y
        print (area)
    }
    // print(area)
    }

}
