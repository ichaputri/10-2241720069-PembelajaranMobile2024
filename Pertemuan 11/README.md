# Pertemuan 11 | Pemograman Asynchronous

<table>
    <thead>
        <th style="text-align: center;" colspan="2">Data Diri</th>
    </thead>
    <tbody>
        <tr>
            <td>Nama</td>
            <td>Icha Dewi Putriana</td>
        </tr>
        <tr>
            <td>Nim</td>
            <td>2241720069</td>
        </tr>
    </tbody>
</table>


## Praktikum 1: Mengunduh Data dari Web Service (API)
---

### Langkah 1: Membuat Project Baru
- Membuat project Flutter bernama `books` di folder `src/week-11`.
- Menambahkan dependensi `http` menggunakan perintah `flutter pub add http`.
- Dependensi berhasil ditambahkan, dan aplikasi siap digunakan.

    ![alt text](<img/Cuplikan layar 2024-11-20 125958.png>)

---

### Langkah 2: Memastikan Dependensi dan Konfigurasi (macOS)
- Memastikan dependensi `http` muncul di file `pubspec.yaml`.
- Untuk pengguna macOS, menambahkan izin networking di file `DebugProfile.entitlements` dan `Release.entitlements`.

    ![alt text](<img/Cuplikan layar 2024-11-20 130810.png>)
---

### Langkah 3: Penyesuaian `main.dart` (Soal 1)
- Menambahkan nama panggilan pada `title` aplikasi sebagai identitas.
- Tujuan: Menunjukkan hasil pekerjaan dengan personalisasi sederhana.

    ![alt text](<img/Cuplikan layar 2024-11-20 131534.png>)

---

### Langkah 4: Mengambil Data API Google Books (Soal 2)
- Menggunakan API Google Books untuk mengambil data JSON.
- Mengganti ID buku pada URL API sesuai dengan buku favorit.
- Data JSON berhasil diakses dan diverifikasi di browser.

    ![alt text](<img/Cuplikan layar 2024-11-20 133435.png>)

 
---

### Langkah 5: Menambahkan Fungsi pada Button 
- Menambahkan fungsi untuk mengambil data dari API saat tombol ditekan.
- Menampilkan notifikasi berhasil atau error menggunakan `SnackBar`.

    ![alt text](<img/Cuplikan layar 2024-11-20 134708.png>)
<br>

    ![alt text](<img/Cuplikan layar 2024-11-20 185006.png>)
---

### Soal 
1. Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
    ![alt text](<img/Cuplikan layar 2024-11-20 131534.png>)
2. Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.
        ![alt text](<img/Cuplikan layar 2024-11-20 135014.png>)
- Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. 
        ![alt text](<img/Cuplikan layar 2024-11-20 135518.png>)
3. Jelaskan maksud kode langkah 5 tersebut terkait `substring` dan `catchError`!
   - **Substring:**  
       Digunakan untuk mengambil bagian tertentu dari string JSON agar lebih ringkas.
    - **catchError:**  
   Digunakan untuk menangani error, menjaga agar aplikasi tetap berjalan meskipun terjadi kegagalan saat memuat data.

        ![alt text](<img/prak 1.gif>)


### Kesimpulan
- Berhasil membuat aplikasi Flutter untuk mengambil data dari API Google Books.
- Berhasil menampilkan data JSON dan menangani error dengan baik.
- Aplikasi berjalan responsif dengan animasi loading.

---

## Laporan Praktikum 2: Menggunakan await/async untuk Menghindari Callbacks

### **Langkah 1: Tambahkan Method Asynchronous**
Tambahkan tiga method asynchronous ke dalam class `_FuturePageState`.

![alt text](<img/Cuplikan layar 2024-11-20 201132.png>)

**Penjelasan:**  
- Setiap method menggunakan `Future.delayed` untuk menunda eksekusi selama 3 detik.  
- Setelah penundaan selesai, method akan mengembalikan nilai berupa angka.

---

