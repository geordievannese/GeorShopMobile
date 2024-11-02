# georshop

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## ASSIGNMENT 7
# Explain what are stateless widgets and stateful widgets, and explain the difference between them.
Stateless Widgets: These are widgets that do not require any mutable (changeable) state. They render once based on the provided input data and do not need to rebuild or change over time. Examples include basic text displays, icons, or buttons that perform a single action without tracking state.

Stateful Widgets: These are widgets that can maintain state information, meaning they can change their appearance or data based on user interaction or other events. They use a State object to store mutable state and can rebuild themselves when the state changes.

Difference: Stateless widgets are immutable and cannot change once created, while stateful widgets can update dynamically through the setState() function, allowing them to re-render with new data or properties.

# Mention the widgets that you have used for this project and its uses.
MaterialApp: This is the root widget of the app, setting up the overall theme and navigation for the Flutter app.
Scaffold: Provides the basic structure for each screen, including an app bar, body, and floating action buttons if needed.
AppBar: Displays the title and actions at the top of the screen, giving the app a familiar look.
Column: Aligns the buttons vertically, arranging them one after the other.
ElevatedButton: Used to create buttons for the three main actions (View Product List, Add Product, and Logout).
Icon: Adds an icon to each button, making the buttons visually informative.
Text: Provides labels for each button to describe their function.
ScaffoldMessenger: Displays snack bars to provide feedback when each button is pressed.
SnackBar: Used to show a small pop-up message to confirm that the button was pressed.

# What is the use-case for setState()? Explain the variable that can be affected by setState().
Use-Case for setState(): The setState() method is used in stateful widgets to notify Flutter that the internal state of the widget has changed. This triggers a rebuild of the widget tree, ensuring that the UI reflects the current state of the app.
Variables Affected by setState(): Any variable that is mutable (changeable) and affects the widget's display can be updated with setState(). For example, counters, user inputs, flags for button states, or dynamic data from APIs. By using setState(), we ensure that changes to these variables are visible in the UI.

# Explain the difference between const and final keyword.
const: A const variable is compile-time constant, meaning its value must be known and fixed at the time of code compilation. It cannot be changed at runtime. const is often used for values that are truly immutable and unlikely to change, such as widget configurations or predefined values.
final: A final variable is run-time constant, which means it can be set once and only once, but its value can be determined during runtime. final is useful for variables that need to be assigned a value based on runtime information but should not change after being set.

# Explain how you implemented the checklist above step-by-step.
Created a New Flutter Application: Initialized a new Flutter project in the IDE, applying the E-Commerce theme from previous assignments to ensure consistency.
Added Buttons: In the main screen, I created three ElevatedButton.icon widgets for each action (View Product List, Add Product, Logout) and customized each with an icon and label.
Set Different Colors for Each Button: Used the style property in each button to set a distinct color. The colors chosen were blue for the View Product List button, green for the Add Product button, and red for the Logout button.
Displayed Snackbars: Added ScaffoldMessenger.of(context).showSnackBar to each buttons onPressed function, showing a SnackBar with a message specific to each button press.
Documentation in README.md: Documented answers to the questions provided, including explanations of widgets, keywords, and implementation steps.
Pushed to GitHub: Added, committed, and pushed the project files to GitHub for easy submission and version control