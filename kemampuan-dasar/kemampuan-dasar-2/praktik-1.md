# Praktik 1 [Getting Started](https://medium.com/@jonathanmines/the-ultimate-github-collaboration-guide-df816e98fb67).

## **Langkah 1: Inisialisasi Proyek Baru**

Buka Github dan klik tombol '+' di pojok kanan rop dan pilih 'New Repository'.

![img1](https://user-images.githubusercontent.com/111025932/184498287-3218f4c1-03fd-4f26-8c1c-544549282638.png)

Kemudian isi kolom Repository name dan Description. Tetap publik, jangan mengaktifkan checkbox "Initialize this repository with a README" . Jangan mengubah apa pun. Klik "Buat repositori".
 
![img2](https://user-images.githubusercontent.com/111025932/184498330-cc2269c1-b2d2-44ac-ab79-4ca0f7ea5e1c.png)
 
Selanjutnya Anda akan melihat halaman setup. Ini adalah petunjuk untuk menghubungkan Repo yang baru saja Anda buat di Github (Remote) ke direktori yang Anda buat di terminal Anda (Lokal).

sebelumnya buat folder lokal dulu di computer anda dengan nana "github_guide"

Isi command/perintah yang ada di gambar yang ditandai dengan kotak berwarna merah secara satu per satu ke dalam git bash dimulai dengan "echo..." ke terminal saat Anda sedang memasukkan cd ke direktori yang baru saja Anda buat secara lokal.

![img3](https://user-images.githubusercontent.com/111025932/184498333-6ba5f267-f367-4e96-aa0c-cfa4acbfb357.png)

Sekarang mari kita perbarui Repo ini. dengan menmbahkan sebuah file di dalam folder "github_guide" yang telah anda buat.

![img4](https://user-images.githubusercontent.com/111025932/184498334-831f4833-9404-4d29-810a-5868267b30af.png)

Kembali ke terminal Anda dan git add, git commit, dan git Push:

```
$ git add .
$ git commit -m "Second commit"
$ git push
```

![img5](https://user-images.githubusercontent.com/111025932/184498339-4e274fec-ff03-4d73-b520-d4cfbf2e6c61.png)

Sekarang periksa repo Anda. dan lihat file yang telah anda tambahkan di dalam folder "github_guide". seharusnya akan terlihat seperti ini

![img6](https://user-images.githubusercontent.com/111025932/184498343-3e8fd867-e7af-4266-b349-d6fbbe3fbe4b.png)

Anda telah diinisialisasi dan siap untuk mulai bekerja !!

## **Langkah 2: Siapkan Tim Anda**

Anda adalah pemain tim, jadi Anda perlu menambahkan tim Anda ke repo agar mereka dapat berkolaborasi. Setelah tim Anda ditambahkan sebagai kolaborator, mereka akan dapat mendorong, menggabungkan, dan banyak hal merusak lainnya, jadi pastikan Anda hanya menambahkan rekan satu tim Anda.

Klik pada tab "Settings" perwakilan Anda, lalu "Collaborators" lalu cari pengguna Github dan tambahkan mereka dengan mengklik "Add Collaborator":

![img7](https://user-images.githubusercontent.com/111025932/184498347-748b4cfd-3cc3-48a9-9189-ade8fc5f1740.png)

Mereka akan menerima email yang memberitahukan bahwa Anda menambahkan mereka dan akan terdaftar sebagai kolaborator.

![img8](https://user-images.githubusercontent.com/111025932/184498349-fce3127c-2751-44f8-ab66-00c2a025c2ed.png)

Anda ingin berkolaborasi di Repo Github yang sama dengan rekan satu tim Anda. Jika Anda seorang kolaborator, buka halaman Github Repo, Git Clone proyek, dan cd ke direktori.
 
![img9](https://user-images.githubusercontent.com/111025932/184498354-170ab7a2-e681-4c59-b517-94c47e1a292f.png)

```
$ git clone https://github.com/fauzanantony/github_guide.git
$cd github_guide/
```
 
Dan sekarang Anda siap untuk berkolaborasi!!
