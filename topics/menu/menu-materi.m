\
\ Copyright © 2021 azmisyazwana all rights reserved.
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\
\ @author: azmisyazwana
\ @date: 9 Aug 2021
\
\ Menu for teaching Materials
\

@: rumus video back backMenu
rumus: rumus kumpulan_rumus
video: video kumpulan_video
back: back kembali kembali◀️ kembali_◀️ Kembali◀️ kembali↩️
backMenu: Menu_Utama✨ menu menu_utama

 : kembali ( -- "s" ) 
    "Kembali↩️" ButtonBack
 ;

 : menu-utama ( -- "s" ) 
    "Menu Utama✨" ButtonBack
 ;

: menu-pengenalan-pecahan ( -- "s" )
    q{
        <h3 style="text-align: center;">Pengenalan Pecahan</h3>
    }q
    
    {{ "Mengenal Pecahan" 
       "Pecahan Senilai"
       "Menyederhanakan Nilai Pecahan"
    }} mk-menu
;

: materi-membandingkanPecahan ( -- "s" ) 
    "Membandingkan Pecahan"
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <p style="text-align: justify"> Sobat metan pasti sudah tidak asingkan dengan yang namanya Pecahan? Nah bener banget, Pecahan itu adalah bagian dari keseluruhan atau bagian dari sekelompok benda. Sedangkan Pecahan biasa adalah bilangan yang dinyatakan dalam bentuk <sup>a</sup>/<sub>b</sub>, dengan a dan b adalah bilangan bulat serta b tidak sama dengan 0. </p><br/>
    }q
    "Nah sobat untuk bagian yang diwarnai dari gambar di atas menyatakan pecahan <sup>1</sup>/<sub>4</sub>. Nah sekarang sobat metan sudah tahu kan apa itu pecahan,yuk selanjutnya ikut metan menjelajah pecahan senilai."
    materi
;

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

: menu-perbandingan-pecahan ( -- "s" )
    q{
        <h3 style="text-align: center;">Perbandingan Pecahan</h3>
    }q
    
    {{ "Membandingkan Pecahan" }} mk-menu
;

: menu-pengurutan-pecahan ( -- "s" )
    q{
        <h3 style="text-align: center;">Pengurutan Pecahan</h3>
    }q
    
    {{ "Mengurutkan Pecahan" }} mk-menu
;

: menu-bentuk-pecahan ( -- "s" )
    q{
        <h3 style="text-align: center;">Bentuk Pecahan</h3>
    }q
    
    {{ "Pecahan Biasa" 
       "Pecahan Campuran" 
       "Pecahan Desimal" 
       "Persen" }} mk-menu
;

: menu-pembulatan-pecahan ( -- "s" )
    q{
        <h3 style="text-align: center;">Pembulatan Pecahan</h3>
    }q
    
    {{ "Pecahan Biasa & Campuran" 
       "Pecahan Desimal" 
       "Persen" }} mk-menu
;

: menu-penaksiran-hasil-operasi-pecahan ( -- "s" )
    q{
        <h3 style="text-align: center;">Penaksiran Hasil Operasi Pecahan</h3>
    }q
    
    {{ "Pecahan Biasa & Campuran" 
       "Pecahan Desimal" 
       "Persen" }} mk-menu
;

: page-rumus ( -- "s" ) 
    q{
        <p style="text-align:justify;">
            ▶️ Berikut rumus yang digunakan dalam perhitungan Bangun Datar 
            dan Bangun Ruang (Sumber: Zenius).
        </p>
        <h3 style="text-align:center;">Rumus Bangun Datar</h3>
        <img style="width: 95%" src="https://i0.wp.com/www.zenius.net/blog/wp-content/uploads/2019/12/rumus-luas-keliling-bangun-datar.jpg?fit=1250%2C1767&ssl=1"><br>
        <h3 style="text-align:center;">Rumus Bangun Ruang</h3>
        <img style="width: 95%" src="https://i2.wp.com/www.zenius.net/blog/wp-content/uploads/2019/12/rumus-luas-volume-bangun-ruang.jpg?ssl=1">
    }q
;

: page-videos ( -- "s" ) 
    "5nuY7kgB338" utube ctx{ v1 } 
    "8JTVLk3CINA" utube ctx{ v2 } 
    q{
        <p style="text-align:justify;">
            ▶️ Berikut 2 video yang Mahe rekomendasikan mengenai materi 
            Bangun Datar dan Bangun Ruang.
        </p>
        <br>
        <h3 style="text-align:center;">Video Bangun Datar</h3>
        #{v1}
        <br>
        <h3 style="text-align:center;">Video Bangun Ruang</h3>
        #{v2}
    }q
;


\ ------------------------------------------------------------------
room: menumateri

Q: pengenalan pecahan
A: ${menu-pengenalan-pecahan} ${kembali-menu-materi} ${menu-utama}
K: $back materipengenalanpecahan
--

Q: perbandingan pecahan
A: ${materi-membandingkanPecahan} ${menu-back}
K: $back materiperbandinganpecahan
--

Q: pengurutan pecahan
A: ${materi-mengurutkanPecahan} ${menu-back}
K: $back materipengurutanpecahan
--

Q: bentuk pecahan
A: ${menu-bentuk-pecahan} ${kembali-menu-materi} ${menu-utama}
K: $back materibentukpecahan
--

Q: pembulatan pecahan
A: ${menu-pembulatan-pecahan} ${kembali-menu-materi} ${menu-utama}
K: $back materipembulatanpecahan
--

Q: penaksiran hasil operasi pecahan
A: ${menu-penaksiran-hasil-operasi-pecahan} ${kembali-menu-materi} ${menu-utama}
K: $back materipenaksiranpecahan
--

Q: @rumus
A: ${ page-rumus } ${ menu-back }
K: subpage
--

Q: @video
A: ${ page-videos } ${ menu-back }
K: subpage
--

\ Handles "back" button on subpages
room: subpage
    Q: @back
    A: ${ menu-materi } ${ kembali }
    K: $back
    --
end-room

Q: @back
Q: @backMenu
A: ${ main-menu }
K: $clear menu
--

end-room





