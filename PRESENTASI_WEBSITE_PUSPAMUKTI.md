# 📋 Panduan Presentasi & Speaker Notes Website Desa Puspamukti
**Program KKN Universitas Perjuangan Tasikmalaya 2026**  
*Website Resmi & Portal E-Government Desa Puspamukti, Kecamatan Cigalontang, Kabupaten Tasikmalaya*

---

## 🎯 Struktur Alur Presentasi (Overview Flow)

1. **Pembukaan & Latar Belakang** (Kenapa website ini dibangun)
2. **Eksplorasi Portal Publik** (Wajah transparansi & informasi desa untuk masyarakat)
3. **Eksplorasi Portal Warga Mandiri** (Digitalisasi pelayanan administrasi warga)
4. **Eksplorasi Panel Administrasi Desa** (Pusat kendali mandiri untuk perangkat desa)
5. **Keamanan, Performa & Keberlanjutan** (Teknologi, RLS Supabase, tanpa biaya lisensi bulanan)
6. **Penutup & Serah Terima**

---

---

# 🌐 BAGIAN 1: PORTAL PUBLIK (PUBLIC FRONTEND)

---

### 1. Halaman Beranda (`/`)
* **Tujuan Halaman:** Sebagai etalase utama desa yang menampilkan identitas, dinamika kegiatan, potensi desa, dan akses cepat ke seluruh layanan.
* **Poin Pembicaraan (Talking Points):**
  - *"Selamat pagi/siang Bapak Kepala Desa, jajaran perangkat desa, dan hadirin sekalian. Ini adalah halaman utama website resmi Desa Puspamukti."*
  - **Running Ticker:** Memberikan *update* pengumuman dinamis dan jam operasional kantor desa secara seketika.
  - **Sambutan Kepala Desa & Ketua PKK:** Menampilkan figur kepemimpinan desa yang ramah dan siap melayani.
  - **Statistik Cepat (Live Counters):** Menampilkan ringkasan jumlah penduduk, dusun, RW, dan RT yang tersinkronisasi langsung dari database kependudukan.
  - **Layanan Cepat & Berita Unggulan:** Warga bisa langsung mengakses administrasi surat atau membaca kabar desa terbaru tanpa harus mencari-cari menu.
  - **Peta Interaktif Mini:** Memudahkan pengunjung luar mencari titik koordinat Kantor Desa Puspamukti.
* **Aksi Demo Saat Presentasi:**
  - *Scroll* perlahan dari atas ke bawah untuk memperlihatkan animasi transisi yang halus dan responsif.
  - Tunjukkan bahwa peta di bagian bawah otomatis dimuat secara cepat (*lazy-loaded*).

---

### 2. Profil Desa (`/profil`)
* **Tujuan Halaman:** Menyajikan data historis, filosofi, serta visi dan misi pembangunan Desa Puspamukti.
* **Poin Pembicaraan (Talking Points):**
  - *"Di halaman Profil Desa, kami mendokumentasikan rekam jejak sejarah berdirinya Desa Puspamukti, batas-batas wilayah administratif, hingga visi-misi resmi kepala desa."*
  - Menjadi media pengenalan identitas desa yang elegan bagi dinas, instansi luar, calon investor, maupun perantau.
* **Aksi Demo:**
  - Tunjukkan kartu visi & misi serta peta tapak batas wilayah.

---

### 3. Data Statistik Kependudukan (`/profil/data-statistik`)
* **Tujuan Halaman:** Menampilkan visualisasi data demografi desa secara transparan, berbasis data riil (*data-driven*).
* **Poin Pembicaraan (Talking Points):**
  - *"Salah satu pilar desa cerdas adalah keterbukaan data kependudukan."*
  - Halaman ini merangkum grafik dan persentase:
    1. Rasio jumlah penduduk laki-laki dan perempuan.
    2. Persebaran penduduk berdasarkan kelompok usia (anak-anak, produktif, lansia).
    3. Komposisi mata pencaharian utama warga (petani, wiraswasta, buruh, PNS, dll.).
    4. Tingkat pendidikan warga serta sebaran per dusun.
  - Data ini dapat diperbarui sewaktu-waktu oleh admin desa cukup dari panel admin tanpa menyentuh kode program.
* **Aksi Demo:**
  - Arahkan kursor ke kartu-kartu statistik dan sorot angka-angka persentase.

---

