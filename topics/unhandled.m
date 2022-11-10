\
\ @author: Arnold Doray
\ @date: 30 Jan 2020
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\
\ Catches unhandled questions and statements. 
\ Should be the very last include. 
\ 
\ Refactored from existing chatbot code by azmisyazwana
\

: unknown_message
q{
    <div style="text-align: center">
    <img style="width: 80%; background: none;" src="https://i.imgflip.com/6zgvxa.gif">
    </div>
    <p>Mohon maaf Metan tidak mengerti😿 Untuk kembali berinteraksi, coba klik tombol back atau swipe back di browser kamu ya✌
    </p>
}q
;


Q: $_
A: ${ unknown_message }
--
