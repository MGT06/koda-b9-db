```mermaid
erDiagram
    BUKU {
        number id
        number id_kategori 
        number id_rak 
        string nama
        string halaman
        string penulis
        string penerbit
        year tahun_terbit
    }

    KATEGORI {
        number id 
        string nama
    }

    RAK_BUKU {
        number id 
        string lokasi
        number kapasitas
    }

    PETUGAS {
        number id
        string nama
        number umur
        string posisi
    }

    PEMINJAMAN {
        number id
        number id_petugas
        number id_buku
        string nama_peminjam
    }

    KATEGORI }|--|{ BUKU : dimiliki
    RAK_BUKU ||--o{ BUKU : menyimpan
    BUKU }|--|| PEMINJAMAN : dipinjam
    PETUGAS ||--o{ PEMINJAMAN : mencatat
```

**KATEGORI dan BUKU**
Satu kategori bisa dimiliki oleh banyak buku, dan satu buku dapat memiliki banyak kategori.

**RAK_BUKU dan BUKU**
Satu rak bisa menyimpan banyak buku, tapi satu buku hanya disimpan di satu rak.

**BUKU dan PEMINJAMAN**
Satu buku hanya dapat dipinjam satu dalam satu waktu, dan satu catatan peminjaman dapat meminjam satu atau lebih buku.

**PETUGAS dan PEMINJAMAN**
Satu petugas bisa mencatat banyak peminjaman, tapi satu peminjaman hanya dicatat oleh satu petugas.