### **Langkah 2: Tambah Method count()**
Tambahkan method `count()` untuk menjumlahkan hasil dari ketiga method asynchronous sebelumnya.

![alt text](<img/Cuplikan layar 2024-11-20 201336.png>)

**Penjelasan:**  
- Method ini memanggil ketiga method asynchronous secara berurutan dengan kata kunci `await`.  
- Eksekusi menunggu masing-masing method selesai, sehingga total waktu eksekusi adalah jumlah waktu tunggu dari ketiga method.

---

### **Langkah 3: Panggil Method count()**
Ubah kode di `onPressed()` agar memanggil method `count()`.

![alt text](<img/Cuplikan layar 2024-11-20 201505.png>)

**Penjelasan:**  
- Ketika tombol ditekan, aplikasi akan menjalankan method `count()` dan menunggu hingga proses selesai.  
- Setelah selesai, hasil penjumlahan akan ditampilkan di UI.

---

### **Langkah 4: Jalankan Aplikasi**
Jalankan aplikasi Flutter menggunakan perintah `flutter run`.

![alt text](<img/Desain tanpa judul (10).gif>)

**Penjelasan:**  
- Aplikasi akan menampilkan angka `6` di layar setelah menunggu selama 9 detik.  
- Waktu total 9 detik berasal dari penjumlahan waktu tunggu masing-masing method asynchronous.

---

## **Soal dan Jawaban**

### **Soal 4: Jelaskan Maksud Kode Langkah 1 dan 2**
1. **Langkah 1:**  
   Method asynchronous pada langkah ini digunakan untuk mensimulasikan proses asinkron yang membutuhkan waktu tertentu sebelum menghasilkan nilai.  

2. **Langkah 2:**  
   Method `count()` berfungsi untuk menjumlahkan hasil dari ketiga method asynchronous. Dengan `await`, proses dijalankan secara berurutan, sehingga hasil penjumlahan baru tersedia setelah semua proses selesai.

---

## Laporan Praktikum 3: Menggunakan Completer di Future

### **Langkah 1: Buka main.dart dan Impor Package**
Pada langkah pertama, Anda diminta untuk mengimpor package `async` di file `main.dart`.

![alt text](<img/Cuplikan layar 2024-11-20 203136.png>)

**Penjelasan:**  
- Package `async` menyediakan class `Completer` yang memungkinkan kita untuk membuat objek `Future` yang dapat diselesaikan nanti dengan memberikan nilai atau error.

---

### **Langkah 2: Tambahkan Variabel dan Method**
Tambahkan variabel `late Completer` dan dua method di dalam class `_FuturePageState`.

![alt text](<img/Cuplikan layar 2024-11-20 203232.png>)

**Penjelasan:**  
- **Completer**: Digunakan untuk membuat objek `Future` yang dapat diselesaikan nanti.  
- **Method `getNumber()`**: Method ini membuat dan mengembalikan objek `Completer` yang mengelola `Future`.  
- **Method `calculate()`**: Melakukan penundaan selama 5 detik dan kemudian menyelesaikan `Completer` dengan nilai `42`.

---

### **Langkah 3: Ganti Isi Kode `onPressed()`**
Pada langkah ini, Anda diminta untuk mengganti isi fungsi `onPressed()` untuk memanggil method `getNumber()` dan mengupdate UI berdasarkan hasilnya.

![alt text](<img/Cuplikan layar 2024-11-20 203353.png>)

**Penjelasan:**  
- Ketika tombol ditekan, method `getNumber()` dipanggil untuk menjalankan operasi asynchronous. Setelah 5 detik, hasilnya (`42`) akan ditampilkan di UI.

---

### **Langkah 4: Jalankan Aplikasi**
Setelah melakukan perubahan di langkah-langkah sebelumnya, jalankan aplikasi menggunakan `flutter run` atau `hot restart`.

![alt text](<img/Cuplikan layar 2024-11-20 203728.png>)

**Penjelasan:**  
- Setelah 5 detik, angka `42` akan tampil di layar.  
- Hasil ini menunjukkan bahwa operasi asynchronous berhasil diselesaikan dengan menggunakan `Completer`.

