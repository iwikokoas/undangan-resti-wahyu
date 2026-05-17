# Deploy Langsung ke Vercel (Tanpa GitHub)

Karena ada masalah dengan GitHub token, Anda bisa deploy langsung dari local menggunakan Vercel CLI.

## Cara Deploy dari Local:

### Step 1: Install Vercel CLI

```bash
npm install -g vercel
```

### Step 2: Login ke Vercel

```bash
vercel login
```

Pilih metode login (email atau GitHub). Ikuti instruksi di browser.

### Step 3: Deploy

```bash
cd /mnt/d/BOT/undangan
vercel
```

Jawab pertanyaan:
- **Set up and deploy?** → Y
- **Which scope?** → Pilih akun Anda
- **Link to existing project?** → N (jika baru pertama kali)
- **What's your project's name?** → undangan-resti-wahyu (atau nama lain)
- **In which directory is your code located?** → ./ (tekan Enter)
- **Want to override the settings?** → N

### Step 4: Set Environment Variables

Setelah deploy pertama, tambahkan environment variables:

```bash
vercel env add VITE_SUPABASE_URL production
```
Paste: `https://jkjhpagjllrvyhuqgcek.supabase.co`

```bash
vercel env add VITE_SUPABASE_ANON_KEY production
```
Paste: `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpramhwYWdqbGxydnlodXFnY2VrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTY5MDMxNDEsImV4cCI6MjA3MjQ3OTE0MX0.FmGs0c_GW7LnPXa7_bYoNnVQhoinYtotW79iZLRBJBM`

```bash
vercel env add VITE_APP_TABLE_NAME production
```
Paste: `nikahfix`

### Step 5: Deploy Production

```bash
vercel --prod
```

Tunggu sampai selesai. Anda akan dapat URL production seperti:
```
https://undangan-resti-wahyu.vercel.app
```

---

## Atau: Fix GitHub Token & Deploy via GitHub

### Option A: Buat Token Baru

1. Buka: https://github.com/settings/tokens
2. Klik **"Generate new token"** → **"Generate new token (classic)"**
3. Beri nama: `vercel-deploy`
4. Centang permission:
   - ✅ **repo** (semua)
   - ✅ **workflow**
5. Klik **"Generate token"**
6. Copy token yang baru

### Option B: Push Manual dari Git GUI

Jika Anda pakai GitHub Desktop atau Git GUI:
1. Buka aplikasi
2. Commit changes
3. Push to origin

---

## Setelah Deploy Berhasil

1. **Test website** di URL yang diberikan
2. **Buat tabel Supabase** (lihat `CARA_BUAT_TABEL_SUPABASE.md`)
3. **Share link** dengan format:
   ```
   https://your-url.vercel.app/?to=Nama+Tamu
   ```

---

## Troubleshooting

### Error: "Command not found: vercel"
```bash
npm install -g vercel
```

### Error: "Build failed"
Cek log error di terminal atau Vercel dashboard.

### Foto tidak muncul
Pastikan folder `public/images/gallery/` sudah ter-deploy.

---

Pilih salah satu metode di atas yang paling mudah untuk Anda!
