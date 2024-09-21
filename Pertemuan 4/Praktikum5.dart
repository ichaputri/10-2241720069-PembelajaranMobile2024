void main() {
  // Langkah 1
  print("     Langkah 1     ");
  print("-------------------");
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // langkah 3
  print("\n     Langkah 3     ");
  print("-------------------");
  var isi = (8, 4);
  var rekam = tukar(isi);
  print(rekam);

  // langkah 4
  print("\n     Langkah 4     ");
  print("-------------------");
  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ("Icha dewi putriana", 2241720069);
  print(mahasiswa);

  // langkah 5
  print("\n     Langkah 5     ");
  print("-------------------");
  var mahasiswa2 = ('Icha Dewi Putriana', a: 2241720069, b: true, 'last');
  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
