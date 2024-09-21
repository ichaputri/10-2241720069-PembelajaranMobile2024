void main() {
  String nama = "Icha Dewi Putriana";
  String nim = "2241720069";

  for (int i = 0;; i++) {
    int angka = 2 * i - 1;
    if (i == 0) angka = 2; // Kondisi khusus untuk angka 2
    if (angka > 201) break;

    // Mengecek apakah angka adalah bilangan prima
    bool prima = true;
    if (angka <= 1) {
      prima = false;
    } else {
      for (int j = 2; j * j <= angka; j++) {
        if (angka % j == 0) {
          prima = false;
          break;
        }
      }
    }

    if (prima) {
      print('$angka - $nama, $nim');
    }
  }
}
