n = int(input())
data = input().split()

# 경계 밖으로 이동할 수느 없다.
# L R U D 에 따라 이동한다.

x = 1
y = 1

for key in data:
    if key == "L" and y > 1 :
        y -= 1
    if key == "R" and y < n :
        y += 1
    if key == "U" and x > 1 :
        x -= 1
    if key == "D" and x < n :
        x += 1

print(x, y)