---

### **Soal 5: Jelaskan Maksud Kode Langkah 2**

![alt text](<img/Desain tanpa judul (11).gif>)

1. **Completer** digunakan untuk membuat `Future` yang akan diselesaikan pada waktu yang tepat.  
2. **Method `getNumber()`** menginisialisasi `Completer`, memanggil `calculate()`, dan kemudian mengembalikan `future` yang dikelola oleh `Completer`.  
3. **Method `calculate()`** menunggu selama 5 detik (menggunakan `Future.delayed`), kemudian menyelesaikan `Completer` dengan nilai `42`.

---

### **Langkah 5: Ganti Method `calculate()`**
Pada langkah ini, Anda diminta untuk mengganti kode dalam method `calculate()` atau membuat method `calculate2()` baru.

![alt text](<img/Cuplikan layar 2024-11-20 204237.png>)

**Penjelasan:**  
- Anda dapat mengganti kode yang ada dalam `calculate()` untuk menyesuaikan dengan kebutuhan praktikum.  
- Perubahan ini bertujuan untuk memodifikasi bagaimana nilai dikembalikan ke `Completer`.

---

### **Langkah 6: Pindah ke `onPressed()`**
Gantilah kode di `onPressed()` agar menggunakan `then()` untuk menangani hasil `Future` yang dihasilkan oleh `getNumber()`.

![alt text](<img/Cuplikan layar 2024-11-20 204333.png>)

**Penjelasan:**  
- Dengan menggunakan `then()`, Anda dapat menangani hasil yang berhasil dengan `setState` untuk memperbarui UI.  
- `catchError` digunakan untuk menangani kesalahan jika ada yang terjadi selama eksekusi.

---

### **Soal 6: Jelaskan Perbedaan Kode Langkah 2 dengan Langkah 5-6**
1. **Langkah 2:**  
   - Di sini, kita menggunakan `Completer` untuk menangani operasi asynchronous secara manual. Method `calculate()` menyelesaikan `Completer` dengan nilai tertentu.
   
2. **Langkah 5-6:**  
   - Pada langkah ini, kita beralih menggunakan `then()` dan `catchError()` untuk menangani hasil `Future`. Ini lebih bersih dan menghindari penggunaan `setState` secara langsung di dalam method asynchronous.

---

## **Hasil Praktikum**
- Angka `42` ditampilkan di layar setelah penundaan 5 detik.
- **GIF hasil praktikum:**  
  (Lampirkan file GIF hasil aplikasi Anda di sini).

    ![alt text](<img/Desain tanpa judul (12).gif>)

---

## Laporan Praktikum 4: Memanggil Future secara Paralel

---

### **Langkah 1: Buka file main.dart dan Tambahkan Method**
Pada langkah pertama, Anda diminta untuk menambahkan sebuah method baru di dalam class `_FuturePageState`.

![alt text](<img/Cuplikan layar 2024-11-20 205359.png>)

**Penjelasan:**  
- Method ini akan menjalankan beberapa operasi asynchronous secara paralel, yang menghemat waktu eksekusi dibandingkan menjalankan operasi secara berurutan.  
- Anda akan menggunakan `FutureGroup` dari package `async` untuk menjalankan operasi async secara paralel.

---

### **Langkah 2: Edit `onPressed()`**
Pada langkah ini, Anda diminta untuk mengganti atau mengomentari kode sebelumnya di dalam `onPressed()` dan memanggil method yang telah ditambahkan pada langkah pertama.

![alt text](<img/Cuplikan layar 2024-11-20 205509.png>)

**Penjelasan:**  
- Dengan mengganti kode di `onPressed()`, aplikasi akan memanggil method yang menggunakan `FutureGroup` untuk mengeksekusi beberapa operasi async secara bersamaan.  
- Hal ini akan membuat aplikasi menghemat waktu eksekusi dibandingkan dengan menjalankan operasi secara satu per satu.

