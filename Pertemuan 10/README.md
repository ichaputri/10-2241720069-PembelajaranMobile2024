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

<br>

# **Praktikum 1 - Dasar State dengan Model - View**

Praktikum ini bertujuan untuk memahami dan mengimplementasikan konsep dasar penggunaan State dengan Model-View dalam Flutter. Dalam praktik ini, kita membuat aplikasi to-do sederhana bernama **Master Plan** yang menyimpan daftar tugas dan rencana.

---

## Langkah - Langkah Praktikum

### Langkah 1: Buat Project Baru
Buat project Flutter baru dengan nama `master_plan` di folder `src/week-10` dalam repository GitHub. 
- Lalu buatlah susunan folder dalam project seperti gambar berikut ini.
![image](<img/Cuplikan layar 2024-11-09 191119.png>)


### Langkah 2: Membuat Model `task.dart`
Di dalam folder `models`, buat file `task.dart` untuk mendefinisikan model `Task`. Model ini memiliki atribut `description` dengan tipe data String dan `complete` dengan tipe data Boolean. Model ini akan menyimpan data tugas untuk aplikasi.

![image](<img/Cuplikan layar 2024-11-09 191526.png>)

### Langkah 3: Buat File `plan.dart`
Buat file `plan.dart` di folder `models` untuk mendefinisikan model `Plan`. Model ini memiliki atribut `name` untuk menyimpan nama rencana dan `tasks` yang merupakan daftar `Task`.

![image](<img/Cuplikan layar 2024-11-09 191700.png>)

### Langkah 4: Buat File `data_layer.dart`
Buat file `data_layer.dart` di folder `models` untuk menggabungkan impor model `task.dart` dan `plan.dart`, sehingga dapat diakses secara terintegrasi.

![image](<img/Cuplikan layar 2024-11-09 191813.png>)

### Langkah 5: Ubah File `main.dart`
Ubah isi file `main.dart` untuk menginisialisasi aplikasi dengan nama **Master Plan** dan menggunakan `PlanScreen` sebagai halaman utama.

![alt text](<img/Cuplikan layar 2024-11-09 193207.png>)

### Langkah 6: Buat `plan_screen.dart`
Buat file `plan_screen.dart` di dalam folder `views`. Gunakan templat StatefulWidget untuk membuat `PlanScreen`. Pada bagian ini, ubah teks judul `AppBar` menjadi nama panggilan Anda.

![image](<img/Cuplikan layar 2024-11-09 192525.png>)

### Langkah 7: Tambahkan Tombol `_buildAddTaskButton()`
Buat metode `_buildAddTaskButton()` untuk menambahkan tombol plus (Tambah Rencana). Saat ditekan, tombol ini akan membuat tugas baru yang ditambahkan ke daftar rencana.

![image](<img/Cuplikan layar 2024-11-09 192731.png>)

### Langkah 8: Buat Widget `_buildList()`
Buat widget `_buildList()` menggunakan `ListView.builder` untuk menampilkan daftar tugas dalam bentuk list yang bisa di-scroll.

![image](<img/Cuplikan layar 2024-11-09 192929.png>)

### Langkah 9: Buat Widget `_buildTaskTile`
Buat widget `_buildTaskTile` untuk menampilkan setiap item tugas secara dinamis, sehingga pengguna dapat melihat dan mengubah status penyelesaian serta deskripsi tugas.

![image](<img/Cuplikan layar 2024-11-09 193039.png>)

### Langkah 10: Tambahkan `ScrollController`
Tambahkan `ScrollController` untuk menghapus fokus dari semua `TextField` selama event scroll. Ini membantu menghindari masalah dengan keyboard di perangkat iOS.

![image](<img/Cuplikan layar 2024-11-09 195458.png>)

### Langkah 11: Tambah Scroll Listener
Tambahkan metode `initState()` dan tambahkan listener pada `scrollController` untuk menghapus fokus saat ada event scroll.

![image](<img/Cuplikan layar 2024-11-09 195622.png>)

### Langkah 12: Tambah Controller dan Keyboard Behavior
Tambahkan controller dan pengaturan `keyboardDismissBehavior` pada `ListView` di metode `_buildList` untuk mengatur perilaku keyboard di iOS dan Android.

