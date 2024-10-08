# **Pertemuan 5 - Aplikasi Pertama dan Widget Dasar Flutter**

---

Pada codelab ini, Anda akan mempelajari konsep dan praktik untuk dasar-dasar framework Flutter, termasuk fitur penggunaan hot reload dan restart serta widget dasar dan temanya.


## Praktikum 1: Membuat Proyek Flutter Baru

---

Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda.

### **Langkah 1**
Buka VS Code, lalu tekan tombol Ctrl + Shift + P maka akan tampil Command Palette, lalu ketik Flutter. Pilih New Application Project.

![Hasil Output](img/flut1.png)

![Hasil Output](img/flut2.png)

> Catatan: Anda dapat mengakses Command Palette dengan cara lain, yaitu pilih menu View > Command Palette. Tombol shortcut Ctrl + Shift + P mungkin hanya berlaku di Windows.

#### **Langkah 2**
Buat folder sesuai style laporan praktikum yang Anda pilih. Disarankan pada folder dokumen atau desktop atau alamat folder lain yang tidak terlalu dalam atau panjang. Lalu pilih Select a folder to create the project in.

![Hasil Output](img/flut5.png)

#### **Langkah 3**
Buat nama project flutter hello_world seperti berikut, lalu tekan Enter. Tunggu hingga proses pembuatan project baru selesai.

![Hasil Output](img/flut3.png)

#### **Langkah 4**
Jika sudah selesai proses pembuatan project baru, pastikan tampilan seperti berikut. Pesan akan tampil berupa "Your Flutter Project is ready!" artinya Anda telah berhasil membuat project Flutter baru.

![Hasil Output](img/flut4.png)


## **Praktikum 2 - Menghubungkan Perangkat Android atau Emulator**
---

Melanjutkan dari praktikum 1, Anda diminta untuk menjalankan aplikasi ke perangkat fisik (device Android atau iOS). Silakan ikuti langkah-langkah pada codelab tautan berikut ini.

**Mulai**
1. Pastikan komputer dan perangkat Anda terhubung ke jaringan nirkabel yang sama.
2. Pastikan perangkat Anda menjalankan Android 11 atau yang lebih baru. Untuk informasi selengkapnya, lihat Memeriksa & mengupdate versi Android.
3. Pastikan komputer Anda telah memiliki Android Studio versi terbaru. Untuk mendownloadnya, lihat Android Studio.
4. Pastikan komputer Anda memiliki SDK Platform Tools versi terbaru.

**Menyambungkan perangkat Anda**
1. Di Android Studio, pilih Pair Devices Using Wi-Fi dari menu drop-down konfigurasi run.

   `Dialog Pair devices over Wi-Fi akan terbuka.`
![hasiloutput](img/flut6.png)

2. Buka Developer options, scroll ke bawah ke bagian Debugging, lalu aktifkan Wireless debugging.

3. Pada pop-up Izinkan proses debug nirkabel di jaringan ini?, pilih Allow
![hasiloutput](img/flut37.png)

4. Jika Anda ingin menyambungkan perangkat dengan kode QR, pilih Pair device with QR code, lalu pindai kode QR di komputer Anda. Atau, jika Anda ingin menyambungkan perangkat dengan kode penghubung, pilih Pair device with pairing code, lalu masukkan 6 digit kode.
![hasiloutput](img/flut7.png)
![hasiloutput](img/flut8.png)

5. Klik jalankan dan Anda dapat men-deploy aplikasi ke perangkat.

# **Praktikum 3 : Membuat Repository GitHub dan Laporan Praktikum**
---

### **Langkah 1**
Login ke akun GitHub Anda, lalu buat repository baru dengan nama "flutter-fundamental-part1"
![hasiloutput](img/flut9.png)


### **Langkah 2**
Lalu klik tombol "Create repository" lalu akan tampil seperti gambar berikut.
![hasil](img/flut10.png)

### **Langkah 3**
Kembali ke VS code, project flutter hello_world, buka terminal pada menu Terminal > New Terminal. Lalu ketik perintah berikut `git init` untuk inisialisasi git pada project Anda.

![hasil](img/flut11.png)


### **Langkah 4**
Pilih menu Source Control di bagian kiri, lalu lakukan stages (+) pada file .gitignore untuk mengunggah file pertama ke repository GitHub.

![hasil](img/flut12.png)


### **Langkah 5**
Beri pesan commit "tambah gitignore" lalu klik Commit (✔)

![hasil](img/flut13.png)


### **Langkah 6**
Lakukan push dengan klik bagian menu titik tiga > Push

![hasil](img/flut14.png)


### **Langkah 7**
Di pojok kanan bawah akan tampil seperti gambar berikut. Klik "Add Remote"

![hasil](img/flut15.png)

### **Langkah 8**
Salin tautan repository Anda dari browser ke bagian ini, lalu klik Add remote