### 4. Desa Wisata & Potensi Alam (`/profil/desa-wisata`)
* **Tujuan Halaman:** Mempromosikan daya tarik pariwisata alam, agrowisata, dan kekayaan budaya Desa Puspamukti ke tingkat regional maupun nasional.
* **Poin Pembicaraan (Talking Points):**
  - *"Puspamukti memiliki potensi alam yang sangat asri di lereng pegunungan Cigalontang."*
  - Halaman ini berfungsi sebagai brosur digital untuk menarik wisatawan luar datang ke destinasi desa (misalnya curug, perkebunan, maupun jalur wisata alam).
  - Setiap destinasi dilengkapi foto beresolusi tinggi, kategori, dan deskripsi aksesibilitas.
* **Aksi Demo:**
  - Klik salah satu kartu wisata untuk memperlihatkan detail informasi tempat dan foto.

---

### 5. Pemerintahan & Kelembagaan LKD (`/pemerintahan`)
* **Tujuan Halaman:** Menampilkan transparansi struktur eksekutif desa dan lembaga kemitraan kemasyarakatan.
* **Poin Pembicaraan (Talking Points):**
  - *"Masyarakat berhak mengetahui siapa aparatur yang melayani mereka dan bidang tugas masing-masing."*
  - **Fitur Zoom Bagan Struktur Pemdes:** Dilengkapi fitur *lightbox* interaktif sehingga bagan struktur organisasi dapat diperbesar dengan sangat jelas di layar laptop maupun ponsel.
  - **Daftar Aparatur Lengkap:** Foto dan jabatan masing-masing perangkat desa.
  - **Tab Lembaga Kemasyarakatan Desa (LKD):** Informasi pengurus BPD, LPMD, PKK, Karang Taruna, MUI, hingga Satlinmas dapat ditinjau per tab dengan rapi.
* **Aksi Demo:**
  - Klik tombol **"Perbesar Bagan"** untuk mendemokan modal zoom struktur organisasi.
  - Klik tab antar-lembaga (misal dari BPD ke PKK) untuk memperlihatkan transisi data pengurus.

---

### 6. Layanan Publik & Panduan Surat (`/layanan`)
* **Tujuan Halaman:** Memandu warga mengenai syarat dan alur pengurusan dokumen administrasi desa agar tidak perlu bolak-balik karena berkas kurang.
* **Poin Pembicaraan (Talking Points):**
  - *"Seringkali warga datang ke kantor desa namun berkasnya belum lengkap. Halaman ini menyelesaikan masalah tersebut."*
  - Menjelaskan syarat lengkap untuk pembuatan: Surat Keterangan Usaha (SKU), Keterangan Tidak Mampu (SKTM), Pengantar KTP/KK, Keterangan Domisili, Surat Kematian/Kelahiran, dll.
  - Tersedia tautan langsung bagi warga yang ingin mengajukan surat secara mandiri dari rumah melalui Portal Warga.
* **Aksi Demo:**
  - Buka accordion salah satu layanan (misal SKTM) untuk memperlihatkan daftar syarat berkasnya.

---

### 7. Transparansi Anggaran APBDes (`/transparansi`)
* **Tujuan Halaman:** Mewujudkan komitmen desa anti-korupsi dan transparan dalam pengelolaan keuangan dana desa.
* **Poin Pembicaraan (Talking Points):**
  - *"Keterbukaan anggaran adalah mandat undang-undang dan komitmen keterbukaan Pemerintah Desa Puspamukti."*
  - Menyajikan infografis visual: Pendapatan Asli Desa (PADes), Dana Desa (DD), Alokasi Dana Desa (ADD), Belanja Pembangunan, serta Pembinaan Kemasyarakatan.
  - Dilengkapi persentase realisasi anggaran tahun berjalan.
* **Aksi Demo:**
  - Tunjukkan perbandingan visual pendapatan vs belanja desa.

---

### 8. Berita & Pengumuman Desa (`/informasi/media` & Detail Berita)
* **Tujuan Halaman:** Media komunikasi resmi satu pintu untuk melawan hoaks dan mengabarkan keberhasilan program desa.
* **Poin Pembicaraan (Talking Points):**
  - *"Semua kegiatan posyandu, musrenbangdes, penyaluran bantuan sosial, hingga festival desa dipublikasikan di sini."*
  - **Fitur Filter Kategori & Pencarian Instan:** Warga bisa mencari berita berdasarkan topik (Pemerintahan, Pembangunan, Kesehatan, dll.).
  - **Tombol Berbagi Cepat (WhatsApp & Facebook):** Memudahkan perangkat desa atau warga menyebarkan kabar desa ke grup WhatsApp RT/RW hanya dengan 1 klik.
