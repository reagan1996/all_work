# try:
#     file = open("order.txt")
# except FileNotFoundError as error_message:
#     print("There has been an error! Panic")
#     print(error_message)
#     raise FileNotFoundError("Wow!")

def open_and_print(file_name):
    try:
        with open(file_name) as file:
            file_line_list = file.readlines()

            for line in file_line_list:
                print(line.rstrip('\n'))

            file.close()

    except FileNotFoundError as error_message:
        print("something went wrong")
        print(error_message)
        raise

    finally:
        print("\nWhatever happened, happened. \n")

def write_to_file(file_name, order_item):
    try:
        with open(file_name, "a") as file:
            file.write(order_item + "\n")

    except FileNotFoundError:
        print("where is it")
        raise



open_and_print("orders.txt")
write_to_file("orders.txt", "Excellent Burrito")
open_and_print("orders.txt")

class FileReader:
    def __init__(self):
        print("make class")

    def open_and_print_file(self, file_name):
        file = open(file_name)
        file_lines = file.readlines()
        for line in file_lines:
            print(line.rstrip("\n"))
