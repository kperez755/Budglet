# Budglet

## Overview
This is a budgeting application built using **Xcode**, leveraging **Swift**, **SwiftUI**, **CoreData**, and some **Combine**. The app allows users to create, manage, and track budgets with various features such as spending limits, categorization, tagging, and sorting.

## Features
- **Create and Manage Budgets:**
  - Add, edit, and delete budgets.
  - Set spending limits, track spending amounts, and assign spending categories.
- **Sort and Filter:**
  - Sort budgets and expenses by title, price range, or date.
  - Filter items within budgets using tags.
- **Tagging System:**
  - Assign tags to individual expenses to organize and filter spending.
- **CoreData Integration:**
  - Persistent storage for budgets, expenses, and tags.

## CoreData Model
The application is backed by a CoreData model with three entities:

### 1. Budget
- **Attributes:**
  - `dateCreated` (Date): The date the budget was created.
  - `limit` (Double): The spending limit for the budget.
  - `title` (String): The title of the budget.
- **Relationships:**
  - `expenses` (to-many, Destination: Expense, Inverse: budget)

### 2. Expense
- **Attributes:**
  - `amount` (Double): The spending amount of the expense.
  - `dateCreated` (Date): The date the expense was recorded.
  - `title` (String): The title of the expense.
- **Relationships:**
  - `budget` (to-one, Destination: Budget, Inverse: expenses)
  - `tags` (to-many, Destination: Tag, Inverse: expenses)

### 3. Tag
- **Attributes:**
  - `name` (String): The name of the tag.
- **Relationships:**
  - `expenses` (to-many, Destination: Expense, Inverse: tags)

## Installation
1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```
2. Open the project in Xcode:
   ```bash
   open BudgetingApp.xcodeproj
   ```
3. Build and run the project on your simulator or connected device.

## Usage
1. Launch the app and create a new budget by providing a title and spending limit.
2. Add expenses to the budget, specifying the amount, title, and optional tags.
3. Use the sorting and filtering features to organize and view expenses.
4. Edit or delete budgets and expenses as needed.

## Screenshots
*Add screenshots here to showcase the app's interface.*

## Technologies Used
- **Swift** and **SwiftUI** for UI and logic.
- **CoreData** for data persistence.
- **Combine** for reactive programming and handling data updates.

## Contribution
Contributions are welcome! To contribute:
1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature-branch-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Description of changes"
   ```
4. Push to the branch:
   ```bash
   git push origin feature-branch-name
   ```
5. Open a Pull Request.

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.
