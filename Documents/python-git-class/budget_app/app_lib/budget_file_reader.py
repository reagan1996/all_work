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

    def create_list_of_cell_data(self):
        list = []
        for row in self.worksheet.values:
            dict1 ={"Name": row[1], "Rank": row[0], "Life Expectancy": row[2]}
            list.append(dict1)

        return list[1:]

    def print_all_data_cells_coordinates(self):
        for i in self.worksheet.rows:
            for p in i:
                print(p.coordinate)




# print(reader.return_cell_value("A1"))
# reader.print_worksheet() # print all items that are part of the openpyxl library returned within a tuple
# print all cell data available (will print tuples for access)
# reader.print_all_data_cells_coordinates() # Print all cell coordinates with data which could be parsed to a list for use


if __name__ == "__main__":
    reader = BudgetFileReader("life_expectancy_2014.xlsx")
    country = reader.create_list_of_cell_data()


