class Airport:
    def __init__(self, name, location):
        self.name = name
        self.location = location
        self.terminal = []

    def print_details(self):
        print("Airport name: " + self.name)
        print("Terminals:")
        i = 0
        for terminal in self.terminal:
            print(str(i) + str(terminal.number))
            i += 1