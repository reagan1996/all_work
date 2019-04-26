from app_lib.budget_excel_generator import BudgetExcelGenerator

class BudgetItems(BudgetExcelGenerator):

    def __init__(self):
        self.budget_items = {}

    def add_budget_item(self, item, value):
        self.budget_items[item] = value

    def return_budget_item_value(self, key):
        return self.budget_items[key]

    def delete_budget_item(self, item):
        del self.budget_items[item]

    def print_budget_items(self):
        print(self.budget_items)

    def save_budget_items(self, file_name="default"):
        self.create_budget_list(self.budget_items)
        self.save_file_as(file_name)


dict1 = {"player": 1,
         "computer": 5}

print(dict1.get(5))