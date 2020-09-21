input_data = input()
row = int(input_data[1])
col = int(ord(input_data[0]))-int(ord('a'))+1

list = [(-2, 1), (-2, -1), (2, 1), (2, -1), (1, -2), (-1, -2), (1, 2), (-1, 2)]

count = 0
for i in list:
    # 튜플 계산해서 둘 다 0보다 크다면 
    x = i[0]+row
    y = i[1]+col
    if x > 0 and y > 0 and x < 9 and y < 9:
        count += 1

print(count)