![image](<img/Cuplikan layar 2024-11-09 195933.png>)

### Langkah 13: Tambahkan Metode `dispose()`
Tambahkan metode `dispose()` untuk mengelola memori dan menghapus `scrollController` ketika widget tidak lagi digunakan.

![alt text](<img/Cuplikan layar 2024-11-09 200149.png>)

### Langkah 14: Hasil
Lakukan hot restart pada aplikasi Flutter untuk melihat tampilan akhir aplikasi **Master Plan**. Aplikasi memungkinkan Anda untuk menambah tugas baru, menandai sebagai selesai, dan menghapus tugas jika diinginkan.

![hasil](<img/Cuplikan layar 2024-11-09 201932.png>)

## Kesimpulan
Dalam praktikum ini, kita telah berhasil membuat aplikasi dasar menggunakan Flutter dengan pendekatan Model-View. Aplikasi **Master Plan** ini mendemonstrasikan pengelolaan State untuk menyimpan data rencana dan tugas, serta menampilkan antarmuka pengguna yang responsif menggunakan Flutter.

## Tugas Praktikum 1 - Dasar State dengan Model View
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.
1. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?
    >**Jawaban** : Langkah 4 bertujuan untuk menggabungkan model-model seperti task.dart dan plan.dart ke dalam satu file data_layer.dart di folder models. Ini memudahkan pengelolaan dan memungkinkan impor model secara terpusat di seluruh aplikasi, sehingga kita hanya perlu mengimpor data_layer.dart daripada mengimpor model satu per satu. Pendekatan ini membuat kode lebih terstruktur dan efisien.
3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?
    >**Jawaban** : Variabel `plan` didefinisikan sebagai objek tetap dari kelas `Plan` untuk memastikan bahwa nilainya tidak berubah setelah diatur, sehingga data tetap konsisten dan tidak menyebabkan masalah dalam aplikasi.
4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
    >**Jawaban** : Hasil Praktikum
    >![hasil](<img/Desain tanpa judul (7).gif>)
    
1. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?
    >**Jawaban** : 
    > - Metode `initState()` dipanggil sekali ketika widget pertama kali dibuat dan digunakan untuk menyiapkan data atau sumber daya yang dibutuhkan widget sebelum tampil di layar. Misalnya, digunakan untuk menambahkan listener pada objek seperti scrollController untuk mendeteksi perubahan saat pengguna menggulir tampilan. Metode ini memastikan widget dapat berfungsi dengan baik saat pertama kali diinisialisasi.
    > - Sementara itu, `dispose()` dipanggil saat widget dihapus dari widget tree, yaitu ketika widget tidak lagi digunakan. Fungsi utama dari `dispose()` adalah untuk membersihkan sumber daya yang digunakan oleh widget, seperti menghapus listener atau membebaskan memori yang digunakan oleh objek seperti scrollController. Dengan menggunakan `dispose()`, kita mencegah terjadinya memory leak dan memastikan aplikasi tetap efisien.


# **Praktikum 2 - Mengelola Data Layer dengan InheritedWidget dan InheritedNotifier**

Pada codelab ini, kita akan memperbarui kode dari aplikasi Master Plan dengan memisahkan data todo list ke luar class view-nya.

---

## Langkah-Langkah Praktikum

### Langkah 1: Membuat `plan_provider.dart`

Pada langkah pertama, kita membuat file `plan_provider.dart` untuk mendefinisikan **PlanProvider**, sebuah widget yang akan menyediakan data **Plan** ke widget lainnya menggunakan **InheritedNotifier**.

![image](<img/Cuplikan layar 2024-11-09 212013.png>)

### Langkah 2: Mengedit `main.dart`

Pada langkah ini, kita mengubah atribut `home` di dalam `MaterialApp` untuk membungkus widget `PlanScreen` dengan `PlanProvider`, yang akan membawa data **Plan** melalui **ValueNotifier**.

![image](<img/Cuplikan layar 2024-11-09 212137.png>)

### Langkah 3: Menambah Method pada Model `Plan`

