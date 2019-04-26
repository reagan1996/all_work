from reptile import Reptile
from animal import Animal

class Snake(Reptile):
    def __init__(self):
        super().__init__()
        self.forked_tongue = True
        self.venom = None
        self.limbs = False


anaconda = Snake()
print(anaconda.forked_tongue)

anaconda.eat()