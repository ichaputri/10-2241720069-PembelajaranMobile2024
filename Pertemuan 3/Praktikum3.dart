void main() {
  // Langkah 1
  print("     Langkah 1          ");
  print("------------------------");
  for (int index = 10; index < 27; index++) {
    print(index);

    // langkah 2
    if (index == 21)
      break;
    else if (index > 1 || index < 7) continue;
    print(index);
  }
}
