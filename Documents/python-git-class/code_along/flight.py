class Flight:
    def __init__(self, destination, departure_time, terminal):
        self.destination = destination
        self.departure_time = departure_time
        self.terminal = terminal
        self.passengers = []

    def add_passenger(self, passenger):
        self.passengers.append(passenger)

    def print_details(self):
        print("Flight Destination: " + self.destination)
        print("Passengers:")
        i = 0
        for passenger in self.passengers:
            print(str(i) + ". Passenger name: " + passenger.name)
            i += 1