* **Aksi Demo:**
  - Coba ketikkan kata kunci di kotak pencarian berita untuk melihat penyaringan langsung.
  - Klik salah satu berita untuk membuka halaman detail artikel, lalu tunjukkan tombol *Share WhatsApp*.

---

### 9. Peta Wilayah Interaktif GIS (`/informasi/peta`)
* **Tujuan Halaman:** Sistem Informasi Geografis (SIG) interaktif berbasis satelit Google Maps untuk pemetaan fasilitas desa.
* **Poin Pembicaraan (Talking Points):**
  - *"Desa Puspamukti kini memiliki peta digital modern berbasis satelit."*
  - Menampilkan titik-titik krusial seperti Kantor Desa, Masjid, Sekolah, Sarana Kesehatan, dan Lapangan Olahraga.
  - Terdapat tombol *toggle* pergantian antara **Google Maps (Jalan)** dan **Google Maps (Satelit)** untuk melihat bentang alam desa secara riil.
  - Mendukung poligon batas wilayah resmi (GeoJSON).
* **Aksi Demo:**
  - Klik tombol "Google Maps (Satelit)" untuk mengubah tampilan menjadi citra satelit bumi.
  - Klik salah satu pin penanda di peta untuk memunculkan popup informasi lokasi.

---

### 10. Siaga Bencana & Zona Khusus (`/informasi/bencana` & `/informasi/zona-khusus`)
* **Tujuan Halaman:** Pusat mitigasi keselamatan warga terhadap potensi bencana alam (longsor/banjir) di wilayah Cigalontang.
* **Poin Pembicaraan (Talking Points):**
  - *"Mengingat topografi wilayah pegunungan, halaman ini disiapkan untuk kesiapsiagaan darurat."*
  - Menampilkan status siaga terkini, kontak darurat cepat (Posko Desa, BPBD, Damkar, Babinsa, Ambulans), dan lokasi titik kumpul evakuasi.
  - **Formulir Lapor Bencana Darurat:** Warga yang melihat titik longsor atau pohon tumbang bisa langsung melapor dengan mencantumkan lokasi dan detail kejadian.
* **Aksi Demo:**
  - Tunjukkan nomor darurat dan tombol buka modal laporan darurat.

---

### 11. Regulasi & Produk Hukum Desa (`/regulasi`)
* **Tujuan Halaman:** Repositori hukum digital yang memuat Peraturan Desa (Perdes), Perkades, dan Keputusan Kepala Desa.
* **Poin Pembicaraan (Talking Points):**
  - *"Arsip peraturan desa kini tersimpan rapi dan dapat diunduh oleh siapa saja dalam format PDF."*
  - Memudahkan warga maupun lembaga BPD mengakses landasan hukum kebijakan desa tanpa perlu mencari dokumen fisik di lemari arsip.
* **Aksi Demo:**
  - Tunjukkan tombol unduh dokumen regulasi.

---

### 12. Katalog BUMDes (`/bumdes`)
* **Tujuan Halaman:** Mendorong ekonomi desa dan mempromosikan unit usaha BUMDes serta produk UMKM warga.
* **Poin Pembicaraan (Talking Points):**
  - *"BUMDes sebagai lokomotif ekonomi desa memiliki etalase digital untuk memasarkan produk lokal seperti komoditas pertanian, olahan makanan, dan jasa desa."*
  - Dilengkapi kontak pemesanan langsung via WhatsApp pengelola BUMDes.
* **Aksi Demo:**
  - Tunjukkan kartu produk dan tombol hubungi penjual/BUMDes.

---

### 13. Kontak & Formulir Suara Warga (`/kontak`)
* **Tujuan Halaman:** Saluran komunikasi resmi dan formulir pengaduan aspirasi masyarakat online.
* **Poin Pembicaraan (Talking Points):**
  - *"Website ini bukan hanya satu arah, tetapi dua arah. Warga bisa menyampaikan saran, aspirasi, maupun pengaduan."*
  - **Validasi Lengkap:** Wajib memasukkan NIK 16 digit yang valid dan nama lengkap agar pengaduan dapat dipertanggungjawabkan (menghindari spam/hoaks).
  - Pesan yang dikirim langsung masuk ke panel admin untuk ditindaklanjuti aparatur desa.
