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

## **Langkah 3: Berkolaborasi**
 
Saat Anda menggunakan git untuk mengerjakan proyek yang sama dengan banyak orang, ada satu aturan utama yang harus Anda ikuti:

**CABANG UTAMA HARUS SELALU DIPLOYABLE**

Cara agar Master dapat digunakan adalah dengan membuat cabang baru untuk fitur baru dan menggabungkannya ke dalam Master setelah selesai. Inilah cara kerjanya.

### *__Langkah 3a: Cabang (Branch)__*

Untuk memulai, cabang harus selalu mewakili fitur. Misalnya, jika Anda ingin menambahkan kemampuan bagi pengguna untuk masuk, Anda mungkin harus membuat cabang yang disebut "user_authentication" dan di cabang itu Anda hanya perlu memperbarui apa yang Anda perlukan untuk memungkinkan pengguna masuk.

Penting juga saat berkolaborasi agar tim Anda memilih fitur yang tidak memiliki kode yang tumpang tindih. Misalnya, Anda tidak boleh mengerjakan cabang "user_login" pada saat yang sama dengan rekan satu tim Anda bekerja di cabang "user_logout" karena kemungkinan Anda mengerjakan file yang sama dan menulis kode yang tumpang tindih sangat tinggi .

Jadi katakanlah Anda ingin membuat model Pengguna. Di terminal Anda, buat cabang baru:

```
$ git checkout -b create_user
```
“checkout” yang digunakan untuk berpindah antar cabang. Menambahkan "-b" dan nama di akhir membuat cabang baru dan kemudian pindah ke cabang baru itu untuk kita.

Anda bisa melihat apakah kita sudah membuat cabang baru dengan cara

```
$ git branch
```
Yang harus menghasilkan:

![img10](https://user-images.githubusercontent.com/111025932/184518567-3e853e89-2892-46e5-b766-60425a9f2337.png)

Anda sekarang berada di cabang baru dan dapat mulai membuat kode.

Catatan: Sebagai aturan umum, Anda harus sering git add dan git commit ketika Anda menyelesaikan sesuatu yang memungkinkan kode Anda berfungsi (berakhir menjadi beberapa kali dalam satu jam). Misalnya, ketika Anda menyelesaikan suatu metode dan basis kode berfungsi, git commit seperti ini:

```
$ git commit -m "test branch baru"
```

*pastikan sebelumnya anda sudah membuat file terlebih dahulu sebelum **$ git commit** anda bebas membuat file apa saja

```
(use "git add/rm <file>..." to update what will be committed)
```

jika sudah menambahkan sebuah file di dalam branch "create_user" maka anda bisa melakukan **$ git commit**

### *__Langkah 3b: Mengirimkan Permintaan Pull__*

Tim Anda menghabiskan sepanjang hari dan malam mengerjakan fitur terpisah mereka di berbagai cabang mereka. Mereka kembali keesokan harinya dengan fitur lengkap mereka dan ingin menggabungkan mereka kembali ke Master untuk digunakan.

Pertama, tentukan siapa yang akan bertanggung jawab menangani penggabungan. Semakin sedikit orang yang bertindak secara independen dalam penggabungan, semakin baik sehingga untuk tim yang terdiri dari 4 orang, Anda mungkin perlu memiliki satu "Reviewer" atau "Merge Master" resmi.

Selanjutnya, minta semua orang git Push cabang mereka:

```
$ git push -u origin create_user
```

Sekarang pergi ke halaman Repo Github. Anda akan melihat cabang yang Anda dorong di bilah kuning di bagian atas halaman dengan tombol "Compare & Pull Request".

![img11](https://user-images.githubusercontent.com/111025932/184518568-76c56ccf-cdf8-46c5-a7cb-fe8c14b6b1fc.png)

Klik "Compare & Pull Request". Ini akan membawa Anda ke halaman "Buka permintaan Pull". Dari sini, Anda harus menulis deskripsi singkat tentang apa yang sebenarnya Anda ubah. Dan Anda harus mengklik tab “Reviewers” ​​dan memilih siapa pun yang diputuskan oleh tim Anda sebagai “Merge Master”. Setelah selesai, klik "Create pull request".

![img12](https://user-images.githubusercontent.com/111025932/184518569-135633d0-f5b3-4173-8264-c9f7f888c5c1.png)

### *__Langkah 3c: Menggabungkan Permintaan Pull__*

Perhatikan bahwa jika Anda seorang kolaborator, Anda dapat menggabungkan permintaan pull Anda sendiri. Namun, sekali lagi, jika Anda bekerja dalam tim, lebih masuk akal jika satu orang melakukan semua penggabungan dan semua orang lainnya mengirimkan "Pull Request" dan menetapkan "Penggabungan Utama" sebagai peninjau hanya untuk memastikan Anda berurusan dengan konflik gabungan apa pun satu cabang pada satu waktu.

Jadi, dengan asumsi Anda adalah orang yang bertanggung jawab untuk mengurus semua penggabungan dan seseorang telah menugaskan Anda sebagai "Peninjau" pada permintaan Pull, ketika Anda masuk ke Github Anda, Anda akan melihat Anda memiliki pemberitahuan yang memberi tahu Anda bahwa seseorang telah menugaskan Anda sebagai pengulas. Anda juga akan melihat bilah kuning yang menunjukkan salah satu rekan tim Anda sebagai “meminta ulasan Anda pada permintaan Pull ini.”

Silakan dan klik tombol “Add your review”

![img13](https://user-images.githubusercontent.com/111025932/184518570-70b4ed13-939d-492c-b508-86df51856528.png)

![img14](https://user-images.githubusercontent.com/111025932/184518571-4bdfb7b8-e310-450c-bc3b-71af6ef141f1.png)

Saat Anda puas dengan pull request, pergi ke bagian bawah pull request dan klik “Merge pull request”.

![img15](https://user-images.githubusercontent.com/111025932/184518572-f8e83280-ace9-4677-bfa6-a9c6f49cf9a6.png)

Anda kemudian akan melihat pesan "Pull request successfully merged and closed" dan tombol "Delete branch" yang harus Anda klik.

![img16](https://user-images.githubusercontent.com/111025932/184518574-8b7fde57-7558-4e26-812d-69c9ea0b1839.png)

## Selesai !!
