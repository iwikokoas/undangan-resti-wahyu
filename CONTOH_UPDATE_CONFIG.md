# Contoh Update Config.json

Setelah Anda upload foto dan dapat URL-nya, berikut contoh cara update `config.json`:

## Contoh URL yang Anda Dapat dari Supabase:

```
Foto Resti: https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/foto-resti.jpg
Foto Wahyu: https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/foto-wahyu.jpg
Breaking News: https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/breaking-news.jpg
Thumbnail: https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/thumbnail.jpg
Video: https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/video-pembuka.mp4
Gallery 1: https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/gallery-1.jpg
Gallery 2: https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/gallery-2.jpg
Gallery 3: https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/gallery-3.jpg
Gallery 4: https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/gallery-4.jpg
Gallery 5: https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/gallery-5.jpg
Gallery 6: https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/gallery-6.jpg
```

## Cara Memberikan URL ke Saya:

Cukup copy-paste format di atas dengan URL yang benar, lalu kirim ke saya. Contoh:

```
Foto Resti: https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/resti-cantik.jpg
Foto Wahyu: https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/wahyu-ganteng.jpg
...
```

Saya akan otomatis update file `src/data/config.json` untuk Anda.

## Atau Cara Manual (Jika Ingin Edit Sendiri):

1. Buka file: `src/data/config.json`
2. Cari bagian yang ingin diupdate
3. Ganti URL lama dengan URL baru

### Contoh Edit Foto Pengantin:

**Sebelum:**
```json
"pegantin": {
  "wanita": {
    "foto": "https://ypmnoiirxuqyierdbwkl.supabase.co/storage/v1/object/public/foto%20dan%20vid/ikok.jpg",
    ...
  },
  "pria": {
    "foto": "https://ypmnoiirxuqyierdbwkl.supabase.co/storage/v1/object/public/foto%20dan%20vid/gege.jpg",
    ...
  }
}
```

**Sesudah:**
```json
"pegantin": {
  "wanita": {
    "foto": "https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/foto-resti.jpg",
    ...
  },
  "pria": {
    "foto": "https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/foto-wahyu.jpg",
    ...
  }
}
```

### Contoh Edit Gallery:

**Sebelum:**
```json
"gallery": [
  "https://ypmnoiirxuqyierdbwkl.supabase.co/storage/v1/object/public/foto%20dan%20vid/6.jpg",
  "https://ypmnoiirxuqyierdbwkl.supabase.co/storage/v1/object/public/foto%20dan%20vid/1.jpg",
  ...
]
```

**Sesudah:**
```json
"gallery": [
  "https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/gallery-1.jpg",
  "https://jkjhpagjllrvyhuqgcek.supabase.co/storage/v1/object/public/foto%20dan%20vid/gallery-2.jpg",
  ...
]
```

## Setelah Update Config:

1. Save file `config.json`
2. Refresh browser di http://localhost:5174/
3. Foto-foto baru akan langsung muncul

## Tips:

- Pastikan URL tidak ada spasi
- Pastikan URL diawali dengan `https://`
- Pastikan URL diakhiri dengan ekstensi file (`.jpg`, `.png`, `.mp4`)
- Jika foto tidak muncul, coba buka URL di browser untuk memastikan bisa diakses