---

### **Langkah 3: Jalankan Aplikasi**
Setelah perubahan dilakukan, jalankan aplikasi menggunakan `flutter run` atau `hot restart` dan lihat hasilnya.

**Penjelasan:**  
- Setelah 3 detik, Anda akan melihat hasil yang lebih cepat dibandingkan dengan praktikum sebelumnya yang memakan waktu 9 detik.  
- Ini karena operasi async dijalankan secara paralel menggunakan `FutureGroup`, yang mempercepat keseluruhan eksekusi.

---

### **Soal 7: Capture Hasil Praktikum**
- Setelah menjalankan aplikasi, Anda diminta untuk menangkap hasilnya dalam bentuk GIF dan melampirkannya di README.

![alt text](<img/Desain tanpa judul (13).gif>)

**Penjelasan:**  
- GIF yang dihasilkan harus menunjukkan bahwa aplikasi menampilkan hasil lebih cepat, yaitu dalam waktu 3 detik, dibandingkan dengan sebelumnya.

---

### **Langkah 4: Ganti Variabel `FutureGroup` dengan `Future.wait`**
Pada langkah ini, Anda diminta untuk mengganti `FutureGroup` dengan `Future.wait` untuk menunggu beberapa `Future` secara bersamaan.

![alt text](<img/Cuplikan layar 2024-11-20 211033.png>)

**Penjelasan:**  
- `Future.wait` digunakan untuk menunggu beberapa `Future` yang dijalankan secara paralel dan mengembalikan hasilnya dalam bentuk list.  
- Ini memungkinkan kita untuk menunggu beberapa operasi async sekaligus dan mendapatkan hasilnya ketika semuanya selesai.

---

### **Soal 8: Jelaskan Perbedaan Kode Langkah 1 dan 4**
1. **Langkah 1:**  
   - Di sini, kita menggunakan `FutureGroup` untuk mengeksekusi beberapa operasi async secara paralel dan menunggu sampai semuanya selesai.
   
2. **Langkah 4:**  
   - Pada langkah ini, kita menggunakan `Future.wait` yang juga menunggu beberapa `Future` untuk dieksekusi secara paralel, namun dalam bentuk list yang lebih langsung.  
   - Perbedaannya terletak pada cara pengelolaan grup dari `Future`. `Future.wait` memungkinkan Anda untuk menunggu beberapa `Future` sekaligus, tetapi lebih sederhana dalam hal penulisan dibandingkan dengan `FutureGroup`.

---

## **Hasil Praktikum**
- Dengan menggunakan `FutureGroup` atau `Future.wait`, aplikasi mengeksekusi operasi secara paralel, menghasilkan eksekusi yang lebih cepat.

---

## Laporan Praktikum 5: Menangani Respon Error pada Async Code
---

### **Langkah 1: Buka file main.dart dan Tambahkan Method**
Pada langkah pertama, Anda diminta untuk menambahkan sebuah method di dalam class `_FuturePageState`.

![alt text](<img/Cuplikan layar 2024-11-20 211510.png>)

**Penjelasan:**  
- Method ini akan menangani operasi async yang dapat menghasilkan error, dengan menggunakan `then()` atau pola `async/await`.  
- Tujuan dari penambahan method ini adalah untuk memperkenalkan cara menangani respon error dalam operasi asynchronous.

---

### **Langkah 2: Ganti ElevatedButton**
Pada langkah kedua, Anda diminta untuk mengganti kode yang ada di dalam `ElevatedButton` dengan kode yang diberikan.

![alt text](<img/Cuplikan layar 2024-11-20 211819.png>)

**Penjelasan:**  
- Gantilah isi kode pada `ElevatedButton` untuk memanggil method yang menangani error, menggunakan `then()` atau `async/await`.  
- Hal ini memungkinkan Anda untuk menangani hasil yang dikembalikan dari operasi async secara lebih jelas.

---

### **Langkah 3: Jalankan Aplikasi**
Setelah perubahan dilakukan, jalankan aplikasi menggunakan `flutter run` atau `hot restart` dan lihat hasilnya.

