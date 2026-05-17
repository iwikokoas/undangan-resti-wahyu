# Panduan Deploy ke Vercel

## Persiapan Sebelum Deploy

### 1. Pastikan Semua Perubahan Sudah Disimpan
File yang sudah diupdate:
- ✅ `config.json` - Data pengantin dan acara
- ✅ `index.html` - Meta tags
- ✅ `detail-info/index.jsx` - Google Maps
- ✅ Foto-foto sudah ada di `public/images/gallery/`

### 2. Commit Perubahan ke Git

```bash
# Tambahkan semua perubahan
git add .

# Commit dengan pesan
git commit -m "Update data pernikahan Resti & Wahyu"

# Push ke GitHub
git push origin main
```

---

## Cara Deploy ke Vercel (2 Metode)

### Metode 1: Deploy via Website Vercel (Paling Mudah)

#### Step 1: Login ke Vercel
1. Buka: https://vercel.com
2. Klik **"Sign Up"** atau **"Login"**
3. Login dengan **GitHub** (pilih "Continue with GitHub")
4. Authorize Vercel untuk akses GitHub Anda

#### Step 2: Import Project
1. Setelah login, klik tombol **"Add New..."** atau **"New Project"**
2. Pilih **"Import Git Repository"**
3. Cari repository: **iwikokoas/undangan**
4. Klik **"Import"**

#### Step 3: Configure Project
Di halaman konfigurasi:

**Framework Preset:**
- Pilih: **Vite**

**Root Directory:**
- Biarkan default (root)

**Build Command:**
- Otomatis terisi: `npm run build`
- Atau manual: `vite build`

**Output Directory:**
- Otomatis terisi: `dist`

**Environment Variables:**
Klik **"Add Environment Variable"** dan tambahkan:

| Name | Value |
|------|-------|
| `VITE_SUPABASE_URL` | `https://jkjhpagjllrvyhuqgcek.supabase.co` |
| `VITE_SUPABASE_ANON_KEY` | `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpramhwYWdqbGxydnlodXFnY2VrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTY5MDMxNDEsImV4cCI6MjA3MjQ3OTE0MX0.FmGs0c_GW7LnPXa7_bYoNnVQhoinYtotW79iZLRBJBM` |
| `VITE_APP_TABLE_NAME` | `nikahfix` |

#### Step 4: Deploy
1. Klik tombol **"Deploy"**
2. Tunggu proses build (2-5 menit)
3. Setelah selesai, Anda akan dapat URL seperti: `https://undangan-xxx.vercel.app`

#### Step 5: Custom Domain (Opsional)
1. Di dashboard project, klik tab **"Settings"**
2. Klik **"Domains"**
3. Tambahkan domain custom Anda (jika punya)

---

### Metode 2: Deploy via Vercel CLI (Advanced)

#### Step 1: Install Vercel CLI
```bash
npm install -g vercel
```

#### Step 2: Login
```bash
vercel login
```
Pilih login dengan GitHub atau email.

#### Step 3: Deploy
```bash
# Di folder project
cd /mnt/d/BOT/undangan

# Deploy
vercel
```

Ikuti prompt:
- Set up and deploy? **Y**
- Which scope? Pilih akun Anda
- Link to existing project? **N** (jika baru pertama kali)
- What's your project's name? **undangan** (atau nama lain)
- In which directory is your code located? **./** (enter)
- Want to override the settings? **N**

#### Step 4: Set Environment Variables
```bash
vercel env add VITE_SUPABASE_URL
# Paste: https://jkjhpagjllrvyhuqgcek.supabase.co

vercel env add VITE_SUPABASE_ANON_KEY
# Paste: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...

vercel env add VITE_APP_TABLE_NAME
# Paste: nikahfix
```

#### Step 5: Deploy Production
```bash
vercel --prod
```

---

## Setelah Deploy

### 1. Test Website
Buka URL yang diberikan Vercel, contoh:
```
https://undangan-resti-wahyu.vercel.app
```

Test fitur:
- ✅ Foto-foto muncul
- ✅ Video bisa diputar
- ✅ Google Maps muncul
- ✅ Form ucapan bisa diisi (setelah tabel Supabase dibuat)

### 2. Share Link Undangan
Format link dengan nama tamu:
```
https://undangan-resti-wahyu.vercel.app/?to=Bapak+Budi
https://undangan-resti-wahyu.vercel.app/?to=Ibu+Siti
```

### 3. Update Otomatis
Setiap kali Anda push ke GitHub, Vercel akan otomatis rebuild dan deploy:
```bash
git add .
git commit -m "Update foto"
git push origin main
```

---

## Troubleshooting

### Build Failed
**Error: "Command failed: npm run build"**
- Cek apakah ada error di code
- Test build di local: `npm run build`
- Lihat log error di Vercel dashboard

### Foto Tidak Muncul
**Foto dari `/images/gallery/` tidak muncul**
- Pastikan folder `public/images/gallery/` sudah di-commit ke git
- Cek apakah file foto sudah di-push ke GitHub
- Path harus `/images/...` bukan `./images/...`

### Environment Variables Tidak Terbaca
**Error: "Cannot read Supabase URL"**
- Pastikan env vars sudah ditambahkan di Vercel dashboard
- Nama harus persis: `VITE_SUPABASE_URL` (bukan `SUPABASE_URL`)
- Redeploy setelah menambah env vars

### Form Ucapan Error
**Error: "Could not find table nikahfix"**
- Buat tabel di Supabase dulu (lihat `CARA_BUAT_TABEL_SUPABASE.md`)
- Pastikan `VITE_APP_TABLE_NAME=nikahfix` sudah di-set

---

## Tips

1. **Preview Deployment**: Setiap push ke branch selain `main` akan membuat preview deployment
2. **Rollback**: Bisa rollback ke deployment sebelumnya di Vercel dashboard
3. **Analytics**: Aktifkan Vercel Analytics untuk lihat traffic
4. **Custom Domain**: Bisa pakai domain sendiri (gratis)

---

## Kontak Support

Jika ada masalah:
1. Cek Vercel deployment logs
2. Cek browser console (F12) untuk error
3. Screenshot error dan beritahu saya

Selamat! Website undangan Anda siap online! 🎉
