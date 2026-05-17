# Upload ke Project Baru (GitHub + Vercel)

Panduan lengkap membuat repository GitHub baru dan deploy ke Vercel.

---

## Metode 1: Buat Repo Baru via GitHub Website (Paling Mudah)

### Step 1: Buat Repository Baru di GitHub

1. **Login ke GitHub**: https://github.com
2. **Klik tombol "+"** di pojok kanan atas → **"New repository"**
3. **Isi form:**
   - **Repository name**: `undangan-resti-wahyu` (atau nama lain)
   - **Description**: `Website undangan pernikahan Resti & Wahyu`
   - **Public** atau **Private**: Pilih sesuai keinginan
   - **JANGAN centang** "Add a README file"
   - **JANGAN centang** "Add .gitignore"
   - **JANGAN centang** "Choose a license"
4. **Klik "Create repository"**

### Step 2: Connect Local ke Repo Baru

Setelah repo dibuat, GitHub akan tampilkan instruksi. Copy URL repo Anda, contoh:
```
https://github.com/username/undangan-resti-wahyu.git
```

Jalankan di terminal:

```bash
cd /mnt/d/BOT/undangan

# Hapus remote lama
git remote remove origin

# Tambah remote baru
git remote add origin https://github.com/USERNAME/undangan-resti-wahyu.git

# Push ke repo baru
git push -u origin main
```

**Jika diminta login:**
- Username: `username GitHub Anda`
- Password: `Personal Access Token` (bukan password biasa)

### Step 3: Deploy ke Vercel

1. **Login Vercel**: https://vercel.com
2. **Klik "Add New..."** → **"Project"**
3. **Import Git Repository**
4. **Pilih repo baru**: `undangan-resti-wahyu`
5. **Configure Project:**
   - Framework Preset: **Vite**
   - Build Command: `npm run build`
   - Output Directory: `dist`
6. **Add Environment Variables:**
   ```
   VITE_SUPABASE_URL = https://jkjhpagjllrvyhuqgcek.supabase.co
   VITE_SUPABASE_ANON_KEY = eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpramhwYWdqbGxydnlodXFnY2VrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTY5MDMxNDEsImV4cCI6MjA3MjQ3OTE0MX0.FmGs0c_GW7LnPXa7_bYoNnVQhoinYtotW79iZLRBJBM
   VITE_APP_TABLE_NAME = nikahfix
   ```
7. **Klik "Deploy"**

---

## Metode 2: Upload via GitHub Desktop (Untuk Pemula)

### Step 1: Install GitHub Desktop

Download: https://desktop.github.com/

### Step 2: Login ke GitHub Desktop

1. Buka GitHub Desktop
2. **File** → **Options** → **Accounts**
3. **Sign in** dengan akun GitHub

### Step 3: Publish Repository

1. **File** → **Add Local Repository**
2. Pilih folder: `/mnt/d/BOT/undangan`
3. Klik **"Add Repository"**
4. Klik **"Publish repository"**
5. Isi:
   - **Name**: `undangan-resti-wahyu`
   - **Description**: `Website undangan pernikahan`
   - Centang **"Keep this code private"** jika mau private
6. Klik **"Publish Repository"**

### Step 4: Deploy ke Vercel

Ikuti **Step 3** dari Metode 1 di atas.

---

## Metode 3: Deploy Langsung Tanpa GitHub (Tercepat)

Jika tidak mau ribet dengan GitHub, deploy langsung dari local:

### Step 1: Install Vercel CLI

```bash
npm install -g vercel
```

### Step 2: Login & Deploy

```bash
cd /mnt/d/BOT/undangan
vercel login
vercel
```

Jawab pertanyaan:
- **Set up and deploy?** → `Y`
- **Which scope?** → Pilih akun Anda
- **Link to existing project?** → `N`
- **What's your project's name?** → `undangan-resti-wahyu`
- **In which directory is your code located?** → `./` (Enter)
- **Want to override the settings?** → `N`

### Step 3: Set Environment Variables

```bash
vercel env add VITE_SUPABASE_URL production
# Paste: https://jkjhpagjllrvyhuqgcek.supabase.co

vercel env add VITE_SUPABASE_ANON_KEY production
# Paste: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...

vercel env add VITE_APP_TABLE_NAME production
# Paste: nikahfix
```

### Step 4: Deploy Production

```bash
vercel --prod
```

Selesai! Anda akan dapat URL seperti: `https://undangan-resti-wahyu.vercel.app`

---

## Cara Buat Personal Access Token (Jika Diperlukan)

Jika push ke GitHub diminta password, gunakan Personal Access Token:

### Step 1: Buat Token

1. Buka: https://github.com/settings/tokens
2. Klik **"Generate new token"** → **"Generate new token (classic)"**
3. **Note**: `vercel-deploy`
4. **Expiration**: `90 days` (atau sesuai kebutuhan)
5. **Select scopes** - Centang:
   - ✅ **repo** (semua sub-checkbox)
   - ✅ **workflow**
6. Scroll ke bawah, klik **"Generate token"**
7. **COPY TOKEN** (hanya muncul sekali!)

### Step 2: Gunakan Token

Saat git push diminta password, paste **token** (bukan password GitHub).

**Atau simpan token di git:**

```bash
git config --global credential.helper store
git push
# Masukkan username dan token, akan tersimpan
```

---

## Perbandingan Metode

| Metode | Kelebihan | Kekurangan |
|--------|-----------|------------|
| **GitHub Website** | Kontrol penuh, bisa kolaborasi | Perlu setup token |
| **GitHub Desktop** | Paling mudah untuk pemula | Perlu install aplikasi |
| **Vercel CLI** | Paling cepat, tidak perlu GitHub | Tidak ada version control di GitHub |

---

## Rekomendasi

- **Pemula**: Gunakan **GitHub Desktop** (Metode 2)
- **Cepat**: Gunakan **Vercel CLI** (Metode 3)
- **Profesional**: Gunakan **GitHub Website** (Metode 1)

---

## Setelah Deploy

1. ✅ Test website di URL yang diberikan
2. ✅ Buat tabel `nikahfix` di Supabase (lihat `CARA_BUAT_TABEL_SUPABASE.md`)
3. ✅ Share link undangan: `https://your-url.vercel.app/?to=Nama+Tamu`

---

## Troubleshooting

### Error: "Permission denied"
- Pastikan token punya permission **repo** dan **workflow**
- Atau gunakan Metode 3 (Vercel CLI)

### Error: "Build failed"
- Cek apakah `node_modules` tidak ter-upload (sudah ada di .gitignore)
- Cek environment variables sudah benar

### Foto tidak muncul
- Pastikan folder `public/images/gallery/` ter-upload
- Cek path di `config.json` sudah benar

---

Pilih metode yang paling cocok untuk Anda! 🚀
