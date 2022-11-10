\
\ Copyright © 2021 azmisyazwana all rights reserved.
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\
\ @author: azmisyazwana
\ @date: 2 Aug 2021
\
\ A brief description of this program.
\

@: go materi hitungan kuis selesai yes no thanks backMenu back
go: Hi_SobatMetan go go! goo lets_go🏃💨 lets_go lets_go! letsgo Lets_go!
materi: materi📚 materi
hitungan: hitungan📱 hitungan hitung
kuis: quiz📝 quiz kuis kuis📝 ujian contoh_soal contoh soal
selesai: selesai😢 beres finish finished selesai
yes: Ya,_Mahe🤔 ya yes ya_mahe🤔
no: Tidak,_Mahe😉 tidak_mahe😉 tidak no
thanks: Terima_kasih,_Mahe terimakasih_mahe terima_kasih_mahe makasih_mahe makasih Terima_kasih,_Mahe🤖 terima_kasih_mahe🤖
backMenu: Menu_Utama✨ menu menu_utama
back: back kembali kembali◀️ kembali_◀️ Kembali◀️ kembali↩️

: terima-kasih ( -- "s" ) 
    "Terima kasih, Mahe" button
;

: kembali ( -- "s" ) 
    "Kembali↩️" ButtonBack
;

: kembali-menu-materi ( -- "s" )
    "kembali ↩" ButtonBack
;

: menu-utama ( -- "s" ) 
    "Menu Utama✨" ButtonBack
;

: menu-back ( -- "s" ) 
    kembali
    menu-utama concat 
;

: menu-selesai ( -- "s" ) 
    "Selesai" buttonSelesai
;

: yes-no ( -- "s" ) 
    "Ya, Metan🤔" button
    "Tidak, Metan😉" button
        concat
;

: header ( -- "s" ) 
    q{
        <h3 style="text-align: center; margin-bottom: .75rem"> MENU UTAMA</h3>
        <p style="text-align: justify; margin-bottom: 1rem">
            Untuk menjelajah, sobat Metan bisa memilih tombol-tombol di bawah ini 👇
        </p>
    }q
;

: mk-menu ( "msg" seq -- "s" ) { xs } 
    ctx{ msg }
    "" xs [: button concat ;] reduce ctx{ opts }
    q{
        <p>#{msg}</p>
        #{opts}
    }q
;

: menu ( "s" -- "s" ) 
    {{ "Materi📚" 
       "Asesmen📝" 
       "Funroom📱" 
    }} mk-menu
;

: main-menu ( -- "s" )
    header menu 
    menu-selesai
        concat 
;

: jenis-bangun ( -- "s" )
    q{
        <h3 style="text-align: center;">1️⃣ TIPE BANGUN</h3>
        <p style="text-align: justify;">
             Pilih tipe bangun yang akan dihitung.
        </p>
    }q
;

: bangun ( "s" -- "s" )
    ctx{ msg }
    "Bangun Ruang" Button "Bangun Datar" Button ctx{ br bd }
    q{
        <p>#{msg}</p>
        #{bd} #{br}
    }q
;

: menu-materi ( -- "s" )
    q{
        <h3 style="text-align: center;">MATERI</h3>
        <p style="text-align: justify;">
             Pilih materi  yang ingin kamu pelajari 👇
        </p>
    }q
    {{  "Pengenalan Pecahan"  
        "Perbandingan Pecahan" 
        "Pengurutan Pecahan" 
        "Bentuk Pecahan" 
        "Pembulatan Pecahan" 
        "Penaksiran Hasil Operasi Pecahan"
    }} mk-menu
;

: no-response ( -- "s" )
    q{
        <h3>MATERI</h3>
        <p>
            Oke, jika tidak ada, Mahe ingin merekomendasikan beberapa video 
            youtube dan kumpilan rumus yang dapat kamu gunakan untuk mempelajari 
            materi Bangun Datar dan Dangun Ruang lebih dalam lagi😉
        </p>
    }q
;

: fun-fact ( -- "s" )
    q{
        <h3 style="margin-top: 1rem; padding-right: 1rem; display: inline; background: #7fbed7; border-radius: 20px; color: white;">🔎Tahukan Kamu?</h3>
        <div style="margin: 1rem 0; text-align: center;">
            <img style="width: 50%;"src="https://media.giphy.com/media/f6iqGLgyhF0WCToXEq/giphy.gif">
        </div>
        <p style="text-align: justify">
            Jumlah sisi, sudut dan jari-jari pada lingkaran itu infinity alias tak terbatas loh..<br><br>
    	    Yeay congrats! kamu dapet pengetahuan baru nih🥳
        </p>
    }q
;

: fun-fact-abstrak ( -- "s" )
    q{
        <h3 style="margin-top: 1rem; padding: 0 1rem; display: inline; background: #7fbed7; border-radius: 20px; color: white;">Fun Fact🙀</h3>
        <div style="margin: 1rem 0; text-align: center;">
            <img style="width: 96%;"src="https://media.giphy.com/media/3FQvdeipKo9Ywvx09W/giphy.gif">
        </div>
        <p style="text-align: justify">
            Sadar atau tidak, secara tidak langsung kamu sudah melihat lebih dari 10 macam bangun datar dan bangun ruang loh di gambar ini😬
        </p>
        <p style="text-align: justify; margin-top: 1.5rem;">
            Kamu gak percaya? Mau tau apa aja? Coba buktikan dan cari tau sendiri ya😆
        </p>
    }q
;


: gif-tipebangun ( -- "s" )
    q{
        <div style="text-align:center; margin-top: 1rem;">
            <img style="width:95%;" src="https://media.giphy.com/media/3FQvdeipKo9Ywvx09W/giphy.gif">
        </div>
    }q
;


: gif-selesai ( -- "s" )
    q{
        <div style="text-align:center; margin-top: 1rem;">
            <img style="width:90%;" src="https://i.pinimg.com/originals/e3/0f/07/e30f07dd460f40ecc1fec3a0ea4d013f.gif">
        </div>
    }q
;

: perpisahan-sentence ( -- "s" )
    q{
        <p style="text-align: justify">
            Terimakasi ya sudah berpetualang dengan Mahe,
            sampai berjumpa lagi di lain waktu, Maters!!👋<br><br>
        </p>
        <h4>Klik tombol 'Start' untuk kembali ke tampilan awal.</h4>
    }q
;

: eits ( -- "s" )
    q{
        <p style="margin-top: 1.5rem;">Eits ada yang lewat bentar..</p>
    }q
;

\ --------------------------------------------------------------------------

room: menu

Q: @go
Q: @backMenu
A: ${ main-menu }
--

Q: @hitungan
A: ${ jenis-bangun bangun } ${ kembali } ${ eits } ${ bb } ${ fun-fact-abstrak }
K: $clear menuhitungan
--

Q: @materi
A: ${ menu-materi } ${ kembali } 
K: $clear menumateri
--

Q: @kuis
A: YIPIII, SAAT NYA QUIZ!!!! https://i.pinimg.com/originals/52/15/2b/52152b74c401f2f4fe52f5d0940b0d79.gif ${ "Ayo" Button } ${ kembali }
K: $back question-start
--

Q: @no
A: ${ fun-fact } ${ main-menu }
--

Q: @selesai
A: ${ gif-selesai } ${ perpisahan-sentence } ${ "Start" ButtonStart }
K: $back intro
--

end-room