![hasil](img/flut16.png)

setelah berhasil tulis `origin`

![hasil](img/flut17.png)

### **Langkah 9**
Lakukan hal yang sama pada file README.md mulai dari Langkah 4. Setelah berhasil melakukan push, masukkan username GitHub Anda dan password berupa token yang telah dibuat (pengganti password konvensional ketika Anda login di browser GitHub). Reload halaman repository GitHub Anda, maka akan tampil hasil push kedua file tersebut seperti gambar berikut.

![hasil](img/flut18.png)

### **Langkah 10**
Lakukan push juga untuk semua file lainnya dengan pilih Stage All Changes. Beri pesan commit "project hello_world". Maka akan tampil di repository GitHub Anda seperti berikut.

![hasil](img/flut19.png)

### **Langkah 11**
Kembali ke VS Code, ubah platform di pojok kanan bawah ke emulator atau device atau bisa juga menggunakan browser Chrome. Lalu coba running project hello_world dengan tekan F5 atau Run > Start Debugging. Tunggu proses kompilasi hingga selesai, maka aplikasi flutter pertama Anda akan tampil seperti berikut.

![hasil](img/flut20.png)

hasil di hp

![hasil](img/flut38.png)


### **Langkah 12**
Silakan screenshot seperti pada Langkah 11, namun teks yang ditampilkan dalam aplikasi berupa nama lengkap Anda. Simpan file screenshot dengan nama 01.png pada folder images (buat folder baru jika belum ada) di project hello_world Anda. Lalu ubah isi README.md seperti berikut, sehingga tampil hasil screenshot pada file README.md. Kemudian push ke repository Anda.


# **Praktikum 4 : Menerapkan Widget Dasar**
---

### **Langkah 1 : Text Widget**
* Buat folder baru basic_widgets di dalam folder lib. Kemudian buat file baru di dalam basic_widgets dengan nama text_widget.dart. Ketik atau salin kode program berikut ke project hello_world Anda pada file text_widget.dart.


* Lakukan import file text_widget.dart ke main.dart, lalu ganti bagian text widget dengan kode di atas. Maka hasilnya seperti gambar berikut. Screenshot hasil milik Anda, lalu dibuat laporan pada file README.md.
![hasil](img/flut21.png)


### **Langkah 2 : Image Widget**
* Buat sebuah file image_widget.dart di dalam folder basic_widgets dengan isi kode berikut.
![hasil](img/flut123.png)

* Lakukan penyesuaian asset pada file pubspec.yaml dan tambahkan file logo Anda di folder assets project hello_world.
![hasil](img/flut24.png)

* Jangan lupa sesuaikan kode dan import di file main.dart kemudian akan tampil gambar seperti berikut.
![hasil](img/flut22.png)

# **Praktikum 5 : Menerapkan Widget Material Design dan iOS Cupertino**
---

### **Langkah 1 : Cupertino Button dan Loading Bar**
Buat file di basic_widgets > loading_cupertino.dart. Import stateless widget dari material dan cupertino. Lalu isi kode di dalam method Widget build adalah sebagai berikut.

>kode

![hasil](img/flut27.png)

>hasil

![hasil](img/flut26.png)


### **Langkah 2 : Floating Action Button (FAB)**
Button widget terdapat beberapa macam pada flutter yaitu ButtonBar, DropdownButton, TextButton, FloatingActionButton, IconButton, OutlineButton, PopupMenuButton, dan ElevatedButton.

Buat file di basic_widgets > fab_widget.dart. Import stateless widget dari material. Lalu isi kode di dalam method Widget build adalah sebagai berikut.
>kode

![hasil](img/flut30.png)
>hasil

![hasil](img/flut28.png)


### **Langkah 3 : Scaffold Widget**
Scaffold widget digunakan untuk mengatur tata letak sesuai dengan material design.

Ubah isi kode main.dart seperti berikut.

![hasil](img/flut29.png)


### **Langkah 4 : Dialog Widget**
Dialog widget pada flutter memiliki dua jenis dialog yaitu AlertDialog dan SimpleDialog.

Ubah isi kode main.dart seperti berikut.

![hasil](img/flut32.png)

![hasil](img/flut33.png)


### **Langkah 5 : Input dan Selection Widget**
Flutter menyediakan widget yang dapat menerima input dari pengguna aplikasi yaitu antara lain Checkbox, Date and Time Pickers, Radio Button, Slider, Switch, TextField.

Contoh penggunaan TextField widget adalah sebagai berikut:

![hasil](img/flut34.png)


### **Langkah 6 : Date and Time Pickers**
Date and Time Pickers termasuk pada kategori input dan selection widget, berikut adalah contoh penggunaan Date and Time Pickers.

![hasil](img/flut35.png)

![hasil](img/flut36.png)