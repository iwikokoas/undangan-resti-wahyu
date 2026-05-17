# Cara Membuat Tabel nikahfix di Supabase

Error `Could not find the table 'public.nikahfix'` terjadi karena tabel belum dibuat di database Supabase Anda.

## Langkah-Langkah:

### 1. Login ke Supabase Dashboard
- Buka: https://supabase.com/dashboard
- Login dengan akun Anda
- Pilih project: `jkjhpagjllrvyhuqgcek`

### 2. Masuk ke SQL Editor
- Di sidebar kiri, klik **"SQL Editor"** (icon database)
- Atau klik menu **"Database"** → **"SQL Editor"**

### 3. Jalankan SQL untuk Membuat Tabel
- Klik tombol **"New query"** atau **"+ New Query"**
- Copy-paste SQL berikut ke editor:

```sql
-- Create table nikahfix for wedding guest messages
CREATE TABLE IF NOT EXISTS public.nikahfix (
    id BIGSERIAL PRIMARY KEY,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    name TEXT NOT NULL,
    message TEXT NOT NULL,
    color TEXT DEFAULT 'red'
);

-- Enable Row Level Security (RLS)
ALTER TABLE public.nikahfix ENABLE ROW LEVEL SECURITY;

-- Create policy to allow anyone to read messages
CREATE POLICY "Allow public read access" 
ON public.nikahfix 
FOR SELECT 
TO public 
USING (true);

-- Create policy to allow anyone to insert messages
CREATE POLICY "Allow public insert access" 
ON public.nikahfix 
FOR INSERT 
TO public 
WITH CHECK (true);

-- Create index for better performance
CREATE INDEX IF NOT EXISTS nikahfix_created_at_idx ON public.nikahfix(created_at DESC);

-- Grant permissions
GRANT SELECT, INSERT ON public.nikahfix TO anon;
GRANT SELECT, INSERT ON public.nikahfix TO authenticated;
```

### 4. Eksekusi SQL
- Klik tombol **"Run"** atau tekan **Ctrl+Enter** (Windows) / **Cmd+Enter** (Mac)
- Tunggu sampai muncul pesan sukses: "Success. No rows returned"

### 5. Verifikasi Tabel Sudah Dibuat
- Klik menu **"Table Editor"** di sidebar kiri
- Cari tabel bernama **"nikahfix"**
- Anda akan melihat kolom: `id`, `created_at`, `name`, `message`, `color`

### 6. Test di Website
- Refresh browser di http://localhost:5174/
- Scroll ke bagian **"Wish"** atau **"Ucapan"**
- Coba kirim pesan ucapan
- Pesan seharusnya tersimpan tanpa error

## Struktur Tabel nikahfix:

| Kolom       | Tipe Data    | Deskripsi                          |
|-------------|--------------|-------------------------------------|
| id          | BIGSERIAL    | Primary key (auto increment)        |
| created_at  | TIMESTAMPTZ  | Waktu pesan dibuat (otomatis)       |
| name        | TEXT         | Nama pengirim ucapan                |
| message     | TEXT         | Isi pesan ucapan                    |
| color       | TEXT         | Warna kartu ucapan (red/blue/dll)   |

## Troubleshooting:

### Error: "permission denied for table nikahfix"
- Pastikan RLS policies sudah dibuat (langkah 3)
- Pastikan GRANT permissions sudah dijalankan

### Tabel tidak muncul di Table Editor
- Refresh halaman Supabase Dashboard
- Pastikan SQL berhasil dijalankan tanpa error

### Pesan tidak tersimpan
- Cek di Table Editor apakah ada data baru
- Cek console browser (F12) untuk error
- Pastikan env var `VITE_APP_TABLE_NAME=nikahfix` sudah benar

## File SQL Tersedia:

File `create_nikahfix_table.sql` sudah dibuat di root project untuk referensi Anda.
