-- 1. Tabel Perangkat Desa / Aparatur
CREATE TABLE IF NOT EXISTS perangkat_desa (
    id SERIAL PRIMARY KEY,
    nama TEXT NOT NULL,
    jabatan TEXT NOT NULL,
    kategori TEXT NOT NULL CHECK (kategori IN ('pemdes', 'bpd', 'lpmd')),
    foto_url TEXT,
    urutan INTEGER DEFAULT 0,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW())
);

-- 2. Tabel Berita & Pengumuman
CREATE TABLE IF NOT EXISTS berita (
    id SERIAL PRIMARY KEY,
    judul TEXT NOT NULL,
    kategori TEXT NOT NULL,
    tanggal TEXT NOT NULL,
    status TEXT NOT NULL CHECK (status IN ('Terbit', 'Draft')),
    isi TEXT NOT NULL,
    gambar_url TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW())
);

-- 3. Tabel Agenda Desa
CREATE TABLE IF NOT EXISTS agenda (
    id SERIAL PRIMARY KEY,
    nama TEXT NOT NULL,
    tanggal TEXT NOT NULL,
    waktu TEXT NOT NULL,
    lokasi TEXT NOT NULL,
    penyelenggara TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW())
);

-- 4. Tabel Kelembagaan & Layanan Publik
CREATE TABLE IF NOT EXISTS layanan_kelembagaan (
    id SERIAL PRIMARY KEY,
    nama TEXT NOT NULL,
    tipe TEXT NOT NULL CHECK (tipe IN ('Kelembagaan', 'Layanan Publik')),
    desc_singkat TEXT NOT NULL,
    pengurus TEXT[], -- Array untuk susunan pengurus
    syarat TEXT[],   -- Array untuk syarat berkas
    icon TEXT,       -- Path SVG icon
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW())
);

-- 5. Tabel Regulasi Desa
CREATE TABLE IF NOT EXISTS regulasi (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    category TEXT NOT NULL CHECK (category IN ('Peraturan Desa', 'Perkades', 'SK Kades')),
    date TEXT NOT NULL,
    size TEXT NOT NULL,
    file_url TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW())
);

-- 6. Tabel Desa Wisata
CREATE TABLE IF NOT EXISTS wisata (
    id SERIAL PRIMARY KEY,
    nama TEXT NOT NULL,
    kategori TEXT NOT NULL,
    deskripsi TEXT NOT NULL,
    gambar_url TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW())
);

-- 7. Tabel Statistik Kependudukan
CREATE TABLE IF NOT EXISTS statistik (
    id SERIAL PRIMARY KEY,
    total_penduduk INTEGER NOT NULL,
    total_kk INTEGER NOT NULL,
    total_pria INTEGER NOT NULL,
    total_wanita INTEGER NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW())
);

-- 8. Tabel Pengaduan Warga
CREATE TABLE IF NOT EXISTS pengaduan (
    id SERIAL PRIMARY KEY,
    pengirim TEXT NOT NULL,
    nik TEXT NOT NULL,
    kategori TEXT NOT NULL,
    isi TEXT NOT NULL,
    tanggal TEXT NOT NULL,
    status TEXT NOT NULL CHECK (status IN ('Belum Diproses', 'Sedang Diproses', 'Selesai')),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW())
);

-- 9. Tabel Pengaturan Kontak
CREATE TABLE IF NOT EXISTS pengaturan_kontak (
    id SERIAL PRIMARY KEY,
    alamat TEXT NOT NULL,
    email TEXT NOT NULL,
    telepon TEXT NOT NULL,
    gmaps_link TEXT,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW())
);

-- ==========================================
-- SEED DATA AWAL (INITIAL SEED DATA)
-- ==========================================

