\
\ Copyright (c) 2021 ranimahareka all rights reserved.
\
\ @author: ranimahareka
\ @date: 9 Nov 2022
\
\ A brief description of this program.
\

: materi-mengurutkanPecahan ( -- "s" ) 
    "Mengurutkan Pecahan"
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <p style="text-align: justify"> Sobat metan pasti sudah tidak asingkan dengan yang namanya Pecahan? Nah bener banget, Pecahan itu adalah bagian dari keseluruhan atau bagian dari sekelompok benda. Sedangkan Pecahan biasa adalah bilangan yang dinyatakan dalam bentuk <sup>a</sup>/<sub>b</sub>, dengan a dan b adalah bilangan bulat serta b tidak sama dengan 0. </p><br/>
    }q
    "Nah sobat untuk bagian yang diwarnai dari gambar di atas menyatakan pecahan <sup>1</sup>/<sub>4</sub>. Nah sekarang sobat metan sudah tahu kan apa itu pecahan,yuk selanjutnya ikut metan menjelajah pecahan senilai."
    materi
;

\ ---------------------------------------------------------------------------

room: materipengurutanpecahan

Q: @mengurutkanPecahan
A: ${ materi-mengurutkanPecahan } ${ menu-back }
--

Q: @back
A: ${ menu-materi } ${ menu-utama } 
K: $clear menumateri
--

Q: @backMenu
A: ${ main-menu }
K: $clear menu
--

end-room
