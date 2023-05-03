func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var result: [Int] = []
    
    if yellow == 1 {
        return [3,3]
    } 
    let mid = Int(yellow/2)    
    
    for height in 1...mid where yellow.isMultiple(of: height) {
        let width = Int(yellow/height)
        let totalArea = (width + 2)*(height + 2) 
        let newBrown = totalArea - yellow
            
        if brown == newBrown {
            return [width + 2, height + 2]
        }
    }
    
    return result
}