![alt text](<img/Cuplikan layar 2024-11-20 212910.png>)

![alt text](<img/Cuplikan layar 2024-11-20 212922.png>)

**Penjelasan:**  
- Ketika tombol "GO!" diklik, Anda akan melihat hasil yang menunjukkan bahwa operasi async berhasil diselesaikan dan munculnya teks "Complete" di debug console.  
- Ini menandakan bahwa operasi async berjalan dengan baik dan berhasil menyelesaikan tugasnya.

---

### **Soal 9: Capture Hasil Praktikum**
- Setelah menjalankan aplikasi, Anda diminta untuk menangkap hasilnya dalam bentuk GIF dan melampirkannya di README.

    ![alt text](<img/Desain tanpa judul (14).gif>)

**Penjelasan:**  
- GIF yang dihasilkan harus menunjukkan bahwa aplikasi berhasil menyelesaikan tugas tanpa error, dan debug console menunjukkan hasil "Complete".

---

### **Langkah 4: Tambah Method `handleError()`**
Pada langkah ini, Anda diminta untuk menambahkan method baru yang akan menangani error.

![alt text](<img/Cuplikan layar 2024-11-20 213200.png>)

**Penjelasan:**  
- Method `handleError()` akan menangani kesalahan yang mungkin terjadi selama operasi async. Dengan menambahkan method ini, Anda bisa menangani error secara terpisah dan memberikan feedback yang lebih jelas kepada pengguna.

---

### **Soal 10: Panggil Method `handleError()` dan Jelaskan Perbedaannya**

![alt text](<img/Cuplikan layar 2024-11-20 213400.png>)

![alt text](<img/Desain tanpa judul (15).gif>)

1. **Langkah 1:**  
   - Di langkah pertama, kode di `ElevatedButton` menangani hasil sukses atau error dari operasi async menggunakan `then()`.
   
2. **Langkah 4:**  
   - Pada langkah keempat, kode diubah untuk memanggil `handleError()` yang secara eksplisit menangani error dengan memberikan feedback atau log error yang lebih terstruktur.

**Penjelasan:**  
- Perbedaan antara langkah 1 dan langkah 4 terletak pada pendekatan untuk menangani error. Langkah pertama menggunakan `then()` untuk menangani sukses atau gagal secara langsung. Sedangkan pada langkah 4, error ditangani lebih terstruktur dengan menggunakan method `handleError()`, yang memungkinkan penanganan lebih modular dan jelas.

---

## **Hasil Praktikum**
- Dengan menambahkan penanganan error, aplikasi dapat menangani kegagalan dalam operasi async dengan baik dan memberi umpan balik yang jelas kepada pengguna.

---

## Praktikum 6: Menggunakan Future dengan StatefulWidget

Pada praktikum ini, Anda akan mempelajari bagaimana cara menggunakan `Future` dalam `StatefulWidget` di Flutter untuk mengambil data secara asinkron, seperti mengambil koordinat GPS pengguna dan menampilkan hasilnya dalam aplikasi. Anda juga akan memanfaatkan plugin `geolocator` untuk mengakses lokasi pengguna.

---

### Langkah 1: Install Plugin Geolocator
- Anda perlu menambahkan plugin `geolocator` untuk mengakses lokasi GPS pengguna. Ini dapat dilakukan dengan menambahkannya melalui terminal pada proyek Flutter Anda.

![alt text](<img/Cuplikan layar 2024-11-20 125958.png>)

### Langkah 2: Tambahkan Permission GPS
- Agar aplikasi dapat mengakses lokasi pengguna, Anda perlu menambahkan permission yang sesuai di file konfigurasi untuk platform Android dan iOS:
  - **Android**: Menambahkan permission untuk akses lokasi di file `AndroidManifest.xml`.
  
      ![alt text](<img/Cuplikan layar 2024-11-20 214637.png>)

  - **iOS**: Menambahkan keterangan akses lokasi di file `Info.plist` agar aplikasi dapat mengakses lokasi pengguna saat dijalankan.

