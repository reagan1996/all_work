from animal import Animal

class Reptile(Animal):
    def __init__(self):
        super().__init__()
        self.cold_blooded = True
        self.amniotic_eggs = None

    def seek_heat(self):
        print("baby it's cold outside")



snake = Reptile()

# snake.breathe()
# snake.seek_heat()





