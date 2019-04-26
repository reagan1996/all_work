class Animal:
    def __init__(self, alive = True, spine = True, eyes = True, lungs = True):
        self.alive = alive
        self.spine = spine
        self.eyes = eyes
        self.lungs = lungs

    def breathe(self):
        print("Iiiin.... and outttt.")

    def eat(self):
        print("nomnomnomnom")

    def procreate(self):
        print("time to find a mate")

    def move(self):
        print("onwards and upward")


cat = Animal()

