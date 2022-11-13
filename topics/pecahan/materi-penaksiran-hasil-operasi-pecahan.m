\
\ Copyright (c) 2021 ranimahareka all rights reserved.
\
\ @author: ranimahareka
\ @date: 9 Nov 2022
\
\ A brief description of this program.
\

: materi-penaksiranpecahanbiasadanCampuran ( -- "s" ) 
    "Pecahan Biasa & Campuran"
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <p style="text-align: justify"> Sobat metan kita langsung saja masuk ke contohnya. Agar sobat Metan dapat paham. </p><br/>
    }q
    "Gimana mudah kan ?"
    materi
;

: materi-penaksiranpecahanDesimal ( -- "s" ) 
    "Pecahan Desimal"
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <h4>Penaksiran</h4>
        <p style="text-align: justify"> Sobat metan kita langsung saja masuk ke contohnya. Agar sobat Metan dapat paham. </p><br/>
    }q
    "Gimana mudah kan ?"
    materi
;

: materi-penaksiranpecahanPersen ( -- "s" ) 
    "Persen"
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <h4>Penaksiran</h4>
        <p style="text-align: justify"> Penaksiran hasil operasi hitung bilangan persen dapat dilakukan dengan cara berikut 1. Membulatkan bilangan persen ke puluhan terdekat </p>
        <p style="text-align: justify"> <h4>1. Membulatkan bilangan persen ke puluhan terdekat</4> </p>
        <p style="text-align: justify"> <h4>2. Menggunakan bilangan persen acuan, yaitu 0%, 25%,50%, 75%, dan 100%</4> </p></br>
    }q
    "Pada garis bilangan, letak 65% paling dekat ke 75%"
    materi
;


\ ---------------------------------------------------------------------------
room: materipenaksiranpecahan

Q: @pecahanbiasa&Campuran
A: ${ materi-penaksiranpecahanbiasadanCampuran } ${ menu-back }
--

Q: @pecahanDesimal
A: ${ materi-penaksiranpecahanDesimal } ${ menu-back }
--

Q: @persen
A: ${ materi-penaksiranpecahanPersen } ${ menu-back }
--

Q: @back
A: ${ menu-penaksiran-hasil-operasi-pecahan } ${kembali-menu-materi} ${ menu-utama }
--

Q: kembali_↩
A: ${ menu-materi } ${ menu-utama }
K: $clear menumateri
--
Q: @backMenu
A: ${ main-menu }
K: $clear menu
--

end-room

