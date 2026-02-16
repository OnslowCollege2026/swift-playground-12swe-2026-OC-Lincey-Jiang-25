// The Swift Programming Language
// https://docs.swift.org/swift-book

// Task 1.
/// Calculates the area of the room.
///    - Parameters:
///      length: The length of the room in meters.
///        width: The width of the room in meters.
///    - Returns: The area of the room in square meters.

func roomArea(length: Double, width: Double) -> Double {
    return length * width
}

// Task 2.
///Calculates the volume of the room.
///     - Parameters:
///        length: The length of the room in meters.
///        width: The width of the room in meters.
///        height: The height of the room in meters.
///    - Returns: The volume of the room in cubic meters.

func roomVolume(length: Double, width: Double, height: Double) -> Double {
    return length * width * height
}

// Task 3.
///Checks if the room is small.
/// - Parameter volume: the volume of the room in cubic meters.
/// - Returns: True if the room volume is less than 60 cubic meters.

func isRoomSmall(volume: Double) -> Bool {
    return volume < 60
}

// Task 4.
/// Calculates the new height.
/// - Parameters:
///     original: The original height of the room in meters.
///     reductionPercent: The pecentage the height is shrinking.
/// - Returns: The new and reduced height of the room in meters.


func reducedHeight(original: Double, reductionPercent: Double) -> Double {
    let multiplier = (100.0 - reductionPercent) / 100.0
    return original * multiplier
}

@main
struct SwiftPlayground {
    static func main(){
    }   
}
