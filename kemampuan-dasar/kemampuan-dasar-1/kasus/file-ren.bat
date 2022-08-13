@echo OFF

cd C:\Users\ghani\Desktop\Coding-PGT\kemampuan-dasar\kemampuan-dasar-1\kasus
DIR *.java
echo.
echo Ada file Java pada direktori C:\Users\ghani\Desktop\Coding-PGT\kemampuan-dasar\kemampuan-dasar-1\kasus

:choice
echo.
set choice=
set /p choice=" file test.java ditemukan, Apakah Ingin mengganti nama file (y/n) ? "

if %choice% == y (
   
    echo.
    set /p input="Masukan nama file baru : " 
    
    echo.
    GOTO rename


) else if %choice% == n (
    echo Anda tidak jadi mengganti nama file
    EXIT


) else (
    echo pilih y untuk mengganti nama file , dan n untuk tidak
    GOTO choice
)

:rename
cd C:\Users\ghani\Desktop\Coding-PGT\kemampuan-dasar\kemampuan-dasar-1\kasus
ren "C:\Users\ghani\Desktop\Coding-PGT\kemampuan-dasar\kemampuan-dasar-1\kasus\*.java" "%input%.java"
echo.
echo BERHASIL MENGGANTI NAMA FILE

PAUSE > nul
EXIT