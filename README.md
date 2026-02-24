# C1. Thinking Questions

# 1. Why does each Flutter screen usually use Scaffold?
scaffold is used because it provides the basic structure of a screen such as AppBar and body. Without Scaffold, many Material Design features will not work properly and the screen layout becomes harder to manage

# 2. What happens if Navigator.pop(context) is called in HomeScreen?
if Navigator.pop(context) is called in HomeScreen, the app will try to go back to the previous screen. Since HomeScreen is the first screen, this can cause the app to close or do nothing

# 3. Are these two MaterialPageRoute implementations equivalent? Why?
yes, they are equivalent because both return a widget using the builder function. the difference is only in writing style, not in functionality

# 4. When should a screen use StatefulWidget instead of StatelessWidget?
a screen should use StatefulWidget when the UI needs to change based on user
interaction or data changes, such as form input, counters, or API responses


# C2. Debugging Challenge
# What error occurred
A syntax error occurred and the application could not run properly

# Why it happened
the builder function was written incorrectly and did not include the context parameter. it also did not return a widget, which is required by Flutter

# How I fixed it
i fixed the error by correcting the builder syntax and returning the KrsScreen() widget properly

# Fixed Code

Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => KrsScreen(),
  ),
);

## C3. Design Decision – ProfileScreen

# Why I chose these widgets
icon is used to visually represent the student profile
text widgets are used to display the student name and NIM
elevatedButton is used to navigate to the KRS screen
why I arranged them that way

# Why I arranged them that way
the widgets are arranged vertically using a Column so the information is easy to read and the layout looks simple and clean

# How this screen could evolve in a real KRS system
in a real KRS system, this screen could show academic data, allow profile editing, and display KRS history


