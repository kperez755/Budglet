# Budgeting App

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
