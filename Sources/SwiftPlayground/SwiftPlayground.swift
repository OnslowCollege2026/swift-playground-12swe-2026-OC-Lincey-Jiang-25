// The Swift Programming Language
// https://docs.swift.org/swift-book

// Task 1.
func roomVolume() -> Double {
    return  5 * 3 * 4
}

// Task 2.
func printArea(length: Double, width: Double) {
    let area = length * width
    print("The area of the room is \(area) m²")
}

// Task 3.
func area(length: Double, width: Double) -> Double {
    return length * width
}

// Task 4.
func volume(length: Double, width: Double, height: Double) -> Double {
    return length * width * height
}

@main
struct SwiftPlayground {
    static func main(){
        // Task 1
        print("The volume of the room is", roomVolume(), "m³")

        // Task 2.
        printArea(length: 5, width: 3)

        // Task 3.
        print(area(length: 3.2, width: 4.5), "m²")

        // Task 4
        print(volume(length: 3.2, width: 4.5, height: 6), "m³")
        }

        
    }   

