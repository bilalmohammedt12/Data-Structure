// Basic Data Structures in Dart

// Stacks

// Challenge 1: Reverse a List
void reverse(List<dynamic> list) {
  for (int i = list.length - 1; i >= 0; i--) {
    print(list[i]);
  }
}
//_________________________________________________________________________________________________________
// Challenge 2: Balance the Parentheses
bool isBalanced(String str) {
  int balance = 0;

  for (int i = 0; i < str.length; i++) {
    balance += (str[i] == '(') ? 1 : (str[i] == ')') ? -1 : 0;
    if (balance < 0) return false;
  }

  return balance == 0;
}
//=====================================================================
// Linked List

class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  //Print in Reverse
  void reverses(Node? head) {
  List<int> values = [];
  while (head != null) {
    values.add(head.data);
    head = head.next;
  }
  for (int i = values.length - 1; i >= 0; i--) {
    print(values[i]);
  }
}

//_________________________________________________________________________________________________________

  // Find the Middle Node
  Node? middle() {
    Node? x = head;
    Node? y = head;
    while (y != null && y.next != null) {
      x = x?.next;
      y = y.next?.next;
    }
    return x;
  }
//_________________________________________________________________________________________________________

  //  Reverse a Linked List
Node? reverse() {
  Node? prev = null, current = head;
  for (; current != null; ) {
    Node? next = current.next; current.next = prev; prev = current; current = next;
  }
  head = prev; return head;
}
//_________________________________________________________________________________________________________

  //  Remove All Occurrences
void removeAllOccurrences(int value) {

  while (head != null && head!.data == value) {
    head = head!.next;
  }
  Node? temp = head;
  while (temp != null && temp.next != null) {
    if (temp.next!.data == value) {
      temp.next = temp.next!.next;
    } else {
      temp = temp.next;
    }
  }
}

}