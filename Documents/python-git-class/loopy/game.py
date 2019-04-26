from random import *

class Game:
    def __init__(self):
        self.moves = ["rock", "paper", "scissors"]
        self.score = {
            "player": 0,
            "computer": 0
        }
        self.start()

    def start(self):
        while self.score["player"] != 5 and self.score["computer"] != 5:
            self.player_move = self.get_player_move()
            self.computer_move = self.get_computer_move()
            self.win_logic()
            print(self.score)
        if self.score["player"] > self.score["computer"]:
            self.winner = "player"


        else:
            self.winner = "computer"
        print("\nThe winner is the " + self.winner)


    def get_player_move(self):
        print("Please choose one of the following:")
        i = 0
        for move in self.moves:
            print(str(i) + ": " + move)
            i += 1
        player_choice = input()

        return self.moves[player_choice]

    def get_computer_move(self):
        return self.moves[randint(0, 2)]

    def win_logic(self):
        if self.player_move == "rock" and self.computer_move == "scissors":
            self.score["player"] += 1
        elif self.player_move == "rock" and self.computer_move == "paper":
            self.score["computer"] += 1
        elif self.player_move == "paper" and self.computer_move == "rock":
            self.score["player"] += 1
        elif self.player_move == "paper" and self.computer_move == "scissors":
            self.score["computer"] += 1
        elif self.player_move == "scissors" and self.computer_move == "paper":
            self.score["player"] += 1
        elif self.player_move == "scissors" and self.computer_move == "rock":
            self.score["computer"] += 1


