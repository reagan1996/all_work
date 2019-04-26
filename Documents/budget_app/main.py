from app_lib.budget_items_manager import BudgetItems

budget = BudgetItems()

budget.add_budget_item("cornflakes", 7000)
budget.add_budget_item("nutrigrain bar", 0.20)

budget.save_budget_items()