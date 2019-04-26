from openpyxl import Workbook

class BudgetExcelGenerator:

    def __init__(self):
        self.workbook = Workbook()
        self.worksheet1 = self.workbook.active
        self.worksheet1["A1"] = "Item"
        self.worksheet1["B1"] = "Value"

    def add_values_to_cell(self, cell, value):
        self.worksheet1[cell] = value

    def create_budget_list(self, budget_item_dict):
        row_number = 2

        for item_key in budget_item_dict:
            value = budget_item_dict.get(item_key)

            self.add_values_to_cell("A" + str(row_number), item_key)
            self.add_values_to_cell("B" + str(row_number), value)
            row_number += 1

    def save_file_as(self, name):
        self.workbook.save(name + ".xlsx")

