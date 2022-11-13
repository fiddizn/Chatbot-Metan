\
\ Copyright © 2021 azmisyazwana all rights reserved.
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\
\ @author: azmisyazwana
\ @date: 13 Aug 2021
\
\ Materi Pecahan
\ 20 Sep 2021 - Edited by Arnold Doray
\


: materi-mengenalPecahan ( -- "s" ) 
    "Mengenal Pecahan"
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <p style="text-align: justify"> Sobat metan pasti sudah tidak asingkan dengan yang namanya Pecahan? Nah bener banget, Pecahan itu adalah bagian dari keseluruhan atau bagian dari sekelompok benda. Sedangkan Pecahan biasa adalah bilangan yang dinyatakan dalam bentuk <sup>a</sup>/<sub>b</sub>, dengan a dan b adalah bilangan bulat serta b tidak sama dengan 0. </p><br/>
    }q
    "Nah sobat untuk bagian yang diwarnai dari gambar di atas menyatakan pecahan <sup>1</sup>/<sub>4</sub>. Nah sekarang sobat metan sudah tahu kan apa itu pecahan,yuk selanjutnya ikut metan menjelajah pecahan senilai."
    materi
;

: materi-pecahanSenilai ( -- "s" ) 
    "Pecahan Senilai"
    "https://assets.pikiran-rakyat.com/crop/20x109:884x445/x/photo/2021/09/04/607833475.jpeg"
    q{
        <h4>Hai SobatMetan!</h4>
        <p style="text-align: justify"> Pada kali ini Metan akan membahas mengenai Pecahan Senilai. Nah apasih pecahan senilai itu? Pecahan senilai itu adalah pecahan yang dituliskan dalam bentuk berbeda, tetapi mempunyai nilai yang sama.</p><br/>
    }q
    "Lihatlah kedua gambar diatas!! Gambar pertama menunjukan <sup>1</sup>/<sub>2</sub> sedangkan gambar kedua <sup>2</sup>/<sub>4</sub>, dan juga perhatikan bahwa besar daerah yang diwarnai pada kedua gambar diatas tersebut sama. Nah oleh karena itu <sup>1</sup>/<sub>2</sub> dan <sup>2</sup>/<sub>4</sub> disebut sebagai pecahan senilai atau <sup>1</sup>/<sub>2</sub>=<sup>2</sup>/<sub>4</sub>.<p>Contoh lainnya seperti pecahan senilai <sup>8</sup>/<sub>16</sub> yang dimana <sup>8</sup>/<sub>16</sub>=<sup>8:2</sup>/<sub>16:2</sub>=<sup>4</sup>/<sub>8</sub> (pembilang & penyebut dibagi dengan 2) atau <sup>8</sup>/<sub>16</sub>=<sup>8x2</sup>/<sub>16x2</sub>=<sup>16</sup>/<sub>32</sub> (pembilang & penyebut dikali 2)</p>"
    materi
;

: materi-menyederhanakannilaiPecahan ( -- "s" ) 
    "Menyederhanakan Nilai Pecahan"
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <p style="text-align: justify"> Yuk sobat ikut metan menyederhanakan Nilai Pecahan, sebelum kita menyederhanakan nilai pecahan kita harus tahu dulu apa sih pengertian menyederhanakan pecahan itu??? </p><br/>
        <p style="text-align: justify">Ok metan beri tahu ya, menyederhanakan pecahan itu adalah mengubah pecahan menjadi pecahan senilai yang lebih kecil. Nah caranya gimana dong metan? Caranya yaitu dengan membagi pembilang dan penyebut dengan bilangan yang sama hingga keduanya tidak bisa dibagi lagi.</p>
    }q
    "(tidak dapat dibagi dengan bilangan yang sama lagi ya ☺)<p>Jadi bentuk pecahan paling sederhana dari <sup>16</sup>/<sub>24</sub>adalah <sup>2</sup>/<sub>3</sub>. Nah gimana sobat Metan, gampang bukan ☺☺☺."
    materi
;


\ ---------------------------------------------------------------------------

room: materipengenalanpecahan

Q: @mengenalPecahan
A: ${ materi-mengenalPecahan } ${ menu-back }
--

Q: @pecahanSenilai
A: ${ materi-pecahanSenilai } ${ menu-back }
--

Q: @menyederhanakannilaiPecahan
A: ${ materi-menyederhanakannilaiPecahan } ${ menu-back }
--

Q: @back
A: ${ menu-pengenalan-pecahan } ${kembali-menu-materi} ${ menu-utama } 
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