* **Aksi Demo:**
  - Tunjukkan indikator counter 16 digit NIK saat mengetik angka.
  - Tunjukkan popup konfirmasi sukses saat pengaduan terkirim.

---

### 14. Halaman Tim KKN UNPER 2026 (`/tim-kkn`)
* **Tujuan Halaman:** Dokumentasi pengabdian mahasiswa KKN Universitas Perjuangan Tasikmalaya di Desa Puspamukti.
* **Poin Pembicaraan (Talking Points):**
  - *"Halaman ini merupakan persembahan kami, tim KKN UNPER 2026, sebagai bentuk kenang-kenangan dan pertanggungjawaban atas proker digitalisasi desa."*
  - Menampilkan sambutan Kormades (Sandi Rahmat Pamungkas), Penanggung Jawab Website (Fahri Muhamad Firdaus), foto bersama resmi di kantor desa, serta profil 14 anggota tim dari berbagai disiplin ilmu.

---

---

# 👥 BAGIAN 2: PORTAL MANDIRI WARGA (CITIZEN SELF-SERVICE)

---

### 15. Login Portal Warga (`/warga/login`)
* **Tujuan Halaman:** Autentikasi aman bagi warga desa tanpa perlu menghafal kata sandi rumit.
* **Poin Pembicaraan (Talking Points):**
  - *"Bagaimana warga masuk ke sistem? Cukup menggunakan NIK 16 digit dan Tanggal Lahir resmi yang tercatat di database kependudukan desa."*
  - Sistem mencocokkan input secara aman ke tabel `penduduk` Supabase secara *real-time*.
  - Dilengkapi validasi format jika NIK kurang dari 16 digit.
* **Aksi Demo:**
  - Masukkan salah satu NIK dan tanggal lahir contoh warga terdaftar, lalu klik Masuk.

---

### 16. Dasbor Mandiri Warga (`/warga`)
* **Tujuan Halaman:** Pusat layanan digital untuk warga yang telah login.
* **Poin Pembicaraan (Talking Points):**
  - *"Setelah warga masuk, mereka disambut dasbor pribadi dengan data identitas resmi mereka."*
  - **Fitur 1: Permohonan Surat Online:** Warga dapat memilih jenis surat (SKU, SKTM, Domisili, dll.), mengisi keperluan, dan mengajukannya tanpa perlu antre di kantor desa.
  - **Fitur 2: Pelacakan Status Surat:** Warga bisa memantau apakah surat mereka masih *Menunggu*, *Diproses*, atau *Selesai*.
  - **Fitur 3: Riwayat Pengaduan:** Memantau respons pemerintah desa terhadap aduan yang pernah dikirim.
* **Aksi Demo:**
  - Simulasikan pengisian permohonan surat baru dan tunjukkan kartu status pengajuannya.

---

### 17. Verifikasi Keaslian Surat Digital (`/verifikasi`)
* **Tujuan Halaman:** Memvalidasi keaslian dokumen resmi desa yang dikeluarkan secara digital.
* **Poin Pembicaraan (Talking Points):**
  - *"Surat yang diterbitkan desa dilengkapi QR Code dan nomor unik verifikasi."*
  - Siapa pun (pihak bank, sekolah, atau instansi lain) dapat mengecek nomor surat di halaman ini untuk memastikan bahwa surat tersebut sah dikeluarkan oleh Pemerintah Desa Puspamukti.
* **Aksi Demo:**
  - Masukkan nomor registrasi surat untuk melihat status keabsahan dokumen.

---

---

# ⚙️ BAGIAN 3: PANEL ADMINISTRATOR DESA (BACKOFFICE ADMIN)

---

### 18. Login Panel Admin (`/admin/login`)
* **Tujuan Halaman:** Gerbang masuk aman berstandar enkripsi Supabase Auth untuk aparatur desa.
* **Poin Pembicaraan (Talking Points):**
  - *"Hanya aparatur yang terdaftar resmi di database Supabase Auth yang dapat mengelola konten website."*
  - Akun resmi: `puspamuktidesa@gmail.com`.
  - Dilengkapi sistem proteksi *Zero-Delay Synchronous Auth Gate* (mencegah akses tanpa login).
