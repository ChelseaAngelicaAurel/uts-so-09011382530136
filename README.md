# uts-so-09011382530136

## 1. Identitas
- **Nama:** Chelsea Angelica Aurel
- **Nim:** 09011382530136
- **Kelas:** SKU3B

## 2. Deskripsi
script ini dirancang untuk melakukan pencarian file .txt pada direktori sumber secara otomatis, mengarsipkan dan mengompersikan menjadi file .tar.gz dengan penamaan timestamp (tanggal dan jam), serta mencatat riwayat log setiap proses backup. Script backup_loop.sh memungkinkan eksekusi otomatis di background dengan kontrol job control.

## 3. Cara menjalankan
- **Memberikan izin eksekusi script:**
  `chmod +x script/*.sh`
- **Menjalankan backup sekali:**
  `./script/backup.sh`
- **Menjalankan backup berulang (background):**
  `./script/backup_loop.sh & 
- **Menggunakan alias:**
  `bk136`

## 4. Fitur Pengembangan
- Rotasi arsip: menyimpan 5 arsip terbaru dan menghapus arsip lama secara otomatis.

## 5. Bukti Job Control
```bash
./script/backup_loop.sh &
jobs -l
fg
# Tekan Ctrl+z
bg
ps x
kill <PID>

## 6. Kendala dan solusi 
- **Kendala:** Terjadi kendala autentifikasi token saat menjalankan perintah `git push` dari VirtualBOX.
- **Solusi:** Membuat personal Access Token (classic) baru pada akun GitHub dengan mencentang scope `repo`.
