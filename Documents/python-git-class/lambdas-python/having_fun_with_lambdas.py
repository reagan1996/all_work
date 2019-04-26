def add_num(num1, num2):
    return num1 + num2

#   lambda arg1, arg2: block to run
# addition = lambda num1, num2: num1 + num2
#
# print(add_num(2, 5))
# print(addition(2, 5))

savings = [234.00, 555.00, 674.00, 78.00]

# bonus = list(map(lambda x: x * 1.1, savings))
#
# print(bonus)

bonus =[]
for account in savings:
    bonus.append(account * 1.1)

print(bonus)