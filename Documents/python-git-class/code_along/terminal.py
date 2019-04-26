class Terminal:
    def __init__(self, number):
        self.number = number
        self.flights = []

    def print_details(self):
        print("-----------------------------")
        print("Terminal number " + str(self.number))
        print("Flights: ")
        i = 0
        for flight in self.flights:
            print(str(i) + ". Flight to " + flight.destination)
            i += 1