from app_lib.budget_file_reader import BudgetFileReader

class LifeExpectancyReader(BudgetFileReader):
    def __init__(self, file_name):
        super().__init__(file_name)
        self.data = self.create_list_of_cell_data()

    def print_entry(self, entry):
            print("Name: ", entry["Name"], ", Rank: ", entry["Rank"], ", Life Expectancy: ", entry["Life Expectancy"])

    def print_top_10_countries(self):
        for entry in self.data:
            if entry["Rank"] <= 10:
                self.print_entry(entry)



    def print_bottom_10_countries(self):
        for entry in self.data:
            if entry["Rank"] >= len(self.data)-9:
                self.print_entry(entry)


    def average_life_expectancy(self):
        total_life_expectancy = 0
        for entry in self.data:
            total_life_expectancy += entry["Life Expectancy"]
        return total_life_expectancy/ len(self.data)


    def country_and_life_expectancy(self, rank):
        for entry in self.data:
            if entry["Rank"] == rank:
                self.print_entry(entry)


# def country_and_life_expectancy1(rank):
# # # # #     print(data[rank-1]["Name"] + ", " + str(data[rank-1]["Life Expectancy"]))
# # # # #
# # # # # country_and_life_expectancy1(157)

reader = LifeExpectancyReader("life_expectancy_2014.xlsx")
reader.print_top_10_countries()
print("------------------")
reader.print_bottom_10_countries()
print("------------------")
print(reader.average_life_expectancy())
print("------------------")
reader.country_and_life_expectancy(10)