### Langkah 3: Buat File `geolocation.dart`
- Buat file baru di dalam folder `lib` yang akan menangani pengambilan data lokasi dan menampilkan koordinat GPS.

### Langkah 4: Buat StatefulWidget untuk Lokasi
- Dalam file yang baru dibuat, buatlah sebuah `StatefulWidget` untuk menampilkan layar yang mengambil dan menampilkan informasi lokasi pengguna menggunakan `geolocator`.

### Langkah 5: Menampilkan Lokasi
- Di dalam widget tersebut, lakukan pemanggilan fungsi yang mengambil koordinat GPS dan tampilkan hasilnya pada UI.

    ![alt text](<img/Cuplikan layar 2024-11-20 215150.png>)

### Soal 11: Identitas Pekerjaan Anda
- Tambahkan nama panggilan Anda di bagian title atau properti lainnya sebagai identitas pada setiap bagian dalam aplikasi.

    ![alt text](<img/Cuplikan layar 2024-11-20 215246.png>)

### Langkah 6: Edit `main.dart`
- Di dalam file `main.dart`, setel `home` untuk menunjuk ke `LocationScreen` agar layar lokasi dapat ditampilkan saat aplikasi dijalankan.

    ![alt text](<img/Cuplikan layar 2024-11-20 215358.png>)

### Langkah 7: Jalankan Aplikasi
- Jalankan aplikasi di emulator atau perangkat fisik (bukan di browser) untuk melihat tampilan layar yang menunjukkan lokasi pengguna.

    ![alt text](<img/Cuplikan layar 2024-11-20 215819.png>)
    ![alt text](<img/Cuplikan layar 2024-11-20 215832.png>)
### Langkah 8: Tambahkan Animasi Loading
- Agar pengalaman pengguna lebih baik, Anda dapat menambahkan animasi loading yang ditampilkan saat aplikasi sedang memproses pengambilan lokasi. Untuk melihat animasi ini dengan jelas, pastikan ada penundaan tertentu yang memungkinkan animasi loading tampil dengan sempurna.

    ![alt text](<img/Cuplikan layar 2024-11-20 220428.png>)

### Soal 12: Koordinat GPS di Browser
- Cek apakah Anda mendapatkan koordinat GPS saat menjalankan aplikasi di browser. Jelaskan mengapa hal ini terjadi? <br>
    > Di browser, Anda tidak dapat mendapatkan koordinat GPS karena browser tidak dapat mengakses perangkat keras secara langsung, seperti GPS. Aplikasi yang menggunakan plugin seperti geolocator untuk mengambil lokasi hanya akan bekerja di perangkat fisik (Android/iOS), bukan di browser. Browser membatasi akses ke informasi sensitif demi keamanan dan privasi pengguna. Untuk mendapatkan koordinat GPS, aplikasi perlu dijalankan di perangkat nyata atau emulator.

---

### Laporan Praktikum
- Capture hasil praktikum Anda dalam bentuk **GIF** dan lampirkan di README untuk dokumentasi.
    ![alt text](<img/Desain tanpa judul (16).gif>)

---

## Praktikum 7: Manajemen Future dengan FutureBuilder

Pada praktikum ini, kita akan mempelajari penggunaan widget `FutureBuilder` untuk manajemen future yang lebih efisien, serta bagaimana widget ini dapat membantu dalam memperbarui UI secara otomatis ketika data async tersedia.

### Langkah 1: Modifikasi method `getPosition()`
- Di langkah pertama, Anda perlu membuka file `geolocation.dart` dan mengganti isi method `getPosition()` untuk menggunakan `FutureBuilder`.

    ![alt text](<img/Cuplikan layar 2024-11-20 221544.png>)
### Langkah 2: Tambah variabel
- Tambahkan variabel yang diperlukan dalam class `_LocationScreenState`.

    ![alt text](<img/Cuplikan layar 2024-11-20 223805.png>)
