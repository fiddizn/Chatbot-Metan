\
\ Copyright © 2021 azmisyazwana all rights reserved.
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\
\ @author: azmisyazwana
\ @date: 2 Aug 2021
\
\ Code and templates for initial start screen.
\

@: next hi start
next: next next! next!_ _next!
hi: hi_metan! hi_metan hello_metan! hello hello_metan
start: start mulai

: welcome ( -- "s" )
    "Next!" Button ctx{ btn }
    q{
        Hello Math Friends !! 🔥
        <div style="text-align: center">
            <img style="width: 80%" src="https://s4.gifyu.com/images/Welcome-Metan.gif">
        </div>
        #{btn}
    }q
;

: bc-intro ( -- "s" )
    q{
    
        <p style="text-align: justify;">Wah ! Sepertinya kamu sudah siap dan bersemangat untuk menjelajah Matematika Pecahan🤓</p>
        <div style="text-align: center">
            <img style="width: 80%" src="https://cdn-icons-png.flaticon.com/256/8307/8307226.png">
        </div>
        <h3 style="text-align: center; margin-top: .7rem;">Selamat Datang di ruang MathFract!</h3>
        <p style="text-align: justify">
            Oh iya, kenalin aku Metan, dan sekarang kamu sudah menjadi Sobat Metan.<br>Metan akan menemanimu untuk belajar dan menjelajah tentang Matematika Pecahan.
            <br><br>
            Klik, tombol ‘Hi SobatMetan' untuk  melanjutkan!
        </p>
    }q
;

: bc-intro-2 ( -- "s" )
    q{
        <h3 style="text-align: center">APAKAH KAMU SIAP UNTUK BELAJAR, MATERS?</h3>
        <div style="text-align: center">
            <img style="width: 100%" src="https://i.pinimg.com/originals/b5/36/74/b53674879cdd508f33a2c8a15605f424.gif">
        </div>
        <p style="text-align: justify">
            Pada dasarnya, seluruh benda yang ada dimuka bumi merupakan bentuk nyata dari pengaplikasian bangun 
            ruang dan bangun datar. Oleh karena itu, untuk memecahkan suatu masalah yang ada dalam kehidupan 
            sehari-hari, kita harus mengetahui setidaknya ilmu dasar matematika yaitu salah satunya bangun datar 
            dan bangun ruang. Jadi kamu siap belajar sekarang, Maters?😼
        </p>
    }q
;

: hi-metan ( -- "s" )
    ctx{ msg }
    "Hi SobatMetan" Button ctx{ hi }
    q{
        <p>#{msg}</p>
        #{hi}
    }q
;

: letsgo ( "s" -- "s" )
    ctx{ msg }
    "Let's go🏃💨" Button ctx{ go }
    q{
        <p>#{msg}</p>
        #{go}
    }q
;


\ ---------------TEMPLATES------------------

Q: @next
A: ${ bc-intro hi-metan }
K: $clear menu
--
