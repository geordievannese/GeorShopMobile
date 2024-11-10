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

## ASSIGNMENT 8

# 1.What is the purpose of const in Flutter? Explain the advantages of using const in Flutter code. When should we use const, and when should it not be used?

Purpose: In Flutter, const is used to create compile-time constants. When an object is declared as const, it is evaluated at compile time, which allows Flutter to optimize and reduce memory usage by reusing the same instance across the application wherever it's used.

Advantages of Using const:
Performance Optimization: Since const objects are immutable and evaluated at compile time, they save memory and improve performance.
Reduced Widget Rebuilds: Widgets declared as const won’t rebuild unnecessarily, leading to better performance, especially in large apps with many widgets.
Improved Code Readability: Using const helps developers indicate that certain widgets or objects are immutable, which enhances readability and code structure.
When to Use const:

Use const for widgets and objects that don’t need to change during the app's lifecycle, like static text or icons.
Use const in layout widgets where children or properties remain the same.
When Not to Use const:

Do not use const if the widget or object needs to change at runtime. If the properties or values will be updated, using const will throw an error.

# 2.Explain and compare the usage of Column and Row in Flutter. Provide example implementations of each layout widget!

Column: Column is a layout widget that arranges its children in a vertical direction. It’s ideal for stacking widgets on top of each other.

Example:
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Item 1"),
    Text("Item 2"),
    Text("Item 3"),
  ],
);

Row: Row is a layout widget that arranges its children horizontally. It’s useful for placing widgets side by side.

Example:
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.settings),
  ],
);

Comparison:
Axis: Column arranges widgets vertically, while Row arranges them horizontally.
Properties: Both have similar properties, like mainAxisAlignment and crossAxisAlignment, to control the alignment of children along their respective axes.
Spacing: Use SizedBox or Padding between children in both Column and Row to add spacing.

# 3.List the input elements you used on the form page in this assignment. Are there other Flutter input elements you didn’t use in this assignment? Explain!

Input Elements Used:

TextFormField: Used for entering text-based data (like name and description).
TextInputType.number (for numeric input in TextFormField): Used for entering numbers (like amount).

Other Input Elements Not Used:
Checkbox: A square box used for selecting multiple options.
Radio: A circular button used for selecting one option from a set.
Switch: A toggle switch used for binary options like on/off.
Slider: Allows the user to select a value from a continuous or discrete range.
DropdownButton: Displays a dropdown list from which users can select a single item.

# 4. How do you set the theme within a Flutter application to ensure consistency? Did you implement a theme in your application?
Use the ThemeData class in the MaterialApp widget. A theme allows you to define colors, font styles, and widget styles centrally, which ensures consistency and easy maintenance.

Example:
MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: 18, color: Colors.black),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blueAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  ),
  home: HomeScreen(),
);

Yes, I did apply a theme to my Flutter application.
1. ThemeData in MaterialApp:
- defined a theme in the MaterialApp widget using ThemeData.
- primarySwatch: Colors.blue: sets a default color scheme based on blue shades for widgets that depend on the primary color (such as the AppBar).
- scaffoldBackgroundColor: Colors.grey[100]: Sets a light grey background color for all Scaffold widgets throughout the app, which ensures consistency in the app’s background color.

2. Specific Customizations:
- In the AppBar, I used backgroundColor: Colors.blue[900] to override the primary color with a darker shade of blue specifically for the header.
- I also also set iconTheme: IconThemeData(color: Colors.white) and customized the Text color in the AppBar to Colors.white for the title and icon, aligning them with the header background color.

# 5. How do you manage navigation in a multi-page Flutter application?
- Navigator.push and Navigator.pop: Used to move to a new page and return to the previous page.
- Navigator.pushReplacement: Replaces the current page with a new one, removing the current page from the stack.
- Named Routes: Define routes in the MaterialApp to manage navigation more cleanly. Named routes provide a centralized way of managing all routes in one place.