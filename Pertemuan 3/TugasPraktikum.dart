void main() {
  String nama = "Icha Dewi Putriana";
  String nim = "2241720069";

  for (int i = 1;; i++) {
    int angka = 2 * i - 1;
    if (angka > 201) break;

    // Mengecek apakah angka adalah bilangan prima
    bool prima = angka > 0;
    for (int j = 2; j * j <= angka; j++) {
      if (angka % j == 0) {
        prima = false;
        break;
      }
    }

    if (prima) {
      print('$angka - $nama, $nim');
    }
  }
}
