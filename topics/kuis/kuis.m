\
\ Copyright © 2021 azmisyazwana all rights reserved.
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\
\ @author: azmisyazwana
\ @date: 14 Aug 2021
\
\ Quiz for Mahe
\

mem: score this-question
0 score!
1 this-question!

: add-score 6.25 score +. score! ;

: jawaban-betul ( -- "s" ) 
    "next" Button ctx{ btn }
    q{
        WOW SELAMAT JAWABAN KAMU BENARR!! 🎉 
        <img src="https://i.pinimg.com/originals/9f/f2/a4/9ff2a46d6ede55fb03b5129a7a6ca226.gif">
        #{btn}
    }q
;

: jawaban-salah ( -- "s" ) 
    "next" Button ctx{ btn }
    q{
        hmm, jawaban kamu salah tetap semangat ya!!! 
        <img src="https://i.pinimg.com/originals/a9/60/7a/a9607aa277e5588790bac686a9eb70f4.gif">
        #{btn}
    }q
;

\ QUESTION is from quiz-helper.m
: question ( -- "s" ) 
    this-question question 
;

\ COREECT? is from quiz-helper.m
: correct? ( -- f ) 
    this-question last-question correct?
;

\ NUM-QUESTIONS is from quiz-helper.m
: last? ( -- f ) 
    this-question num-questions >= 
;

room: question-start
Q: ayo
B: 1 this-question!
A: ${ question }
K: $back answer
--

Q: @back
Q: @backMenu
A: ${ header menu }
K: $back menu
--
end-room

room: answer
Q: $_
A: correct? % ${ jawaban-betul }
C: correct? % add-score
C: +this-question
A: ${ jawaban-salah }
K: last? % $back finish
K: $back question
--
end-room

room: question
Q: next
A: ${ question }
K: $back answer
--
end-room

room: finish
Q: $_
A: Yeay kamu telah menyelesaikan quiz, sampai jumpa lain waktu !<br>your score is ${ score } https://i.pinimg.com/originals/29/0c/6a/290c6a81fd771510854d283844311121.gif ${ "Menu Utama✨" ButtonBack }
K: $back menudarikuis
--
end-room

room: menudarikuis
Q: @back
Q: @backMenu
A: ${ header menu }
K: $back menu
--
end-room

