Berikut draf PRD yang telah diperbarui dengan memasukkan struktur navigasi lengkap dari website terdahulu pada modul **Portal Publik**:

---

# Product Requirement Document (PRD)

**Nama Proyek:** Redesain & Pembangunan Website Portal & Admin Desa Puspamukti

**Klien/Mitra:** Pemerintah Desa Puspamukti, Kec. Cigalontang, Kab. Tasikmalaya

**Target Selesai:** 30 Hari (Program Kerja KKN)

**Infrastruktur & Stack:** Astro JS, React (shadcn/ui), Supabase (PostgreSQL & Auth), Vercel, Domain `.id`

---

## 1. Latar Belakang & Tujuan

* **Latar Belakang:** Website sebelumnya (`desapuspamukti.id`) dinilai kurang terstruktur. Perlu dilakukan *rebuild* total dari nol untuk menghadirkan platform digital desa yang informatif, cepat, dan aman tanpa menghilangkan struktur navigasi penting yang sudah dikenal warga.
* **Tujuan Utama:**
1. Menyediakan **Portal Publik** yang memuat profil desa, regulasi, BUMDes, informasi layanan, dan struktur organisasi (14 aparatur desa).


2. Menyediakan **Panel Dashboard Admin** dengan *Role-Based Access Control* (RBAC) untuk mengelola data desa dan konten harian.
3. Meminimalisir biaya operasional desa dengan memanfaatkan infrastruktur *free-tier* skala produksi (Vercel + Supabase) sehingga desa hanya membayar perpanjangan domain harian/tahunan.



---

## 2. Pengguna & Akses Role (RBAC)

| Role | Target Pengguna | Hak Akses |
| --- | --- | --- |
| **Public / Warga** | Masyarakat umum | Membaca berita, mengakses seluruh menu navigasi publik, download regulasi/formulir. |
| **Super Admin** | Operator Utama / Tim KKN | Akses penuh ke seluruh sistem, kelola user/role, konfigurasi website. |
| **Admin Desa / Sekdes** | Pak Irwan Subarna (Sekdes) / Kaur

 | Kelola berita, galeri, pengumuman, dokumen regulasi/BUMDes, dan data publik. |
| **Kadus (Kepala Dusun)** | Kadus 1 s.d. Kadus 5

 | Memperbarui berita/pengumuman dan data wilayah di dusun masing-masing. |

---

## 3. Spesifikasi Fitur

### A. Front-End: Portal Publik Desa (Astro JS - SSG)

1. **Header & Navigation (Navbar Utama):**
Logo Desa (*Sejati Diri Bertaji*) serta menu navigasi responsif (Mobile Friendly) yang mencakup:


* **Beranda:** *Hero Section* (Ucapan Selamat Datang), Sambutan Kades (Atang Ridwan), *Quick Stats* desa, serta rangkuman berita/pengumuman terbaru.


* **Profil Desa:** Visi & Misi, Sejarah Singkat, Peta Wilayah, dan Potensi Desa.
* **Regulasi Desa:** Daftar dan *unduh* dokumen Peraturan Desa (Perdes), SK Kades, dan dokumen hukum/kebijakan publik lainnya.
* **Informasi Desa:** Berita desa, agenda kegiatan, pengumuman resmi, dan transparansi anggaran (APBDes).
* **BUMDes & KDMP:** Informasi unit usaha BUMDes (Badan Usaha Milik Desa), produk UMKM desa, dan program KDMP (Kader Desa Melek Pengetahuan/Digital).
* **Pemerintahan Desa:** Tampilan bagan/profil interaktif memuat 14 Aparatur Desa (Kades, Sekdes, Staff Khusus, 3 Kaur, 1 Staff Kaur, 3 Kasi, 5 Kadus) beserta foto resmi, serta daftar lembaga desa (BPD & LPMD).


* **Layanan Publik:** Informasi prosedur pengurusan surat-menyurat, syarat administratif, dan pengunduhan formulir permohonan.
* **Kontak:** Alamat kantor desa, jam operasional, lokasi Google Maps, nomor darurat, serta formulir pengaduan/pesan warga.



### B. Back-End: Dashboard Admin (Astro Hybrid + React shadcn/ui + Supabase)

1. **Sistem Autentikasi:**
* Login/Logout dengan Supabase Auth.
* Proteksi halaman admin berdasarkan *Session* dan *Role*.


2. **Modul Kelola Konten (CRUD):**
* **Kelola Berita & Informasi Desa:** Tambah, edit, hapus berita/agenda + *upload* gambar banner ke Supabase Storage.
* **Kelola Dokumen & Regulasi:** *Upload* dan update berkas PDF Perdes/SK Kades.
* **Kelola BUMDes & KDMP:** Update informasi produk, unit usaha, atau kegiatan kader desa.
* **Kelola Aparatur Desa:** Update nama, jabatan, dan foto 14 struktur organisasi jika terjadi perubahan.


* **Kelola Layanan & Formulir:** Update syarat pengurusan surat dan file formulir *download*.


3. **Modul User Management (Super Admin):** Tambah/edit akun perangkat desa dan atur *role* (Admin Desa / Kadus).

---

## 4. Non-Functional Requirements (Kualitas Sistem)

* **Performa:** *PageSpeed Score* > 90/100 pada halaman portal publik (keuntungan menggunakan Astro).
* **Keamanan:** Implementation Row Level Security (RLS) di Supabase, proteksi serangan CSRF/XSS, dan HTTPS terenkripsi penuh melalui Vercel.
* **Biaya Operasional:** Rp 0/bulan untuk hosting & database (Free-tier Vercel + Supabase).
* **Responsif:** Tampilan optimal di smartphone (HP) warga hingga layar monitor desktop.

---

## 5. Rencana Jadwal Kerja (Timeline 30 Hari)

```text
[Minggu 1] -----------> [Minggu 2] -----------> [Minggu 3] -----------> [Minggu 4]
Setup Proyek &         Supabase Auth &         Fitur CRUD Admin &      Testing, Domain
Portal Publik (Astro)   Dashboard (shadcn)     Role Restriction        & Handover Desa

```

* **Minggu 1 (Hari 1-7): Setup & Front-End Portal Publik**
* Setup repository Git + Astro + Tailwind CSS.
* Selesaikan kodingan Navbar (8 Menu Utama) & Halaman Publik (Beranda, Profil, Regulasi, BUMDes, 14 Aparatur Desa, dll.).


* *Deliverable:* Tampilan depan website lengkap dengan seluruh halaman menu sudah bisa diakses dan didemonstrasikan ke Kades.


* **Minggu 2 (Hari 8-14): Database & Auth Admin**
* Konfigurasi Supabase (Tabel `profiles`, `news`, `regulations`, `bumdes`, `staff`, dll.).
* Integrasi adapter `@astrojs/vercel` + Supabase Auth.
* Buat Layout Dashboard Admin menggunakan `shadcn-ui`.


* **Minggu 3 (Hari 15-21): Fitur Dashboard & Hak Akses**
* Buat formulir CRUD untuk Berita, Regulasi, BUMDes, Layanan, dan Data Perangkat Desa.
* Konfigurasi pembatasan menu berdasarkan Role (Super Admin, Sekdes, Kadus).




* **Minggu 4 (Hari 22-30): Finishing, Domain & Serah Terima**
* Testing akhir di berbagai perangkat (Mobile & Desktop).
* Direct Domain kustom (`desapuspamukti.id`) ke Vercel.
* Buat panduan singkat (Buku Petunjuk Admin) dan edukasi/pelatihan ke operator desa.



---