### Langkah 3: Tambah `initState()`
- Di langkah ini, Anda menambahkan method `initState()` untuk menginisialisasi dan menetapkan variabel `position`.

    ![alt text](<img/Cuplikan layar 2024-11-20 223916.png>)
### Langkah 4: Edit method `build()`
- Sesuaikan kode di method `build()` untuk menggunakan `FutureBuilder`. Pada tahap ini, UI akan memperbarui dirinya berdasarkan status data yang sedang di-fetch.

    ![alt text](<img/Cuplikan layar 2024-11-20 224203.png>)

### Soal 13:
**Pertanyaan:** Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?
- **Penjelasan:** Menggunakan `FutureBuilder` memungkinkan UI untuk bereaksi terhadap status dari `Future`. UI akan menunggu hasil dari operasi async dan memperbarui dirinya secara otomatis tanpa perlu menggunakan `setState`.

### Langkah 5: Tambah handling error
- Tambahkan kode untuk menangani error jika terjadi masalah saat mengambil data. Hal ini akan memastikan aplikasi tidak crash dan menampilkan pesan error yang sesuai ketika `Future` mengalami kegagalan.

    ![alt text](<img/Cuplikan layar 2024-11-20 224910.png>)

### Soal 14:
**Pertanyaan:** Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?
- **Penjelasan:** Dengan menambahkan handling error, UI menjadi lebih robust dan informatif. Ketika terjadi error pada `Future`, UI akan menampilkan pesan yang relevan kepada pengguna, seperti "Something terrible happened!"

### Ringkasan
Pada praktikum ini, bdlajar cara menggunakan `FutureBuilder` untuk memudahkan manajemen operasi async dan memperbarui UI. Perbedaan utama antara praktikum sebelumnya dan praktikum ini adalah bahwa `FutureBuilder` secara otomatis memperbarui UI berdasarkan status dari `Future` tanpa memerlukan `setState`. Ini membuat kode menjadi lebih bersih dan efisien.

---

## Praktikum 8: Navigation Route dengan Future Function

Pada praktikum kali ini, kita akan mempelajari manfaat dari penggunaan `Future` untuk melakukan navigasi antara route, di mana route tersebut menjadi sebuah fungsi async. Anda akan mengubah warna background layar berdasarkan hasil dari navigasi.

### Langkah 1: Buat file baru `navigation_first.dart`
- Buat file baru di dalam folder `lib` proyek Anda.

### Langkah 2: Isi kode `navigation_first.dart`
- Sesuaikan file ini untuk kebutuhan praktikum dan pastikan untuk mengganti beberapa properti title dengan nama panggilan Anda.
    
    ![alt text](<img/Cuplikan layar 2024-11-20 225646.png>)

### Soal 15:
**Pertanyaan:** Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda. 
- **Penjelasan:** Pada bagian ini, Anda diminta untuk menambahkan nama panggilan pada setiap properti `title` untuk identifikasi pekerjaan Anda. Anda juga diminta untuk mengganti warna dengan tema favorit Anda.

    ![alt text](<img/Cuplikan layar 2024-11-20 225646.png>)

### Langkah 3: Tambah method di class `_NavigationFirstState`
- Tambahkan method yang menggunakan `Future` untuk menavigasi ke screen berikutnya dan mendapatkan warna yang dipilih oleh pengguna.

    ![alt text](<img/Cuplikan layar 2024-11-20 230232.png>)
### Langkah 4: Buat file baru `navigation_second.dart`
- Buat file baru untuk screen kedua di dalam folder `lib`. Anda bisa mengelompokkan view dalam satu folder dan sesuaikan dengan impor yang dibutuhkan.

### Langkah 5: Buat class `NavigationSecond` dengan `StatefulWidget`
- Di file `navigation_second.dart`, buat class `NavigationSecond` sebagai `StatefulWidget` untuk menangani perubahan state di screen kedua.

    ![alt text](<img/Cuplikan layar 2024-11-20 230325.png>)
