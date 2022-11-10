\
\ Copyright © 2021 azmisyazwana all rights reserved.
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\
\ @author: azmisyazwana
\ @date: 2 Aug 2021
\
\ 20 Sep 2021 - Edited by Arnold Doray
\

smojo/chat
smojo/chat/app
smojo/chat/log
smojo/chat/test

\ ============= UI 
include ./topics/ui-ux.m

\ ============= MENU 
include ./topics/menu/menu.m
include ./topics/menu/menu-materi.m
include ./topics/menu/menu-hitungan.m

\ \ ============= PECAHAN 
include ./topics/pecahan/types.m
include ./topics/pecahan/materi-pengenalan-pecahan.m
include ./topics/pecahan/materi-perbandingan-pecahan.m
include ./topics/pecahan/materi-pengurutan-pecahan.m
include ./topics/pecahan/materi-bentuk-pecahan.m
include ./topics/pecahan/materi-pembulatan-pecahan.m
include ./topics/pecahan/materi-penaksiran-hasil-operasi-pecahan.m
\ 
\ \ ============= Bangun Datar >> Hitungan
\ include ./topics/bangun-datar/hitungan-bangun-datar.m
\ include ./topics/bangun-datar/persegi.m
\ include ./topics/bangun-datar/persegi-panjang.m
\ include ./topics/bangun-datar/segitiga.m
\ include ./topics/bangun-datar/lingkaran.m
\ include ./topics/bangun-datar/belah-ketupat.m
\ include ./topics/bangun-datar/layang-layang.m
\ include ./topics/bangun-datar/trapesium.m
\ include ./topics/bangun-datar/jajar-genjang.m
\ 
\ \ ============= BANGUN RUANG 
\ include ./topics/bangun-ruang/types.m
\ include ./topics/bangun-ruang/materi-bangun-ruang.m
\ 
\ \ ============= Bangun Ruang >> Hitungan 
\ include ./topics/bangun-ruang/hitungan-bangun-ruang.m
\ include ./topics/bangun-ruang/kubus.m
\ include ./topics/bangun-ruang/balok.m
\ include ./topics/bangun-ruang/limas-segitiga.m
\ include ./topics/bangun-ruang/limas-segiempat.m
\ include ./topics/bangun-ruang/bola.m
\ include ./topics/bangun-ruang/prisma-segitiga.m
\ include ./topics/bangun-ruang/kerucut.m
\ include ./topics/bangun-ruang/tabung.m

\ ============= SOALAN KUIS 
include ./topics/kuis/quiz-helper.m
include ./topics/kuis/soalan.m

\ ============= KUIS BIASA 
include ./topics/kuis/kuis.m
include ./topics/intro.m

\ ============= KUIS+DATA COLLECION 
\ terra/chat/data/user
\ include ./topics/user.m
\ include ./topics/kuis/kuis-data.m
\ include ./topics/intro-login.m

\ ============= DLL
include ./topics/unhandled.m

: publish 
  \ IMPORTANT - edit this part. It's the name of your bot.
  publish: metan
  
  \ What your bot says at first. 
  init: ${ welcome }
  
  \ ------ PROPERTIES OF THE CHATBOT USER INTERFACE --------
  
  \ The background image. Should be tileable/repeatable. 
  \ Or you can use a HTML color (see https://www.w3schools.com/colors/colors_picker.asp)
  \ background: https://live.staticflickr.com/4135/4915115384_ca7b1df603_b.jpg
  \ background: https://i.pinimg.com/564x/13/03/69/130369cdf774cd78a08699202dfd1836.jpg
  background: https://i.pinimg.com/564x/13/03/69/130369cdf774cd78a08699202dfd1836.jpg
  avatar: https://cdn-icons-png.flaticon.com/256/8307/8307226.png
  \ Optional border on avatar
  \ avatar-border: solid #AAA 1px
  avatar-border: none
  
  \ Google font to import.
  import-font: Schoolbell:wght@300
  \ Font to use in bubbles
  bubble-font: 'Schoolbell', Schoolbell
  \ Font Color & Background of bot bubble
  bubble-bot-color: black
  bubble-bot-background: #F5D3A6
  \ Font Color & Background for user bubble
  bubble-user-color: black
  bubble-user-background: #F5D3A6
  \ Other bubble properties
  \ bubble-border: solid blue 1px
  \ bubble-border: 1px solid #F0C044
  bubble-radius: 16
  bubble-font-size: 16
  \ Max Width of bot bubble, in pixels
  \ bot-bubble-width: 380
  \ You can limit the number of responses displayed
  limit: 1
  
  \ Optional properties of the "send" button.
  \ Here's a sample from flaticon.com
  \ <div>Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
  \ send-button-image-url: https://www.flaticon.com/svg/static/icons/svg/3652/3652532.svg
  \ send-button-image-style: padding-left:10px;
  \ send-button-image-url: https://lh3.googleusercontent.com/Fa309ra8R7RT7X8wdNbv8F0QRm1iS_bORyndg3OdNB6K9hbBfx0ZDYVwXs-5md-gTJPG
  send-button-image-url: https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj5KNnyKKls3LH5i4LlS5NuOgzedRrUw78coMVjzCXOuIuEbf468d1-5ftLy6UwfGTTA1GGBNHqoOLrGwklDObTaOJhtBnb9FjwN0ku_Y0RRcWofTT47cCgFz29NhbuqnOyXDo3JPurX838GIcJl0OUDYOnwIEslKxtEks4N6yeRbOdYreFWRoY__wn/s320/pawprint.gif
  send-button-image-style: none
  

  \ ----- PROPERTIES OF THE URL LINK FOR SOCIAL MEDIA --------
  \ These will be visible when you share the link to your bot.
  title: Metan
  description: Metan, media pembelajaran interaktif yang menyenangkan.
  thumbnail: https://static.wixstatic.com/media/ce9db2_eff9582624ae42469103353e9cfcd9a4~mv2.gif
  
;




