void main() {
  // Required Parameter
  print(calculateArea(width: 5, height: 10)); // Output: 50
}

int calculateArea({required int width, required int height}) {
  return width * height;
}
