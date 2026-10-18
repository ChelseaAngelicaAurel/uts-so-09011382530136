#!/bin/bash
# Nama: Chelsea Angelica Aurel
# Nim: 09011382530136
# Kelas: SKU3B

# Menjalankan backup sebanyak 3 kali dengan jeda 5 detik
for i in {1..3}
do
	echo "Menjalankan backup ke-$i.."
	./script/backup.sh
	if [ $i -lt 3 ]; then
		sleep 5
	fi
done

echo "Semua proses backup loop selesai!"
