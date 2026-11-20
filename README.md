# FillMyDish_mobile

Proyek Akhir Semester Pemrograman Berbasis Platform (E-12), Fakultas Ilmu Komputer Universitas Indonesia

## Anggota Kelompok

| Nama Lengkap | NPM | Modul |
|---|---|---|
| Nadhif Aydin Adinandra | 2506537745 | Profile |
| Musthofa Ridho | 2506606212 | Recipe Finder (Input Bahan) |
| Naira Al Humayda | 2506532233 | Saved Recipe |
| Rona Mahira | 2506657314 | Meal Plan |
| Parsya Rifqi Subhani Petrana | 2506535992 | Review |

## Deskripsi Aplikasi

FillMyDish adalah aplikasi mobile yang memberikan rekomendasi resep dan informasi gizi berdasarkan bahan makanan dan alat masak yang dimiliki pengguna. Aplikasi ini merupakan solusi dari permasalahan yang biasanya dialami oleh anak kos di mana mereka memiliki bahan makanan sisa dan alat masak yang terbatas. Melalui FillMyDish, mereka dapat memanfaatkan bahan tersebut dan menemukan resep yang sesuai agar lebih hemat dan lebih sehat.

## Informasi Proyek

### Modul dan Pembagian Kerja

1. Profile (Nadhif)
Pengguna dapat melihat profil, mengubah informasi akun dan bio, mengunggah foto profil, serta menambahkan tautan media sosial melalui fitur Connection.

2. Recipe Finder (Ridho)
Pengguna dapat mencari resep berdasarkan bahan makanan, alat masak yang dimiliki, dan bahan yang dikecualikan dengan memasukkannya ke form input.

3. Saved Recipe (Naira)
Pengguna dapat menyimpan resep yang disukai dengan button yang terdapat pada detail resep, memberikan kategori pada resep, dan menghapus resep dari tersimpan.

4. Meal Plan (Rona)
Pengguna dapat membuat rencana makan dari resep-resep yang sudah tersimpan dan mengeditnya, seperti menambahkan resep baru atau menghapus resep yang sudah ada.

5. Review (Parsya)
Pengguna dapat memberikan ulasan terhadap website, mengedit ulasan, menghapus ulasan, dan memberikan bintang berdasarkan kepuasan mereka.

### Peran Pengguna

| Peran | Akses di aplikasi |
|---|---|
| Guest (belum login) | Home, cari resep, review (hanya lihat), login/register |
| User | Semua fitur: cari resep, simpan resep, meal plan, review, profil |
| Moderator | Fitur User + halaman log request mencurigakan (flag/clear) |
| Admin (Django admin, hanya di web) | Menyembunyikan review lewat `is_visible`; di aplikasi, review tersebut tidak ditampilkan |

### API
Flutter akan meminta data melalui REST API FillMyDish di Django. Django mengambil data dari database dan mengirimkannya sebagai JSON untuk ditampilkan di Flutter. Spoonacular adalah layanan eksternal yang dipanggil oleh Django untuk mencari resep. Pada Checkpoint 1, navigasi Flutter dan endpoint Django disiapkan terpisah, jadi data API belum ditampilkan di Flutter.

https://spoonacular.com/food-api/docs

### Daftar API Tiap Modul
1. Profile :
2. Recipe Finder :
3. Saved Recipe : GET /api/saved-recipes/
4. Meal Plan : GET /api/meal-plans/ 
5. Review : 

### Figma

https://www.figma.com/files/team/1569679838448420365/folder/655611366?fuid=1687367044933420310