Kita menambahkan dua method pada model **Plan** untuk menghitung jumlah tugas yang telah selesai (`completedCount`) dan memberikan pesan tentang kemajuan tugas (`completenessMessage`).

![image](<img/Cuplikan layar 2024-11-09 212327.png>)

### Langkah 4: Menggunakan Data dari `PlanProvider` di `PlanScreen`

Pada langkah ini, kita mengedit `PlanScreen` untuk mengambil data **Plan** dari `PlanProvider` menggunakan `ValueNotifier`, yang memungkinkan kita mengakses data secara terpusat dan mengupdate UI ketika data berubah.

![image](<img/Cuplikan layar 2024-11-09 212506.png>)

### Langkah 5: Mengedit Method `_buildAddTaskButton`

Kita menambahkan `BuildContext` sebagai parameter dan menggunakan `PlanProvider` untuk mengakses dan memodifikasi data **Plan** saat pengguna menambahkan tugas baru.

![image](<img/Cuplikan layar 2024-11-09 212758.png>)

### Langkah 6: Mengedit Method `_buildTaskTile`

Pada langkah ini, kita mengubah `TextField` menjadi `TextFormField` dan menambahkan `BuildContext` untuk mengakses data **Plan**. Perubahan data di sini akan langsung memperbarui tampilan task list.

![image](<img/Cuplikan layar 2024-11-09 213506.png>)

### Langkah 7: Mengedit Method `_buildList`

Kita menyempurnakan method `_buildList` dengan menambahkan parameter `Plan` untuk memanfaatkan data dari `PlanProvider`, memungkinkan untuk membuat daftar tugas secara dinamis.

![image](<img/Cuplikan layar 2024-11-09 213618.png>)

### Langkah 8: Membungkus `_buildList` dengan `Expanded` dan `Column`

Untuk menampilkan progress tugas di bagian bawah aplikasi, kita membungkus `_buildList` dengan widget `Expanded` dan menambahkannya ke dalam `Column`, memungkinkan tampilan UI yang lebih rapi dan responsif.

![image](<img/Cuplikan layar 2024-11-09 215049.png>)

### Langkah 9: Menambahkan Widget `SafeArea`

Pada langkah terakhir, kita menambahkan widget `SafeArea` untuk menampilkan pesan kemajuan tugas yang diambil dari `completenessMessage`, memastikan informasi tampil dengan aman di area layar.

![image](<img/Cuplikan layar 2024-11-09 215419.png>)

## Kesimpulan

Dengan menggunakan **InheritedWidget** dan **InheritedNotifier**, kita berhasil memisahkan data dan tampilan aplikasi secara efektif. Praktikum ini memberi kita pemahaman yang lebih baik mengenai cara mengelola state di Flutter, dengan memanfaatkan kemampuan widget untuk meneruskan data ke sub-widgetnya. Penggunaan **ValueNotifier** memungkinkan aplikasi kita menjadi lebih efisien dalam mengelola perubahan data secara real-time.

## Tugas Praktikum 2 : InheritedWidget
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.
2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?
    >**Jawaban** : `InheritedWidget` adalah kelas yang memungkinkan data dapat diwariskan ke widget lain dalam widget tree. Pada kode ini, digunakan InheritedNotifier<ValueNotifier<Plan>> yang lebih spesifik, karena ValueNotifier memungkinkan data (Plan) untuk memberi notifikasi atau pemberitahuan saat terjadi perubahan. Dengan InheritedNotifier, widget yang bergantung pada data ini akan otomatis diperbarui ketika Plan berubah, tanpa memerlukan pemberitahuan manual.
1. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?
    >**Jawaban** : 
    >- `completedCount`: Getter ini menghitung jumlah tugas yang sudah selesai dengan memfilter tugas yang memiliki status complete == true.
    >- `completenessMessage`: Getter ini menghasilkan pesan teks yang menunjukkan jumlah tugas yang selesai dan total tugas, seperti '3 out of 5 tasks'.
    >- Tujuan: Kedua getter ini digunakan untuk menghitung progres tugas dan menampilkan status tersebut kepada pengguna.
1. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
    > **Jawaban** : Hasil dari langkah 9 adalah difooter nya akan menghitung ada brp task dan brp task yang sudah selesai
    >![hasil](<img/Desain tanpa judul (8).gif>)
1. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !

# **Praktikum 3 : Membuat State di Multiple Screens**
Pada codelab ini, Anda akan menambah screen lain pada aplikasi Master Plan sehingga bisa membuat kelompok daftar plan lebih dari satu.

---

## Langkah-langkah Praktikum

### Langkah 1: Edit PlanProvider
Mengedit class `PlanProvider` untuk menangani list dari objek **Plan**.

![image](<img/Cuplikan layar 2024-11-10 113627.png>)

### Langkah 2: Edit main.dart
Mengubah **method build** untuk menyesuaikan dengan `PlanProvider` yang telah diedit agar aplikasi dapat berjalan tanpa error.

![image](<img/Cuplikan layar 2024-11-10 113907.png>)

### Langkah 3: Edit plan_screen.dart
Menambahkan variabel **plan** dan atribut pada konstruktor untuk menerima data **Plan**.

![image](<img/Cuplikan layar 2024-11-10 114101.png>)

### Langkah 4: Error Handling
Menangani error yang muncul akibat perubahan pada `PlanProvider`, yang kini berisi list objek **Plan**.


### Langkah 5: Tambah Getter Plan
Menambahkan getter untuk objek **Plan** pada class `_PlanScreenState`.

![image](<img/Cuplikan layar 2024-11-10 114315.png>)

### Langkah 6: Method initState
Menambahkan method `initState` untuk menginisialisasi controller **scroll**.

![image](<img/Cuplikan layar 2024-11-10 114450.png>)

### Langkah 7: Widget build
Menyesuaikan widget `build` untuk merujuk ke `List<Plan>` dan mengganti nilai pada **currentPlan**.

![image](<img/Cuplikan layar 2024-11-10 122151.png>)

![image](<img/Cuplikan layar 2024-11-10 122323.png>)

### Langkah 8: Edit _buildTaskTile
Mengedit widget `_buildTaskTile` agar sesuai dengan list objek **Plan** dan menggunakan `planNotifier` untuk memperbarui state.

![image](<img/Cuplikan layar 2024-11-10 122445.png>)

### Langkah 9: Buat Screen Baru
Membuat file baru `plan_creator_screen.dart` dalam folder `view`, dan menambahkan StatefulWidget bernama **PlanCreatorScreen** sebagai halaman awal aplikasi.

![image](<img/Cuplikan layar 2024-11-10 123055.png>)

### Langkah 10: Tambahkan TextEditingController
Menambahkan `TextEditingController` untuk menangani input teks dan menambah **Plan** baru, serta mendefinisikan `dispose` method.

![image](<img/Cuplikan layar 2024-11-10 123425.png>)

### Langkah 11: Edit Method build pada PlanCreatorScreen
Mengedit method `build` untuk menampilkan halaman **Master Plans**. Mengganti judul aplikasi menjadi "Master Plans Namaku" untuk menyesuaikan dengan nama panggilan.

![image](<img/Cuplikan layar 2024-11-10 123553.png>)

### Langkah 12: Buat Widget _buildListCreator
Menambahkan widget `_buildListCreator` untuk menyediakan input teks bagi pengguna dalam menambah **Plan** baru.

![image](<img/Cuplikan layar 2024-11-10 123716.png>)

### Langkah 13: Buat Method addPlan
Membuat method `addPlan` untuk menerima input teks dari pengguna dan menambah **Plan** baru ke dalam **list** `planNotifier`.

![image](<img/Cuplikan layar 2024-11-10 124041.png>)

### Langkah 14: Buat Widget _buildMasterPlans
Menambahkan widget `_buildMasterPlans` untuk menampilkan semua **Plan** yang telah ditambahkan oleh pengguna.

![image](<img/Cuplikan layar 2024-11-10 124121.png>)

### Hasil Praktikum

Aplikasi berhasil menampilkan halaman untuk menambah dan mengelola **Plan** yang dapat diakses dari beberapa layar. Pengguna dapat menambah **Plan** baru pada halaman utama, yang kemudian akan muncul di daftar **Master Plans**. Setiap **Plan** dapat diklik untuk membuka layar baru yang berisi detail dari **Plan** tersebut.

