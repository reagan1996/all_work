# Create a class for a Scrabble object
# take in a string

from scrabble_class import Scrabble

def play_scrabble():
    print("Welcome to this game of Scrabble.")
    print("Lets start playing")
    print("------------------------------------")
    scrabble_game = Scrabble()

    keep_going = True

    while keep_going:

        your_word = input("What word would you like to check?(type --quit to quit game) ")
        if your_word == "--quit":
            print("------------------------------------")
            print("Thank you for playing")
            keep_going = False
        else:
            print(scrabble_game.word_score(your_word))
            print(" Let's keep going")
            print("------------------------------------")

play_scrabble()




# Refractoring code

# have a router (keep allowing inputs, unitl they decide to stop)
    # until input == 'some-word007'

# if you run the file directly - user __main__ & __name__ to start the game

# unit test
    # set up
    # the calling of the unit
    # evaluating if the unit == value