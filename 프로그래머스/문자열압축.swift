func solution(_ s:String) -> Int {
    var min: Int = 1001
    
    let arrS = Array(s).map{String($0)}
    
    // Tip: mid를 쓸때는 0이 되는 경우를 예외처리 하자
    var mid: Int
    if arrS.count == 1{
        mid = 1
    } else {
        mid = Int(arrS.count/2)    
    }
    
    for step in 1...mid {
        var prevWord: [String] = Array(arrS[index..<index+step])
        var count = 1
        var tempResult = ""
        
        for index in stride(from: step, to: arrS.count-step+1, by: step) {
            let currentWord = Array(arrS[index..<index+step])
            
            if prevWord == currentWord { // 같으면 count 붙이고 다음 word도 같은지 확인
                count += 1
            } else { // 다르면 이전 prev붙이기
                if count != 1 {
                    tempResult += "\(count)"
                }
                tempResult += prevWord.joined()
                
                // current 를 prev로
                prevWord = currentWord
                count = 1
            }
        }
        // 마지막에 처리 안 된 prev처리
        if count != 1 {
            tempResult += "\(count)"
        }
        tempResult += prevWord.joined()

        // step으로 딱 막게 나눠지지 않는 경우 나머지 string 붙여주기 : aab, bac, cc(<-요거)
        if arrS.count % step != 0 {
            let remain = arrS.count % step
            let remainWord = Array(arrS[arrS.count - remain..<arrS.count])
            tempResult += remainWord.joined()
        }
        
        if min > tempResult.count {
            min = tempResult.count
        }
    }
    
    return min
}
