// The Swift Programming Language
// https://docs.swift.org/swift-book
func printRoomIntro() {
    print("This program calculates room area and volume.")
    print("It also finds the usable space after furniture.")
}

func printDivider() {
    print("--------")
}

func printUnitsNote() {
    print("All measurements are in metres.")
}

func printGoodbye() {
    print("Done. Thanks for using the calculator.")
}


@main
struct SwiftPlayground {
    static func main(){
    
    // Lets the user know what the program does.
    printRoomIntro()

    // Reminds the user that this program uses meters.
    printUnitsNote()
    print("Calculations")

    // Separates the summary section from the other sections.
    printDivider()
    print("Summary here")
    printDivider()

    // Farewells the user.
    printGoodbye()
        }
    }
        

