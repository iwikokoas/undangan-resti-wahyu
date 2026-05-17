# Panduan Upload Foto ke Supabase Storage

## Persiapan Foto

Siapkan foto-foto berikut dengan nama yang jelas:

### 1. Foto Wajib (Harus Ada)
- **foto-resti.jpg** - Foto pengantin wanita (Resti)
- **foto-wahyu.jpg** - Foto pengantin pria (Wahyu)
- **video-pembuka.mp4** - Video pembuka (opsional, bisa pakai yang lama)
- **breaking-news.jpg** - Foto untuk section breaking news
- **thumbnail.jpg** - Foto utama untuk halaman pertama

### 2. Foto Gallery (Minimal 6 foto)
- **gallery-1.jpg**
- **gallery-2.jpg**
- **gallery-3.jpg**
- **gallery-4.jpg**
- **gallery-5.jpg**
- **gallery-6.jpg**

### 3. Foto Love Story (Opsional - saat ini dimatikan)
- **story-1.jpg** - Episode 1: Pertama bertemu
- **story-2.jpg** - Episode 2: Mulai dekat
- **story-3.jpg** - Episode 3: Lamaran
- **story-4.jpg** - Episode 4: Menuju pernikahan

---

## Langkah-Langkah Upload ke Supabase

### Step 1: Login ke Supabase
1. Buka browser, kunjungi: **https://supabase.com/dashboard**
2. Login dengan akun Anda
3. Anda akan melihat daftar project

### Step 2: Pilih Project
1. Cari dan klik project dengan URL: `jkjhpagjllrvyhuqgcek.supabase.co`
2. Atau cari berdasarkan nama project Anda

### Step 3: Masuk ke Storage
1. Di sidebar kiri, klik menu **"Storage"** (icon folder)
2. Anda akan melihat daftar buckets

### Step 4: Pilih atau Buat Bucket
1. Cari bucket bernama **"foto dan vid"**
2. Jika belum ada, klik **"New bucket"**:
   - Name: `foto dan vid`
   - Public bucket: **Centang** (agar foto bisa diakses publik)
   - Klik **Create bucket**

### Step 5: Upload Foto
1. Klik bucket **"foto dan vid"**
2. Klik tombol **"Upload file"** (icon upload di kanan atas)
3. Pilih foto dari komputer Anda
4. Atau drag & drop foto langsung ke area upload
5. Tunggu sampai upload selesai (ada tanda centang hijau)

**Tips:**
- Upload satu per satu atau beberapa sekaligus
- Gunakan nama file yang jelas (contoh: `foto-resti.jpg`, `gallery-1.jpg`)
- Format yang disarankan: JPG, PNG (untuk foto), MP4 (untuk video)
- Ukuran foto sebaiknya tidak terlalu besar (max 2-3 MB per foto)

### Step 6: Copy URL Foto
Setelah upload selesai:
1. Klik pada foto yang baru diupload
2. Di panel kanan, akan muncul detail foto
3. Klik tombol **"Copy URL"** atau **"Get public URL"**
4. URL akan otomatis tercopy ke clipboard
5. Paste URL tersebut ke notepad/text editor untuk disimpan sementara

**Contoh URL yang akan Anda dapat:**
```
https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/foto-resti.jpg
```

### Step 7: Ulangi untuk Semua Foto
Ulangi Step 5-6 untuk semua foto yang perlu diupload.

**Checklist Upload:**
- [ ] Foto Resti (pengantin wanita)
- [ ] Foto Wahyu (pengantin pria)
- [ ] Foto Breaking News
- [ ] Foto Thumbnail
- [ ] Video Pembuka (opsional)
- [ ] 6 Foto Gallery
- [ ] 4 Foto Love Story (opsional)

---

## Step 8: Update Config.json

Setelah semua foto diupload dan URL sudah dicopy, beritahu saya dengan format:

```
Foto Resti: [URL]
Foto Wahyu: [URL]
Breaking News: [URL]
Thumbnail: [URL]
Video: [URL]
Gallery 1: [URL]
Gallery 2: [URL]
Gallery 3: [URL]
Gallery 4: [URL]
Gallery 5: [URL]
Gallery 6: [URL]
```

Saya akan langsung update file `config.json` untuk Anda.

---

## Troubleshooting

### Foto tidak muncul di website?
- Pastikan bucket **"foto dan vid"** adalah **Public bucket**
- Cek URL foto bisa dibuka di browser
- Pastikan tidak ada typo di URL

### Upload gagal?
- Cek koneksi internet
- Cek ukuran file (jangan terlalu besar)
- Coba refresh halaman Supabase

### Tidak bisa akses Storage?
- Pastikan Anda sudah login
- Pastikan memilih project yang benar
- Cek apakah akun Anda punya akses ke project tersebut

---

## Kontak

Jika ada kendala, screenshot error yang muncul dan beritahu saya.