* **Aksi Demo:**
  - Masuk menggunakan email admin resmi dan password.

---

### 19. Dasbor Pusat Kendali Admin (`/admin`)
* **Tujuan Halaman:** Memberikan ringkasan metrik utama operasional website desa dalam satu layar.
* **Poin Pembicaraan (Talking Points):**
  - *"Di halaman beranda admin, aparatur langsung melihat ringkasan: Total Berita, Pengaduan Belum Diproses, Permohonan Surat Masuk, dan Total Penduduk."*
  - Navigasi menu samping yang intuitif memudahkan admin berpindah modul kerja.

---

### 20. Modul-Modul Pengelolaan Admin
Sampaikan secara ringkas bahwa setiap aspek website dapat diedit dengan mudah (CRUD: Tambah, Edit, Hapus, Filter):
* **`/admin/berita`:** Menulis artikel kegiatan desa, mengunggah foto, dan menentukan status Terbit/Draft.
* **`/admin/aparatur`:** Mengubah susunan staf perangkat desa, mengunggah foto kades/perangkat, dan memperbarui bagan struktur organisasi.
* **`/admin/warga`:** Mengelola master data penduduk desa (NIK, nama, alamat, status keluarga).
* **`/admin/surat`:** Menyetujui atau menolak permohonan surat warga, mengubah status surat menjadi Selesai.
* **`/admin/pengaduan`:** Membaca aspirasi masuk dari warga dan mengubah status penanganan aduan.
* **`/admin/transparansi`:** Memperbarui rincian APBDes tahun berjalan (Pendapatan & Belanja).
* **`/admin/bencana` & `/admin/zona-khusus`:** Memperbarui status siaga bencana dan daftar wilayah rawan.
* **`/admin/bumdes` & `/admin/wisata`:** Menambah produk UMKM desa dan destinasi pariwisata.
* **`/admin/peta`:** Menambahkan titik koordinat sarana umum baru di Google Maps.
* **`/admin/panduan`:** Buku petunjuk operasional lengkap yang sudah tertanam langsung di dalam sistem agar admin desa baru dapat langsung belajar secara mandiri.

---

---

# 🛡️ BAGIAN 4: KEUNGGULAN TEKNIS & KEBERLANJUTAN (TECHNICAL ADVANTAGES)

* **Poin Pembicaraan (Talking Points):**
  1. **Kecepatan & Performa Tinggi (Astro Static Site Generation):**
     - Website memuat halaman dalam hitungan milidetik karena telah di-generate secara statis.
     - Gambar telah dioptimasi ke format generasi terbaru (WebP) yang menghemat bandwidth lebih dari 70%.
  2. **100% Database Cloud Terintegrasi (Supabase PostgreSQL):**
     - Tidak ada data statis palsu. Semua data tersimpan aman di cloud PostgreSQL dengan keamanan *Row Level Security* (RLS).
  3. **Biaya Pemeliharaan Rp 0 (Free Hosting & Free Tier Cloud):**
     - Hosting menggunakan infrastruktur global Vercel (Gratis & Cepat).
     - Database menggunakan Supabase Free Tier yang sangat leluasa untuk operasional desa.
     - Desa tidak dibebani biaya langganan bulanan software.
  4. **Responsif di Semua Perangkat:**
     - Tampilan otomatis menyesuaikan layar smartphone (Android/iPhone), tablet, maupun laptop.

---

---

# 🎬 BAGIAN 5: PENUTUP & KATA-KATA SERAH TERIMA

* **Contoh Kalimat Penutup Presentasi:**
  > *"Bapak Kepala Desa dan seluruh jajaran Pemerintah Desa Puspamukti yang kami hormati, kehadiran website ini kami harapkan dapat menjadi langkah awal transformasi digital Desa Puspamukti menuju desa yang mandiri, transparan, dan berdaya saing tinggi.*
  > 
  > *Seluruh sistem, database, hak akses administrator, dan buku panduan operasional hari ini kami serahkan seutuhnya kepada Pemerintah Desa Puspamukti. Kami mahasiswa KKN UNPER 2026 mengucapkan terima kasih yang sebesar-besarnya atas bimbingan dan kehangatan seluruh warga Puspamukti.*
  > 
  > *Demikian presentasi dari kami, waktu kami kembalikan untuk sesi tanya jawab dan diskusi. Terima kasih. Wassalamu’alaikum Warahmatullahi Wabarakatuh."*

