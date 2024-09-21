void main() {
  // Langkah 1
  var list1 = <int?>[1, 2, 3];
  var list2 = [0, ...list1];
  print("     Langkah 1     ");
  print("-------------------");
  print(list1);
  print(list2);
  print(list2.length);

// Langkah 3
  print("\n     Langkah 3     ");
  print("-------------------");
  list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  // Tambahkan NIM menggunakan Spread Operators
  var nim = ['2241720132'];
  var listBaru = [...list3, ...list2, ...nim];
  print(listBaru);

  // Langkah 4
  print("\n     Langkah 4     ");
  print("-------------------");
  // bool promoActive = true;
  bool promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  // Langkah 5
  print("\n     Langkah 5     ");
  print("-------------------");
  var login = 'Manager';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav2);

  // Langkah 6
  print("\n     Langkah 6     ");
  print("-------------------");
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