-- Seed Perangkat Desa
INSERT INTO perangkat_desa (nama, jabatan, kategori, urutan) VALUES
('Bapak Atang Ridwan', 'Kepala Desa', 'pemdes', 1),
('Bapak Irwan Subarna', 'Sekretaris Desa', 'pemdes', 2),
('Bapak Asep Dani', 'Staff Khusus Kepala Desa', 'pemdes', 3),
('Bapak Hadis', 'Kasi Pemerintahan', 'pemdes', 4),
('Ibu Ai Herniawati', 'Kasi Kesra', 'pemdes', 5),
('Ibu Ai Sri Mulyani', 'Kasi Pelayanan', 'pemdes', 6),
('Ibu Liyaa Nurawaliya', 'Kaur TU & Umum', 'pemdes', 7),
('Bapak Irpan Abimanyu', 'Kaur Perencanaan', 'pemdes', 8),
('Bapak Oman Suherman', 'Kaur Keuangan', 'pemdes', 9),
('Ibu Wina', 'Staff Kaur Keuangan', 'pemdes', 10),
('Bapak Dede Kartiwa', 'Kadus 1 (Cipicung)', 'pemdes', 11),
('Bapak Udin Saripudin', 'Kadus 2 (Ngenol)', 'pemdes', 12),
('Ibu Neni Heryani', 'Kadus 3 (Kiarabongkok)', 'pemdes', 13),
('Ibu Nike Heryani', 'Kadus 4 (Salawi, Palawija)', 'pemdes', 14),
('Bapak Ismail Marjuki', 'Kadus 5 (Parung, Cikadu, Puncaksuji)', 'pemdes', 15);

-- Seed BPD & LPMD (Keanggotaan khusus)
INSERT INTO perangkat_desa (nama, jabatan, kategori, urutan) VALUES
('Bapak Hadis', 'Ketua BPD', 'bpd', 1),
('Bapak Supriatna', 'Wakil Ketua BPD', 'bpd', 2),
('Ibu Nike Heryani', 'Sekretaris BPD', 'bpd', 3),
('Bapak Oman Suherman', 'Ketua LPMD', 'lpmd', 1),
('Bapak Irwan Subarna', 'Sekretaris LPMD', 'lpmd', 2);

-- Seed Berita
INSERT INTO berita (judul, kategori, tanggal, status, isi) VALUES
('Milangkala ke-43, Desa Puspamukti Mandiri', 'Pembangunan', '12 Jan 2026', 'Terbit', 'Pencapaian luar biasa diraih oleh pemerintahan Desa Puspamukti yang kini resmi menyandang status sebagai Desa Mandiri...'),
('Bupati Tasikmalaya Hadiri Safari Tarawih Keliling', 'Kegiatan', '24 Feb 2026', 'Terbit', 'Kegiatan safari tarawih keliling yang bertempat di Masjid Agung Puspamukti ini dihadiri langsung oleh pimpinan daerah...');

-- Seed Agenda
INSERT INTO agenda (nama, tanggal, waktu, lokasi, penyelenggara) VALUES
('Musyawarah Desa (Musdes) RKPDes', '15 Maret 2026', '09:00 WIB - Selesai', 'Balai Desa Puspamukti', 'BPD & Pemdes'),
('Posyandu Balita Melati I', '20 Maret 2026', '08:00 - 12:00 WIB', 'Dusun Cipicung (Posyandu 1)', 'PKK & Kader');

-- Seed Statistik
INSERT INTO statistik (total_penduduk, total_kk, total_pria, total_wanita) VALUES
(4250, 1320, 2140, 2110);

-- Seed Pengaturan Kontak
INSERT INTO pengaturan_kontak (alamat, email, telepon, gmaps_link) VALUES
('Jl. Raya Desa Puspamukti No. 1, Kec. Cigalontang, Kab. Tasikmalaya, Jawa Barat 46463', 'puspamuktidesa@gmail.com', '0812-3456-7890', 'https://maps.google.com/?q=Desa+Puspamukti+Cigalontang');

-- Seed Layanan & Kelembagaan
INSERT INTO layanan_kelembagaan (nama, tipe, desc_singkat, pengurus, syarat, icon) VALUES
('BPD', 'Kelembagaan', 'Badan Permusyawaratan Desa', ARRAY['Ketua: Hadis', 'Wakil Ketua: Supriatna', 'Sekretaris: Nike Heryani'], NULL, 'M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2 M9 7a4 4 0 1 0 0-8 4 4 0 0 0 0 8z M23 21v-2a4 4 0 0 0-3-3.87 M16 3.13a4 4 0 0 1 0 7.75'),
('LPMD', 'Kelembagaan', 'Lembaga Pemberdayaan Masyarakat Desa', ARRAY['Ketua: Oman Suherman', 'Sekretaris: Irwan Subarna'], NULL, 'm8 3 4 8 5-5 5 15H2L8 3z'),
('SKTM', 'Layanan Publik', 'Surat Keterangan Tidak Mampu (Desil 1-5)', NULL, ARRAY['Surat Pengantar RT/RW', 'Fotokopi KTP & KK', 'Surat Pernyataan Tidak Mampu bermeterai Rp 10.000', 'Bukti terdaftar DTKS / Desil 1-5'], 'M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z');

