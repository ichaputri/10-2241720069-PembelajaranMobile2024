void main() {
  // Langkah 1
  print("      Langkah 1      ");
  print("---------------------");
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  // Langkah 3
  print("\n\n      Langkah 3      ");
  print("---------------------");
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  names1.add("Icha Dewi Putriana");
  names1.add("2241720069");

  names2.addAll(['Icha Dewi Putriana', '2241720069']);

  print(names1);
  print(names2);
  // print(names3);
}
