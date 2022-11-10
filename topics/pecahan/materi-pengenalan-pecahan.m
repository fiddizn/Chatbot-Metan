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
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <p style="text-align: justify"> Sobat metan pasti sudah tidak asingkan dengan yang namanya Pecahan? Nah bener banget, Pecahan itu adalah bagian dari keseluruhan atau bagian dari sekelompok benda. Sedangkan Pecahan biasa adalah bilangan yang dinyatakan dalam bentuk <sup>a</sup>/<sub>b</sub>, dengan a dan b adalah bilangan bulat serta b tidak sama dengan 0. </p><br/>
    }q
    "Nah sobat untuk bagian yang diwarnai dari gambar di atas menyatakan pecahan <sup>1</sup>/<sub>4</sub>. Nah sekarang sobat metan sudah tahu kan apa itu pecahan,yuk selanjutnya ikut metan menjelajah pecahan senilai."
    materi
;

: materi-menyederhanakannilaiPecahan ( -- "s" ) 
    "Menyederhanakan Nilai Pecahan"
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <p style="text-align: justify"> Sobat metan pasti sudah tidak asingkan dengan yang namanya Pecahan? Nah bener banget, Pecahan itu adalah bagian dari keseluruhan atau bagian dari sekelompok benda. Sedangkan Pecahan biasa adalah bilangan yang dinyatakan dalam bentuk <sup>a</sup>/<sub>b</sub>, dengan a dan b adalah bilangan bulat serta b tidak sama dengan 0. </p><br/>
    }q
    "Nah sobat untuk bagian yang diwarnai dari gambar di atas menyatakan pecahan <sup>1</sup>/<sub>4</sub>. Nah sekarang sobat metan sudah tahu kan apa itu pecahan,yuk selanjutnya ikut metan menjelajah pecahan senilai."
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





