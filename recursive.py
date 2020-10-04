# def factorial(n):
#     if n <= 1:
#         return 1
#     return n * factorial(n-1)

# print(factorial(5))


def gcd(a, b):
    if a % b == 0:
        return b
    a1 = b
    b1 = a % b
    return gcd(a1, b1)


a = 192
b = 162
print(gcd(a,b))
