https://school.programmers.co.kr/learn/courses/30/lessons/84512

## 포인트
1. DFS를 활용해서 순서 계산 가능 (머니 슬롯처럼 아랫자리부터 하나씩 올라와서 윗자리를 바꾸는 방식일때 DFS 적용가능할듯)
2. DFS 이전에도 For문 도는게 있으니 Bool을 리턴해주는 DFS 형태로 구성

var ans = 0
func dfs(string: String) -> Bool {
    ans += 1
    
    if string == str {
        return true
    }
    
    // count가 5일때, 끝내줘야하니 
    if string.count == 5 {
        return false
    }
    
    for alpha in alphabets {
        // DFS는 깊이 우선이니까 순서대로 실행된다.
        if dfs(string: string + alpha) == true {
            return true
        }
    }
    return false
}

// 첫글자 AEIOU 순서대로 DFS 돌린다.
for alpha in alphabets {
    if dfs(string: alpha) == true {
        print(ans)
        break
    }
}
