\
\ Copyright © 2021 azmisyazwana all rights reserved.
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\
\ @author: azmisyazwana
\ @date: 7 Aug 2021
\
\ Common UI/UX for Mahe chatbot.
\ 20 Sep 2021 - Edited by Arnold Doray
\

"Metan" => botname

: materi ( "title" "img" "lst" "example" -- "s" )
    ctx{ ti img lst ex }
    q{
        <h2 style="text-align: center;">#{ti}</h2><br/>
        <p style="text-align: justify">
            #{lst}
        </p>
        <h4 style="text-align: justify">Contoh:</h4>
        <center><img style="width: 60%;" src="#{img}"></center>
        <p style="text-align: justify">
            #{ex}
        </p>
    }q
;

: ciri ( "title" "img" "lst" "example" -- "s" )
    ctx{ ti img lst ex }
    q{
        <h3 style="text-align: center;">#{ti}</h3>
        <img style="width: 95%;" src="#{img}">
        <ul style="padding: 0 0.8rem 0.8rem 0.8rem">
            #{lst}
        </ul>
    }q
;

: (button) ( "label" "bgcolor" -- "s" ) 
    ctx{ bgcolor }
    q{
        margin-left:10px;
    	margin-top:10px;
    	padding:10px;
    	font-size:16px;
    	display: flex;
    	justify-content: center;
    	color: white;
    	background:#{bgcolor};
    	cursor: pointer;
    	border: 1px solid white;
    }q (button)
;



: button ( "s" -- "s" )
    "#EB925C" (button)
;

: buttonSelesai ( "s" -- "s" )
    "#F35959" (button)
;

: buttonBack ( "s" -- "s" )
    "#ABAAB0" (button)
;

: buttonStart ( "s" -- "s" )
    "#FFCF31" (button)
;


: (bb) ( "s" -- "s" ) 
    ctx{ styles }
    q{
        </div>
        <div style="#{styles}">
    }q
;


: bb ( -- "s" )
  q{
        margin:.5rem 0 0 5rem;padding:10px;border-radius:16px;
        text-align:left;vertical-align:middle;
        border:none;color:#333;
        font-family:Times New Roman, Times, Serif;font-size:14px;
        background:#EEE;word-wrap:break-word;
        min-width:80px;
        max-width:650px; 
        max-height: 600px;
        background: #CEEAD9"
   }q (bb)
;

: bb-fact ( -- "s" )
  q{
        margin:.5rem 0 0 5rem;padding:10px;border-radius:16px;
        text-align:left;vertical-align:middle;
        border:none;color:#fff;
        font-family:Times New Roman, Times, Serif;font-size:14px;
        background:#b9dcea;word-wrap:break-word;
        min-width:40px;max-width:250px; max-height: 400px;
        background: #CEEAD9"
   }q (bb)
;


: form-hitungan ( "script" "ui" -- "s" ) 
    ctx{ script ui }
    q{
        <!DOCTYPE html>
        <html lang="en">
          <head>
            <meta charset="UTF-8" />
            <title>Mahe your Math Helper</title>
            <style>
              .list-satuan{
                border-radius: 30px;
                border: 1px solid white;
                width: 50px;
              }
              .label-data{
        
              }
              .form-group{
                display: flex;
                justify-content: flex-end;
                align-items: center;
                margin: 2px -8px;
              }
              .form-control{
                width: 50%;
                margin: 0;
                border-radius: 14px;
            border: 1px solid white;
            padding: .25rem .5rem;
              }
              .container-button{
                text-align: center;
              }
              .hitung-button{
                width: 100%;
                margin-top: 1rem;
                border-radius: 20px;
                background: #45b3d6;
                color: white;
                border: 1px solid white;
              }
              .bold{
                margin: 0;
              }
              
            </style>
          </head>
          <body class="root">
            <div class="form-container">
              <form class="form">
                #{ui}
                <div class="container-button">
                    <button class="button hitung-button btn btn-primary" id="hitung-button" type="button">Hitung</button>
                </div>
              </form>
            </div>
            <div class="hasil-container" id="hasil-container"></div>
            <script type="application/javascript">
            
                function f1(x){ return x.toFixed(1); }
                function f2(x){ return x.toFixed(2); }
            
                function getValue(k){
                    return Number(document.getElementById("hitungan-value-" + k).value);
                }
                
                function show(x){
                    const containerHasil = document.getElementById("hasil-container");
                    containerHasil.innerHTML = `
                        <div class="container2">
                            <h4 style="text-align:center; margin-top: 1rem;">Hasil</h4>
                            <div><p>${x}</p></div>
                        </div> `;
                }
        
                function showResult(){
                    #{script}
                }
            
                const hitungButton= document.getElementById("hitung-button");
                hitungButton.addEventListener("click", showResult);
            
            </script>
          </body>
        </html>
    }q
;

: form-hitungan-ui ( index "label" "value-label" -- "s" )
    ctx{ k p l }
    q{
        <div class="form-group">
              <label class="label-data">#{l} =</label>
              <input type="number" class="form-control input-data" id="hitungan-value-#{k}" placeholder="#{p}">
              <label class="label-data">m</label>
        </div>
    }q
;


\ SEQ is of the form {{ "Label1" "value-label1" "Label2" "value-label2" ... }}
: form-hitungan-ui ( seq -- "s" ) 
    { ss }
    "" 0 begin 
        1+ { k } 
        ss empty? -> exit |.
        k 
        ss head 
        ss tail head 
          form-hitungan-ui concat
          k 
        ss tail tail { ss }    
    again
;

: form-hitungan ( "s" seq -- "s" ) 
    form-hitungan-ui form-hitungan
;


