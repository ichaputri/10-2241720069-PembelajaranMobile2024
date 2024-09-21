void main() {
  // Langkah 1
  print("     Langkah 1     ");
  print("-------------------");
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  // Langkah 3
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  // Menambahkan elemen nama dan NIM pada setiap Map
  gifts['name'] = 'Icha Dewi Putriana';
  gifts['NIM'] = '2241720069';

  nobleGases[0] = 'Icha Dewi Putriana';
  nobleGases[1] = '2241720069';

  mhs1['name'] = 'Icha Dewi Putriana';
  mhs1['NIM'] = '2241720069';

  mhs2[0] = 'Icha Dewi Putriana';
  mhs2[1] = '2241720069';

  // Mencetak hasil
  print("\n\n       Langkah 3       ");
  print("---------------------------");
  print('gifts: $gifts');
  print('nobleGases: $nobleGases');
  print('mhs1: $mhs1');
  print('mhs2: $mhs2');
}
