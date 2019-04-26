from passenger import Passenger
from flight import  Flight
from terminal import Terminal

# Test Data
test_terminal = Terminal(1)
test_flight_1 = Flight("Chennai", "2pm", test_terminal)
test_flight_2 = Flight("Dubai", "5pm", test_terminal)
test_terminal.flights.append(test_flight_1)
test_terminal.flights.append(test_flight_2)
test_passenger_1 = Passenger("Reagan Prince", "1234", "British")
test_passenger_2 = Passenger("Mariam Aslam", "5678", "British")
test_flight_1.add_passenger(test_passenger_1)
test_flight_2.add_passenger(test_passenger_2)

def create_passenger():
    passenger_name = input("This terminal allows you to book a flight for a passenger. Please enter the passenger name. ")
    passenger_passport_number = input("What is there passport number? ")
    passenger_nationality = input("What is their nationality? ")
    return Passenger(passenger_name, passenger_passport_number, passenger_nationality)


def book_flight(terminal, passenger):
    terminal.print_details()
    flight_number = int(input("please input the number of the flight that the passenger should be added to "))
    flight = terminal.flights[flight_number]
    flight.add_passenger(passenger)




# 1. create menu
    # - Welcome message

print("Welcome") # change later
option_list = ["Book a flight for a passenger", "See all passengers on a flight"]

i = 0
for option in option_list:
    print(str(i) + ". " + option)
    i =+ 1

option_choice = input("Which option would you like to choose? ")

if option_choice == "0":
    book_flight(test_terminal, create_passenger())
elif option_choice == "1":
    test_terminal.print_details()
    flight_choice = int(input("Which flight would you like to choose? "))
    flight = test_terminal.flights[flight_choice]
    flight.print_details()

    # see all flight
    # select a flight
    # see passengers on flight


