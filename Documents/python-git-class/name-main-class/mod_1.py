print("This is the variable __name__ in mod_1 ->", __name__)

def amazing_sum(number1, number2):
    print(int(number1) + int(number2))

def demo_amazing_sum():
    print('Welcome to the amazing sum demo!')
    number1  = int(input("What is your first number? "))
    number2 = int(input("What is your second number? "))
    print(number1 + number2)

# if __name__ == __main__ this means that the file is being run directly
if __name__ == '__main__':
    demo_amazing_sum()