#!/bin/bash
# Nama: Chelsea Angelica Aurel
# Nim: 09011382530136
# Kelas: SKU3B

# Direktori sumber, tujuan, dan log
SOURCE="$HOME/data_09011382530136"
DEST="$HOME/backup_09011382530136"
LOG="$DEST/backup.log"

# Membuat direktori tujuan jika belum ada
mkdir -p "$DEST"

# Menentukan tanggal dan waktu
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
DATETIME=$(date '+Y-%m-%d %H:%M;%S')
ARCHIVE="$DEST/backup_0911382530136_${TIMESTAMP}.tar.gz"
FILELIST=$(mktemp)

# Mencari semua file .txt
find "$SOURCE" -type f -name "*.txt" > "$FILELIST"
COUNT=$(wc -l < "$FILELIST")

# Membuat dan memverifikasi arsip
if [ "$COUNT" -gt 0 ]; then
   if tar -czvf "$ARCHIVE" -T "$FILELIST" > /dev/null 2>&1; then
	tar -tzvf "$ARCHIVE" > /dev/null 2>&1
	SIZE=$(du -h "$ARCHIVE" | awk '{print $1}')
	echo "$DATETIME | $(basename "$ARCHIVE") | $COUNT | $SIZE" >> "$LOG"
   else
	echo "Backup gagal dibuat."
   fi
else
	echo "Tidak ada file .txt untuk di-backup."
fi

# Menghapus daftar sementara
rm -f "$FILELIST"
