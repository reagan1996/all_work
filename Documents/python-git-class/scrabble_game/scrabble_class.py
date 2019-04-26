class Scrabble:

    letter_score = {"a":1, "e":1, "i":1, "o":1, "u":1, "l":1, "n":1, "r":1, "s":1, "t":1,
                    "d":2, "g":2,
                    "b":3, "c":3, "m":3, "p":3,
                    "f":4, "h":4, "v":4, "w":4, "y":4,
                    "k":5,
                    "j":8, "x":8,
                    "q":10, "z":10}

    def letter_value(self, letter):
        return self.letter_score[letter.lower()]



    def word_score(self, word):
        word_count = 0
        if word.isalpha():
            for letter in word:
                word_count += self.letter_value(letter)
            return word + " has a scrabble score of: " + str(word_count)
        else:
            return word + " is an invalid word, so word score is: " + str(word_count)



if __name__ == '__main__':
    scrabble_test_instance = Scrabble()

    test_result_one = type(scrabble_test_instance.word_score("Eimantas")) == str
    print(test_result_one)

    test_result_two = scrabble_test_instance.word_score("Eimantas") == "Eimantas has a scrabble score of: 10"
    print(test_result_two)

    test_result_three = scrabble_test_instance.word_score("123") == "123 is an invalid word, so word score is: 0"
    print(test_result_three)









