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
hi: hi_mahe! hi_mahe hello_mahe! hello hello_mahe
start: start mulai


: welcome ( -- "s" )
    reset-credentials
    "Next!" Button ctx{ btn }
    q{
        Hello Math Friends !! 🔥 <img src="https://i.pinimg.com/originals/92/0f/ee/920fee41f8532b57b0a381d1ba1ebdc7.gif">
        #{btn}
    }q
;

: bc-intro ( -- "s" )
    q{
    
        <p style="text-align: justify;">Ya! Sekarang kamu Maters, alias Math Fighters🤓</p>
        <div style="text-align: center">
            <img style="width: 80%" src="https://static.wixstatic.com/media/ce9db2_eff9582624ae42469103353e9cfcd9a4~mv2.gif">
        </div>
        <h3 style="text-align: center; margin-top: .7rem;">Selamat Datang di MathZone!</h3>
        <p style="text-align: justify">
            Kenalin, aku Mahe🤖 alias Math Helper. Aku akan membantu kamu untuk belajar  bangun ruang dan bangun datar.
            <br><br>
            Klik, tombol ‘Hi Mahe🤖 untuk  melanjutkan!
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

: hi-mahe ( -- "s" )
    ctx{ msg }
    "Hi Mahe 🤖" Button ctx{ hi }
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
A: ${ bc-intro hi-mahe }
--

Q: @hi
Q: @start
A: Sila masukkan Group ID kamu: ; Tolong masukkan Group ID anda:
K: login
--

room: login
Q: $x
B: groupid null? % $x groupid! 
B: username null? % $x username! check-credentials
A: login-ok % Kamu logged in sebagai <b>${ username }</b> dalam group <b>${ groupid }</b>.${bb} ${ bc-intro-2 letsgo }
K: login-ok % $clear menu
A: groupid null? % Oops! Login salah. Tolong masukkan group ID kamu sekali lagi:
A: Baik! Sekarang sila masukkan username kamu: ; Tolong masukkan username anda:
--
end-room