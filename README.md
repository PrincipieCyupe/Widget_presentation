# Snackbar Widget Presentation

This widget (SnackBar Widget) is useful in flutter when you want to display a message temporary and it pops up from the bottom when user clicks something.
This widget is put in ```Scafford()``` widget where it goes as an argument of ```  ScaffoldMessenger.of(context).showSnackBar()``` and it will also take it's own arguments or properties.
**N.B.** You can also use a ```ScaffoldMessenger.of(context).hideCurrentSnackBar()``` to hide a current snackbar

## How to Run

To run this project you must have flutter with all its dependancies installed.
1. clone the repo
   ``` git clone https://github.com/PrincipieCyupe/Widget_presentation.git```
2. move inside the repo
   ``` cd Widget_presentation```
3. run this first:
    ``` flutter pub get```
4.  next you wil do:
   ``` flutter run```
## The attributes of **SnackBar** widget that were used along

### 1. content
This is essential property of ```SnackBar()``` widget as it takes ```Text()``` which add text to the snackbar as message you want to pop up.

### 2. duration
This takes ```Duration()``` which allows us to set how long snack will last

### 3. backgroundColor
This property or argument is added to give a snackbar background color

### 4. action
this is helpful when you want to add other actions on the snackbar, maybe closing it or whatever.

## Demo Screenshot of The Final UI
Down below is a screenshot of a tiny application showing SnackBar in action:
<img width="397" height="855" alt="image" src="https://github.com/user-attachments/assets/e12644d2-88bd-429c-b11c-90b53f80c16e" />
