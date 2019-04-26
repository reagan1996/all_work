from openpyxl import load_workbook


class BudgetFileReader:

    def __init__(self, file_name_and_path):
        self.workbook = load_workbook(file_name_and_path, read_only=True)
        self.worksheet = self.workbook.active

    def return_cell_value(self, cell_reference):
        return self.worksheet[cell_reference].value

    def print_worksheet(self):
        for item in self.worksheet:
            print(item)

    def print_all_cell_data(self):
        for i in self.worksheet.values:
            print(i)

    def print_all_data_cells_coordinates(self):
        for i in self.worksheet.rows:
            for p in i:
                print(p.coordinate)


x = BudgetFileReader("../default.xlsx")

print(x.return_cell_value("A1")) # will print the individual cell value
x.print_worksheet() # print all items that are part of the openpyxl library returned within a tuple
x.print_all_cell_data() # print all cell data available (will print tuples for access)
x.print_all_data_cells_coordinates() # Print all cell coordinates with data which could be parsed to a list for use