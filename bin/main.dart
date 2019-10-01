// In these exercises we will pretend that we do not have access to the standard
// List class in Dart. Instead, we will implement our own list using 'links' as
// described below.

// Exercise 1: Create a class called 'Link' which has two fields.  Choose
// types for each field so that you can create an object structure that looks
// like this:
// https://s1.whiteboardfox.com/s/2ae37dc832647bad.png

class Link {
  String value;
  Link next;
}

class Student {
  String name;
  int score;
}

main() {
  Student student1 = Student();
  student1.name = 'Raj';
  student1.score = 60;
  Link firstLink = Link();
  // Exercise 2:  Create the object structure shown in the above link
  // including the variable called 'firstLink'
  firstLink.value = 'Raj';
  firstLink.next = Link();
  firstLink.next.value = 'Makiko';
  firstLink.next.next = Link();
  firstLink.next.next.value = 'Paul';
  firstLink.next.next.next = null;
  extractor(firstLink);
  add(firstLink, 'rahul');
  extractor(firstLink);
}

// Exercise 3: Create a function which takes a Link parameter and prints out
// all the values in the list.  For example, if the function is given the
// firstLink variable, then it will print:
// Raj
// Makiko
// Paul
void extractor(Link link) {
  Link temp = link;
  List<String> values = [];
  while (temp != null) {
    values.add(temp.value);
    temp = temp.next;
  }

  for (String x in values) {
    print(x);
  }
}

// Exercise 4: Create a function which takes a Link parameter and a String
// parameter, and adds another link to the end of the chain.  The new link
// value should be the String parameter passed into the function.typedef
void add(Link link, String str) {
  Link temp = link;

  while (temp.next != null) {
    temp = temp.next;
  }
  temp.next = Link();
  temp.next.value = str;
}

// *** Stretch ****
// Exercise 5: Create a function called insert which takes a Link,
// an integer index and a String, and inserts a link at the given index
// in the chain.  For example, calling insert(firstLink, 2, "A") should
// update the chain structure to look like this:
// https://s1.whiteboardfox.com/s/77ff03ee231f2f60.png
