from scrabble_class import *

scrabble = Scrabble()

def test_letter_value():
    assert scrabble.letter_value("a") == 1

def test_world_score():
    assert scrabble.word_score("reagan") == "reagan has a scrabble score of: 7"

def test_word_socre_with_invalid_word():
    assert scrabble.word_score("123") == "123 is an invalid word, so word score is: 0"