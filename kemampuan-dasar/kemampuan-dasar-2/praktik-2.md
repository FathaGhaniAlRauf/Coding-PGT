# Praktik 2 [Team Collaboration with Github](https://code.tutsplus.com/articles/team-collaboration-with-github--net-29876).

## **Alat 1 : Menambahkan Anggota Tim**

Secara umum ada dua cara menyiapkan Github untuk kolaborasi tim, yaitu :

1. **Organization** - Pemilik organisasi dapat membuat banyak tim dengan tingkat izin yang berbeda untuk berbagai repositori

2. **Collaborators** - Pemilik repositori dapat menambahkan kolaborator dengan akses Baca + Tulis untuk satu repositori

### **Organization**
Jika Anda mengawasi beberapa tim dan ingin menetapkan tingkat izin yang berbeda untuk setiap tim dengan berbagai anggota dan menambahkan setiap anggota ke repositori yang berbeda, maka Organisasi akan menjadi pilihan terbaik. Setiap akun pengguna Github sudah dapat membuat Organisasi gratis untuk repositori kode sumber terbuka. Untuk membuat Organisasi, cukup telusuri ke halaman pengaturan organisasi Anda :

![img17](https://user-images.githubusercontent.com/111025932/184530998-4ce25d80-1ade-4083-b215-411abcdd4a82.png)

Untuk mengakses halaman tim untuk Organisasi Anda, Anda cukup membuka untuk
 ```
 http://github.com/organizations/[organization-name]/teams 
 ``` 
 melihatnya atau bahkan mengunjungi 
 ```
 https://github.com/organizations/[organization-name]/teams/new 
 ```
 untuk membuat tim baru dengan anggota dari 3 tingkat izin yang berbeda seperti :  
 1. **Pull Only** : Ambil dan Gabungkan dengan repositori lain atau salinan lokal. Akses hanya baca.
 2. **Push & Pull** : (1) bersamaan dengan pembaruan repo jarak jauh. Akses Baca + Tulis.
 3. **Push, Pull, & Administrative** : (1), (2) bersama dengan hak atas info penagihan, membuat tim, serta membatalkan akun Organisasi. Baca + Tulis + Akses admin

![github-team-create-team](https://user-images.githubusercontent.com/111033936/184523005-7615e417-12b6-439f-8877-34e43d684737.png)

### **Collaborators**
Kolaborator digunakan untuk memberikan akses Baca + Tulis ke satu repositori yang dimiliki oleh akun pribadi. Untuk menambahkan Collaborators , (akun pribadi Github lainnya) cukup buka :
```
https://github.com/[username]/[repo-name]/settings/collaboration
```
![github-team-collaborator](https://user-images.githubusercontent.com/111033936/184523026-8786968f-3fcc-4d88-b2b7-a74a69cebfed.png)

Atau, Klik pada tab "Settings" perwakilan Anda, lalu "Collaborators" lalu cari pengguna Github dan tambahkan mereka dengan mengklik "Add Collaborator":

![img7](https://user-images.githubusercontent.com/111025932/184498347-748b4cfd-3cc3-48a9-9189-ade8fc5f1740.png)

Mereka akan menerima email yang memberitahukan bahwa Anda menambahkan mereka dan akan terdaftar sebagai kolaborator.

![img8](https://user-images.githubusercontent.com/111025932/184498349-fce3127c-2751-44f8-ab66-00c2a025c2ed.png)

Anda ingin berkolaborasi di Repo Github yang sama dengan rekan satu tim Anda. Jika Anda seorang kolaborator, buka halaman Github Repo, Git Clone proyek, dan cd ke direktori.
 
![img9](https://user-images.githubusercontent.com/111025932/184498354-170ab7a2-e681-4c59-b517-94c47e1a292f.png)

```
$ git clone https://github.com/FathaGhaniAlRauf/github_guide.git
$cd github_guide/
```
 
Dan sekarang Anda siap untuk berkolaborasi!  

## **Alat 2 : Pull Request**

Fork & Pull Model - Digunakan di repositori publik yang tidak memiliki akses push
Share Repository Model - Digunakan dalam repositori pribadi yang kita miliki akses push. Fork tidak diperlukan adalah case ini.

1. Identifikasi Github Repository yang ingin Anda kontribusikan, dan klik tombol "Fork" untuk membuat tiruan dari repositori di akun Github Anda sendiri:

![github-team-fork](https://user-images.githubusercontent.com/111033936/184523140-f7711c14-c099-4daf-b768-849271e19613.png)

2. Ini akan membuat salinan persis dari repositori di akun Anda sendiri

![github-team-forked](https://user-images.githubusercontent.com/111033936/184523147-09a101b6-5bac-463c-89a7-8d4f9d7a5055.png)

3. Pilih URL SSH sehingga akan meminta kata kunci SSH Anda, bukan nama pengguna dan kata sandi setiap kali Anda git push atau git pull. Selanjutnya, kita akan mengkloning repositori ini ke komputer lokal:
```
$ git clone [ssh-url] [folder-name]
$ cd [folder-name]
```

4. Pilih URL SSH sehingga akan meminta kata kunci SSH Anda, bukan nama pengguna dan kata sandi setiap kali Anda git push atau git pull. Selanjutnya, kita akan mengkloning repositori ini ke komputer lokal:

```
$ git clone [ssh-url] [folder-name]
$ cd [folder-name]
```

5. Setelah membuat penambahan yang relevan untuk membangun fitur-fitur baru, kita hanya akan melakukan perubahan baru dan checkout ke git master branch:
```
$ git add .
$ git commit -m "information added in readme"
$ git checkout master
```

6. Pada titik ini, kita akan mendorong cabang ke repositori jarak jauh. Untuk ini kita akan memeriksa nama cabang dengan fitur baru serta alias git remote repository. Lalu kita akan mendorong perubahan menggunakan git push [git-remote-alias] [branch-name]:
```
$ git branch
* master
readme
$ git remote -v
origin  git@github.com:[forked-repo-owner-username]/[repo-name].git (fetch)
origin  git@github.com:[forked-repo-owner-username]/[repo-name].git (push)
$ git push origin readme
```
7. Di halaman Github repositori bercabang, kita akan beralih ke cabang dengan fitur baru dan kemudian tekan tombol "Pull Request".

![github-team-pull-request](https://user-images.githubusercontent.com/111033936/184523238-d94ad635-3395-4b17-a0dc-0104ca8e3702.png)

8. Setelah mengirimkan pull request, itu akan langsung membawa kita ke halaman pull request repositori asli. Kita akan melihat pull request, baik sebagai masalah baru maupun pull request baru.

![github-team-pull-request-sent](https://user-images.githubusercontent.com/111033936/184523249-4c96a80c-9627-4fa2-993f-92e9e7c7acb1.png)

9. Setelah diskusi, mungkin pemilik repositori bercabang mungkin ingin menambahkan perubahan pada fitur baru. Dalam hal ini, kita akan melakukan pembayaran ke cabang yang sama di komputer lokal, menjalankannya, dan mendorongnya kembali ke Github. Ketika kita mengunjungi halaman pull request dari repositori asli, itu akan secara otomatis diperbarui!

![github-team-pull-request-2](https://user-images.githubusercontent.com/111033936/184523258-3a710b67-26c5-46a7-8951-6712d198126d.png)
![github-team-merge](https://user-images.githubusercontent.com/111033936/184523288-ac7d8d92-5878-470d-b10e-39fc2ec2d6c3.png)

### **Penggabungan Pull Request**

Jika Anda adalah pemilik repositori asli, ada dua cara untuk menggabungkan permintaan tarik yang masuk:

1. **Menggabungkan langsung di Github** : Jika kita menggabungkan langsung di Github, pastikan tidak ada konflik dan siap untuk digabung ke cabang master. Pemilik repositori asli cukup mengklik tombol hijau "Gabungkan Permintaan Tarik" untuk melakukannya:

![github-team-merge](https://user-images.githubusercontent.com/111033936/184523290-1392b4de-a8c3-4159-aa5d-b1eb724ccf4a.png)

2. **Penggabungan di mesin lokal kita** : Di ​​lain waktu, mungkin ada konflik penggabungan, dan setelah mengklik tombol "info", Github akan memiliki instruksi yang jelas tentang bagaimana kami dapat menggabungkan cabang di mesin lokal kami dengan menarik perubahan dari cabang kontributor:
![github-team-merge-conflict](https://user-images.githubusercontent.com/111033936/184523293-2352fd57-5e55-4278-ab21-f2d6cdf55321.png)

## Selesai !!