![hasil](<img/Desain tanpa judul (9).gif>)

### Kesimpulan

Dalam praktikum ini, kita berhasil menerapkan konsep "Lift State Up" untuk mengelola state di banyak layar dengan `InheritedWidget` dalam Flutter. Dengan demikian, kita dapat membuat aplikasi yang lebih terstruktur dan mudah untuk dikembangkan lebih lanjut, terutama saat berurusan dengan state management di aplikasi berskala besar.

## Tugas Praktikum 3 : State di Multiple Screens
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.
2. Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!
![soal](<img/Cuplikan layar 2024-11-10 135035.png>)
    > **Jawaban** : Diagram tersebut menunjukkan hubungan antara beberapa layar dalam aplikasi
    > - **Sebelum Berpindah Layar (PlanCreatorScreen)**
        Pada aplikasi ini, `MaterialApp` berfungsi sebagai widget utama yang menampilkan seluruh aplikasi, menyusun tampilan, dan mengatur navigasi antar layar. Di dalamnya, ada `PlanProvider`, yang bertugas untuk mengelola dan menyimpan data rencana, serta digunakan untuk mengakses dan memanipulasi daftar rencana di berbagai layar. Layar pertama yang muncul saat aplikasi dibuka adalah `PlanCreatorScreen`, tempat di mana pengguna dapat membuat rencana baru. Di layar ini, terdapat widget `Column` yang digunakan untuk menyusun elemen-elemen secara vertikal, dengan semua elemen ditata dari atas ke bawah. Salah satu elemen di dalamnya adalah `TextField`, yang memungkinkan pengguna untuk mengetikkan nama rencana baru. Di bawah `TextField`, terdapat widget `Expanded`, yang memberikan ruang agar elemen berikutnya, yaitu daftar rencana, dapat menyesuaikan ukuran layar. Hal ini memungkinkan `ListView`, yang digunakan untuk menampilkan daftar rencana yang telah dibuat, agar dapat digulir jika daftar tersebut terlalu panjang untuk ditampilkan di layar. Dengan fitur-fitur ini, pengguna dapat dengan mudah membuat, melihat, dan mengelola rencana dalam aplikasi.<br>
    > - **Setelah Berpindah Layar (PlanScreen)**
        Di aplikasi ini, `MaterialApp` tetap menjadi widget utama yang mengelola seluruh aplikasi, menangani tampilan, dan navigasi antar layar, termasuk perpindahan ke layar baru. Setelah pengguna memilih rencana dari `PlanCreatorScreen`, aplikasi akan menampilkan `PlanScreen`, yang memberikan detail lebih lanjut tentang rencana yang dipilih. `Scaffold` digunakan untuk menyusun struktur dasar tampilan pada layar ini, dengan menyertakan app bar, body, dan floating action button. Di dalam `Scaffold`, terdapat widget `Column` yang menyusun dua bagian utama secara vertikal: daftar tugas dan status kelengkapan rencana. `Expanded` memberikan ruang untuk menampilkan daftar tugas yang terkait dengan rencana yang dipilih, dan memungkinkan daftar tersebut digulir jika jumlah tugas lebih banyak dari ruang yang tersedia. `SafeArea` memastikan tampilan aplikasi tidak tertutup oleh area sistem seperti status bar atau navigation bar, dengan memberikan ruang di bagian atas dan bawah agar konten tetap terlihat dengan baik. Terakhir, widget `Text` digunakan untuk menampilkan status kelengkapan rencana, seperti informasi mengenai jumlah tugas yang telah selesai dan yang masih perlu diselesaikan.        
        
3. Lakukan capture hasil dari Langkah 14 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
    > **Jawaban** :  Aplikasi berhasil menampilkan halaman untuk menambah dan mengelola `Plan` yang dapat diakses dari beberapa layar. Pengguna dapat menambah `Plan` baru pada halaman utama, yang kemudian akan muncul di daftar `Master Plans`. Setiap `Plan` dapat diklik untuk membuka layar baru yang berisi detail dari `Plan` tersebut.
    ![hasil](<img/Desain tanpa judul (9).gif>)

1. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !
