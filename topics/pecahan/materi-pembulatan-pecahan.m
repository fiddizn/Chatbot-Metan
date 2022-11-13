\
\ Copyright (c) 2021 ranimahareka all rights reserved.
\
\ @author: ranimahareka
\ @date: 9 Nov 2022
\
\ A brief description of this program.
\

: materi-pembulatanpecahanbiasadanCampuran ( -- "s" ) 
    "Pecahan Biasa & Campuran"
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <p style="text-align: justify"> Pecahan biasa dapat dibulatkan ke bilangan 0 atau 1. Apabila nilainya kurang dari <sup>1</sup>/<sub>2</sub> maka dibulatkan menjadi 0, jika sama dengan atau lebih dari <sup>1</sup>/<sub>2</sub> maka dibulatkan menjadi 1. Sedangkan untuk pecahan campuran, bulatkan bagian pecahannya lalu jumlahkan dengan bilangan bulatnya. </p><br/>
    }q
    "Maka pembulat dari bilangan 2<sup>3</sup>/<sub>5</sub> adalh 2+1=3"
    materi
;

: materi-pembulatanpecahanDesimal ( -- "s" ) 
    "Pecahan Desimal"
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <h4>Pembulatan</h4>
        <p style="text-align: justify"> <h4>1. Ke persepuluhan terdekat</h4></p>
        <p style="text-align: justify"> Perhatikan angka pada tempat perseratusan, jika kurang dari 5, bilangan dibulatkan ke bawah. Jika sama atau lebih dari lima maka dibulatkan ke atas. </p>
        <p style="text-align: justify"> <h4>2. Ke satuan terdekat</h4></p>
        <p style="text-align: justify"> Perhatikan angka pada tempat persepuluhan, jika kurang dari 5, bilangan dibulatkan ke bawah. Jika sama atau lebih dari lima maka dibulatkan ke atas. </p><br/>
    }q
    "<h4>Catatan</h4><p>Sobat Metan harus ingat ya prinsip dari angka yang harus bulatkan ke atas dan ke bawah. </p>"
    materi
;

: materi-pembulatanpecahanPersen ( -- "s" ) 
    "Persen"
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <h4>Pembulatan</h4>
        <p style="text-align: justify"> Bilangan persen dapat dibulatkan ke puluhan terdekat. Perhatikan angka satuan pada bilangan persen, jika kurang dari 5, bilangan dibulatkan ke bawah. Jika sama atau lebih dari lima maka dibulatkan ke atas. </p><br/>
    }q
    "<h4>Catatan</h4><p>Sobat Metan harus ingat ya prinsip dari angka yang harus bulatkan ke atas dan ke bawah. </p>"
    materi
;


\ ---------------------------------------------------------------------------
room: materipembulatanpecahan

Q: @pecahanbiasa&Campuran
A: ${ materi-pembulatanpecahanbiasadanCampuran } ${ menu-back }
--

Q: @pecahanDesimal
A: ${ materi-pembulatanpecahanDesimal } ${ menu-back }
--

Q: @persen
A: ${ materi-pembulatanpecahanPersen } ${ menu-back }
--

Q: @back
A: ${ menu-pembulatan-pecahan } ${kembali-menu-materi} ${ menu-utama }
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

