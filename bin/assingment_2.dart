
// ignore_for_file: unused_element

void main(List<String> arguments) {
  int addTwo(int num1, int num2) {
  // Add two numbers and return the sum
  return num1 + num2;
}

int subtractTwo(int num1, int num2) {
  // Subtract two numbers and return the difference
  return num1 - num2;
}

double multiplyTwo(double num1, double num2) {
  // Multiply two numbers (use double for decimals) and return the product
  return num1 * num2;
}

double divideTwo(double num1, double num2) {
  // Divide two numbers (use double for decimals) and handle potential division by zero
  if (num2 == 0) {
    throw Exception("Division by zero is not allowed");
  }
  return num1 / num2;
}

int stringLength(String str) {
  // Return the length of the string
  return str.length;
}

T getFirstElement<T>(List<T> list) {
  // Return the first element of the list (using generics)
  if (list.isEmpty) {
    throw Exception("List is empty");
  }
  return list[0];
}

void main() {
  // Example usage of functions
  int sum = addTwo(5, 3);
  int difference = subtractTwo(10, 4);
  double product = multiplyTwo(2.5, 4.0);
  
  // Handle potential division by zero error
  try {
    double quotient = divideTwo(10, 0);
    print("Quotient: $quotient");
  } on Exception catch (e) {
    print(e.toString());
  }
  
  int stringSize = stringLength("Hello");
  String firstColor = getFirstElement<String>(["red", "green", "blue"]);
  
  print("Sum: $sum");
  print("Difference: $difference");
  print("Product: $product");
  print("String size: $stringSize");
  print("First color: $firstColor");
}
}
