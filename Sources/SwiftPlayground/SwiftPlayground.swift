// The Swift Programming Language
// https://docs.swift.org/swift-book

func readNumber(prompt: String) -> Double {
print(prompt)
        var returnValue = -1.0
        guard let inputLength = readLine(), let number = Double(inputLength), number > 0 else {
            print("Invalid Number")
            return readNumber(prompt: prompt)
        }
        returnValue = number
        return returnValue
}

@main
struct SwiftPlayground {
    static func main(){
        // Lists the individual volumes of furniture.
        let furnitureVolumes = [1.2, 0.8, 2.5, 0.6, 1.0]

        // Sets a maximum volume for a singular piece of furniture.
        let maxFurnitureVolume = 2.0

        // Stores the volume of all the furniture that meets the volume requirement. 
        var totalFurnitureVolume: [Double] = []

        // Stores the volume of the room.
        var totalRoomVolume: [Double] = []

        // Part 8
        var height = -1.0
        let minimumHeight = 1.0
        
        // Part 1 (Room dimensions).
        // Gets the length of the room from the user.
        let roomLength = readNumber(prompt: "Enter the room Length: ")

        // Gets the width of the room from the user.
        print("Enter room width")
        guard let inputWidth = readLine(), let roomWidth = Double(inputWidth)  else { 
            print("Invalid number")
        }
            

                // Gets the height of the room from the user.
            print("Enter room height") 
        guard let inputHeight = readLine(), let roomWidth = Double(inputHeight)  else { 
            print("Invalid number")
        }
                // Part 2 (Room area).
                let area = roomLength * roomWidth
                print("The area of this room is\(area) m²")
                // Part 4 (Room Volume).
                let roomVolume = roomLength * roomWidth * roomHeight
                print("The volume of the room is \(roomVolume)")
                totalRoomVolume.append(roomVolume)
            
            
            
            // Lists each piece of furnitures volume.
            for (index, furnitureVolume) in furnitureVolumes.enumerated() {

                // Makes sure that the piece of furniture meets the Max Volume requirements.
                if furnitureVolume < maxFurnitureVolume {
                    print("Item \(index + 1): \(furnitureVolume)m³")
                    totalFurnitureVolume.append(furnitureVolume)
                } else {
                    // Lets the user know if a piece of furniture is above the maximum volume limit.
                    print("Item \(index + 1): Oversized item detected.")
                }
                }

            let furniture = Double(totalFurnitureVolume.reduce(0, +))
            let room = Double(totalRoomVolume.reduce(0, +))
            let usableVolume = room - furniture
            print("Total room area \(area) m²")
            print("Total room Volume: \(roomVolume)m³")
            print("Total usable volume: \(usableVolume)m³.")
            
        }}
            
        

