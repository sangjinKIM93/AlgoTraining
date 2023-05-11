func solution(_ n:Int) -> [Int] {
    func makeArr() -> [[Int]] {
        var arr: [[Int]] = []
        for i in 1...n {
            let innerArr = Array(repeating: 0, count: i)
            arr.append(innerArr)
        }
        return arr
    }
    
    func getDirection(current: (Int, Int)) -> (Int, Int) {
        if current == (1, 0) {
            return (0, 1)
        } else if current == (0, 1) {
            return (-1, -1)
        } else {
            return (1,0)
        }
    }

    var doubleArr = makeArr()
    var currentIndex = (0,0)
    var direction = (1,0)
    var curveDivider = n
    var addValue = n-1
    
    let maxLength = [Int](1...n).reduce(0) { $0 + $1 }
    
    for i in 1...maxLength {
        doubleArr[currentIndex.0][currentIndex.1] = i
        
        // 커브 구간이면 방향 변경
        if i == curveDivider {
            direction = getDirection(current: direction)
            curveDivider += addValue
            addValue -= 1
        }
        
        // 방향을 기준으로 index 변경
        currentIndex = (currentIndex.0 + direction.0, currentIndex.1 + direction.1)
    }

    return doubleArr.flatMap { $0 }
}

// 다른 사람 풀이에서 배운 것
// flatMap 쓰기: doubleArr.reduce([]) {$0 + $1}  ->  doubleArr.flatMap { $0 }
