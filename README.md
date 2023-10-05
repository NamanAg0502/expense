# Expense Tracker App

![App Logo](assets/app_logo.png)

## Overview

The Expense Tracker App is a comprehensive mobile application built with Flutter and Firebase to help users manage their expenses effortlessly. This app allows users to track their spending, set budgets, and gain insights into their financial habits. Below, you'll find an overview of its features and how technologies were used in its development.

## Features

### 1. User Authentication

- **User Registration**: New users can sign up for an account using their email and password.
- **User Login**: Registered users can log in securely to access their personal expense data.

### 2. Expense Tracking

- **Add Expenses**: Users can add individual expenses, including details like amount, category, date, and description.
- **Edit/Delete Expenses**: Edit or delete previously added expenses to maintain an accurate record.
- **Categorization**: Expenses can be categorized into predefined categories for better organization.

### 3. Budget Management

- **Set Budgets**: Users can set budget limits for different expense categories.
- **Budget Tracking**: The app provides real-time tracking of expenses against budget limits.
- **Budget Alerts**: Users receive notifications when they approach or exceed their budget limits.

### 4. Analytics and Insights

- **Expense Summaries**: Visualize expense data with charts and graphs.
- **Category-wise Spending**: Understand spending patterns through category-wise expense breakdowns.
- **Expense Trends**: Observe spending trends over different time periods (daily, weekly, monthly, yearly).
- **Currency Conversion**: Seamlessly convert expenses to the user's preferred currency.

### 5. Notifications

- **Expense Notifications**: Users receive notifications for important expense-related events, such as budget alerts or monthly summaries.
- **Customizable Alerts**: Users can customize the types of notifications they receive.

## Technologies Used

### 1. Flutter

- **Description**: Flutter is a cross-platform UI toolkit used to build natively compiled applications for mobile, web, and desktop from a single codebase.
- **How We Used It**: The entire user interface and front-end of the Expense Tracker App were developed using Flutter, allowing us to maintain a consistent user experience across different platforms.

### 2. Firebase

- **Description**: Firebase is a comprehensive mobile and web application development platform that provides a wide range of features, including real-time database, authentication, cloud functions, and hosting.
- **How We Used It**:
  - **Firestore**: We utilized Firebase Firestore as our database to store user data, expenses, budgets, and settings.
  - **Authentication**: Firebase Authentication was employed for user registration and authentication.
  - **Cloud Functions**: We implemented Firebase Cloud Functions for background tasks like sending notifications and currency conversion updates.
  - **Firebase Hosting**: Firebase Hosting was used to deploy our web version of the app.

### 3. Provider for State Management

- **Description**: Provider is a state management solution for Flutter that provides a way to efficiently manage app state and perform data changes.
- **How We Used It**: We used the Provider package to manage the app's state, allowing us to efficiently update and synchronize data across different screens and widgets.

### 4. Charts and Graphs Libraries

- **Description**: We utilized charting libraries like `fl_chart` and `charts_flutter` to create visually appealing charts and graphs for expense analysis.

Certainly, here's the Contribution Guidelines section in markdown format:

markdown
Copy code

## Contribution Guidelines

We welcome contributions to the Expense Tracker App. If you'd like to contribute, please follow these guidelines:

### Reporting Bugs

If you encounter a bug in the app, please [open an issue](https://github.com/yourusername/expense-tracker/issues) on our GitHub repository. When reporting a bug, please provide as much detail as possible, including:

- A clear and descriptive title.
- A step-by-step description of how to reproduce the bug.
- Screenshots or code snippets, if applicable.
- Details about your environment (e.g., Flutter version, device, operating system).
