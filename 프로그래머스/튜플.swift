func solution(_ s:String) -> [Int] {
    var sArr = Array(s).map{String($0)}
    sArr.removeFirst()
    sArr.removeLast()
    
    // [[Int]] 2차원 배열로 만들기 
    var newArr: [[Int]] = []
    var tempS = ""
    for char in sArr {
        if char == "{" {
            tempS = ""
        } else if char == "}" {
            let arr = tempS.split(separator: ",").compactMap{Int($0)}   // split은 배열을 return한다
            newArr.append(arr)
        } else {
            tempS += char
        }
    }
  
    // 배열의 갯수로 정렬 -> [2], [2,1]
    newArr.sort { arr1, arr2 in
        arr1.count < arr2.count
    }
    
    var tempSet: Set<Int> = []
    var finalArr: [Int] = []
    for arr in newArr {
        for value in arr {
            if !tempSet.contains(value) {
                tempSet.insert(value)
                finalArr.append(value)
            }
        }
    }

    return finalArr
}