-- 10. Tabel Transparansi Anggaran (APBDes)
CREATE TABLE IF NOT EXISTS apbdes (
    id SERIAL PRIMARY KEY,
    tahun INTEGER NOT NULL UNIQUE,
    
    -- PENDAPATAN
    pendapatan_asli_desa BIGINT DEFAULT 0,
    dana_desa BIGINT DEFAULT 0,
    alokasi_dana_desa BIGINT DEFAULT 0,
    bantuan_provinsi BIGINT DEFAULT 0,
    bantuan_kabupaten BIGINT DEFAULT 0,
    pendapatan_lain BIGINT DEFAULT 0,
    
    -- BELANJA
    belanja_pegawai BIGINT DEFAULT 0,
    belanja_barang_jasa BIGINT DEFAULT 0,
    belanja_modal BIGINT DEFAULT 0,
    belanja_tak_terduga BIGINT DEFAULT 0,
    
    -- DOKUMEN / GAMBAR (Opsional)
    gambar_infografis_url TEXT,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW())
);

-- Seed APBDes
INSERT INTO apbdes (tahun, pendapatan_asli_desa, dana_desa, alokasi_dana_desa, bantuan_provinsi, bantuan_kabupaten, pendapatan_lain, belanja_pegawai, belanja_barang_jasa, belanja_modal, belanja_tak_terduga) VALUES
(2025, 25000000, 950000000, 300000000, 130000000, 50000000, 10000000, 350000000, 400000000, 600000000, 10000000);

-- 11. Tabel Kependudukan (Warga)
CREATE TABLE IF NOT EXISTS penduduk (
    id SERIAL PRIMARY KEY,
    nik VARCHAR(16) UNIQUE NOT NULL,
    nama TEXT NOT NULL,
    tanggal_lahir DATE NOT NULL,
    jenis_kelamin VARCHAR(15),
    rt_rw VARCHAR(10),
    status_bantuan TEXT DEFAULT 'Tidak Menerima',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW())
);

-- 12. Tabel Permohonan E-Surat Warga
CREATE TABLE IF NOT EXISTS permohonan_surat (
    id SERIAL PRIMARY KEY,
    nomor_surat TEXT,
    nik VARCHAR(16) NOT NULL,
    nama TEXT NOT NULL,
    rt_rw VARCHAR(10),
    jenis_surat TEXT NOT NULL,
    keperluan TEXT NOT NULL,
    keterangan_tambahan TEXT,
    status TEXT NOT NULL DEFAULT 'Menunggu Persetujuan',
    catatan_admin TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW())
);

-- RLS E-Surat
ALTER TABLE permohonan_surat ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Allow public read permohonan_surat" ON permohonan_surat FOR SELECT USING (true);
CREATE POLICY "Allow all operations permohonan_surat" ON permohonan_surat FOR ALL USING (true) WITH CHECK (true);

-- Seed Data Permohonan E-Surat
INSERT INTO permohonan_surat (nomor_surat, nik, nama, rt_rw, jenis_surat, keperluan, keterangan_tambahan, status) VALUES
('470/012/Pemdes/2026', '3206001122334455', 'Asep Nugraha', '01/02', 'Surat Keterangan Usaha (SKU)', 'Persyaratan Pengajuan KUR Bank BRI', 'Usaha Warung Kelontong & Pertanian', 'Disetujui'),
(NULL, '3206009988776655', 'Siti Aminah', '03/04', 'Surat Keterangan Tidak Mampu (SKTM)', 'Persyaratan Beasiswa Pendidikan Anak', 'Keperluan Sekolah SMA Negeri 1', 'Menunggu Persetujuan');

-- RLS Pengaduan Warga
ALTER TABLE pengaduan ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Allow public read pengaduan" ON pengaduan FOR SELECT USING (true);
CREATE POLICY "Allow all operations pengaduan" ON pengaduan FOR ALL USING (true) WITH CHECK (true);
