void main() {
  // Langkah 1
  print("      Langkah 1      ");
  print("---------------------");
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);

  // Langkah 3
  print("      Langkah 3      ");
  print("---------------------");
  final list2 = List.filled(5, "");
  list2[1] = 'Icha Dewi Putriana';
  list2[2] = '2241720069';

  print(list2.length);
  print(list2[1]);
  print(list2[2]);
  print(list2);
}