### Langkah 6: Edit `main.dart`
- Edit properti `home` untuk memanggil screen `NavigationFirst`.

    ![alt text](<img/Cuplikan layar 2024-11-20 230440.png>)
### Langkah 8: Run
- Jalankan aplikasi dan pastikan tidak ada error. Jika terjadi error, perbaiki sesuai dengan petunjuk yang ada.

    ![alt text](<img/Desain tanpa judul (17).gif>)

### Soal 16:
**Pertanyaan:** Cobalah klik setiap button, apa yang terjadi? Mengapa demikian?
- **Penjelasan:** Setiap tombol yang di klik dapat mengubah warna background pada screen berdasarkan pemilihan warna di screen kedua. Pastikan Anda mengganti warna sesuai dengan warna favorit Anda.

    ![alt text](<img/Cuplikan layar 2024-11-20 231406.png>)
    
    <br>

    ![alt text](<img/Desain tanpa judul (18).gif>)

## Ringkasan
Pada praktikum ini, belajar untuk memanfaatkan `Future` untuk melakukan navigasi antar layar dan mendapatkan hasil dari navigasi tersebut untuk memperbarui UI. Dengan menggunakan `await` dan `Navigator.push`, aplikasi dapat menunggu hasil dari layar kedua sebelum memperbarui UI dengan data yang didapatkan, seperti warna yang dipilih oleh pengguna.

---

## Praktikum 9: Memanfaatkan async/await dengan Widget Dialog

Pada praktikum kali ini, Anda akan memanfaatkan widget `AlertDialog` untuk menampilkan dialog yang memungkinkan pengguna untuk memilih operasi, seperti Save, Delete, Accept, dan sebagainya.

### Langkah 1: Buat file baru `navigation_dialog.dart`
- Buat file baru di dalam folder `lib` proyek Anda.

### Langkah 2: Isi kode `navigation_dialog.dart`
- Sesuaikan file ini dengan kode yang diperlukan untuk menampilkan dialog dan mengelola operasi async/await.

    ![alt text](<img/Cuplikan layar 2024-11-20 232030.png>)

### Langkah 3: Tambah method async
- Tambahkan method async yang akan menangani operasi yang dipilih dalam dialog, seperti pengaturan warna atau tindakan lainnya.

    ![alt text](<img/Cuplikan layar 2024-11-20 232209.png>)

### Langkah 4: Panggil method di `ElevatedButton`
- Panggil method yang telah dibuat pada langkah sebelumnya ketika tombol `ElevatedButton` ditekan.

    ![alt text](<img/Cuplikan layar 2024-11-20 232258.png>)
### Langkah 5: Edit `main.dart`
- Edit properti `home` untuk memanggil screen yang telah dibuat pada langkah sebelumnya.

![alt text](<img/Cuplikan layar 2024-11-20 232422.png>)
### Langkah 6: Run
- Jalankan aplikasi dan pastikan dialog muncul dengan benar. Uji fungsionalitas dialog dengan mengganti warna background atau tindakan lainnya sesuai dengan pilihan pengguna.

    ![alt text](<img/Desain tanpa judul (19).gif>)

### Soal 17:
**Pertanyaan:** Cobalah klik setiap button, apa yang terjadi? Mengapa demikian?
- **Penjelasan:** Dialog ini memungkinkan pengguna untuk memilih operasi, dan aplikasi akan menanggapi pilihan tersebut, seperti mengubah warna background berdasarkan pilihan yang dibuat. 

    ![alt text](<img/Cuplikan layar 2024-11-20 233250.png>)
    
    <br>

    ![alt text](<img/Desain tanpa judul (20).gif>)

## Ringkasan
Pada praktikum ini, belajar bagaimana menggunakan `async/await` dalam kombinasi dengan widget `AlertDialog` untuk menangani interaksi pengguna secara efisien. Dialog ini memungkinkan pengguna untuk memilih operasi, dan aplikasi akan merespons sesuai dengan pilihan yang dilakukan, seperti mengubah warna background atau tindakan lainnya.




