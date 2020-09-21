# 시간 세기
# for문의 반복

n = 5
count = 0

for hour in range(n+1):
    for min in range(60):
        for second in range(60):
            if "3" in str(hour)+str(min)+str(second):
                count += 1

print(count)

# continue  VS  break
## continue : 해당 반복문 안에 있는 다음 로직을 pass 하고 다음 반복을 실행해라
## break : 해당 반복문을 끝내라