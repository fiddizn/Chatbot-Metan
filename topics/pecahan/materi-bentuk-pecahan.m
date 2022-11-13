\
\ Copyright (c) 2021 ranimahareka all rights reserved.
\
\ @author: ranimahareka
\ @date: 9 Nov 2022
\
\ A brief description of this program.
\


: materi-bentukpecahanBiasa ( -- "s" )
    "Pecahan Biasa"
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <p style="text-align: justify"> Sobat Metan tau gak pecahan biasa terbagai menjadi 2 jenis yaitu pecahan murni dan pecahan tidak murni. </p><br/>
    }q
    "Pecahan murni ialah pecahan yang pembilangnya kurang dari penyebut.<p>Pecahan tidak murni ialah pembilangnya lebih dari penyebutnya.</p>"
    materi
;

: materi-bentukpecahanCampuran ( -- "s" ) 
    "Pecahan Campuran"
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <p style="text-align: justify"> Pecahan campuran terdiri atas bilangan bulat dan pecahan biasa ya sobat. Pecahan tidak murni dapat diubah menjadi pecahan campuran dengan cara membagi pembilang dengan penyebutnya. </p><br/>
    }q
    "sama artinya dengan 17 : 5 = 3 sisa 2. Jadi <sup>17</sup>/<sub>5</sub>.3<sup>2</sup>/<sub>5</sub>. Nah, pecahan 3<sup>2</sup>/<sub>5</sub> adalah bentuk pecahan campuran."
    materi
;

: materi-bentukpecahanDesimal ( -- "s" ) 
    "Pecahan Desimal"
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <h4>Bentuk</h4>
        <p style="text-align: justify"> Apa Sobat Metan tau bagaimana bentuk pecahan desimal?</p>
        <p style="text-align: justify">Pecahan desimal adalah bentuk lain dari pecahan persepuluhan, perseratusan, dan seterusnya yang ditulis menggunakan tanda koma.</p></br>
    }q
    "0,6 (dibaca nol koma enam), 1,75 (dibaca satu koma tujuh lima)."
    materi
;

: materi-bentukpecahanPersen ( -- "s" ) 
    "Persen"
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <h4>Bentuk</h4>
        <p style="text-align: justify"> Apa Sobat metan tau bentuk dari pecahan persen?</p>
        <p style="text-align: justify">Persen adalah bentuk	lain dari pecahan berpenyebut seratus yang ditulis menggunakan tanda % ya sobat.</p></br>
    }q
    "Bilangan 13% dibaca tiga belas persen"
    materi
;

: materi-mengubahbentukPecahan ( -- "s" )
    "Mengubah Bentuk Pecahan"
    "https://i.imgur.com/y288uBw.png"
    q{
        <h4>Hai SobatMetan!</h4>
        <p style="text-align: justify"> Akhirnya sudah sampai tahap mengubah bentuk pecahan ya sobatMetan. Nah dalam tahap ini Metan akan memberi contoh bagaimana mengubah bentuk pecahan, baik itu pecahan biasa ke desimal, desimal ke pecahan biasa, pecahan biasa ke persen dan persen ke pecahan biasa. </p>
        <p style="text-align: justify"><h4>Pecahan Biasa ke Desimal</h4></p>
        <p style="text-align: justify">Ubah menjadi pecahan berpenyebut 10, 100, atau seterusnya ya, lalu tuliskan desimalnya sobat.</p>
        <p style="text-align: justify"><h4>Desimal ke Pecahan Biasa</h4></p>
        <p style="text-align: justify">Ubah pecahan desimal menjadi pecahan berpenyebut 10, 100, atau seterusnya ya, lalu sederhanakan sobat.</p>
        <p style="text-align: justify"><h4>Pecahan Biasa ke Persen</h4></p>
        <p style="text-align: justify">Ubah menjadi pecahan berpenyebut 100 ya sobat ,	lalu tuliskan dalam bentuk persen.</p>
        <p style="text-align: justify"><h4>Persen ke Pecahan Biasa</h4></p>
        <p style="text-align: justify">Ubah bentuk persen menjadi pecahan berpenyebut 100, lalu sederhanakan.</p>
    }q
    "Ingat ya sobat Metan desimal itu yang ada komanya(,) di angkanya, pecahan biasa ada tanda per-nya(/), dan persen ada tanda persennya(%)."
    materi
;

\ ---------------------------------------------------------------------------

room: materibentukpecahan

Q: @pecahanBiasa
A: ${ materi-bentukpecahanBiasa } ${ menu-back }
--

Q: @pecahanCampuran
A: ${ materi-bentukpecahanCampuran } ${ menu-back }
--

Q: @pecahanDesimal
A: ${ materi-bentukpecahanDesimal } ${ menu-back }
--

Q: @persen
A: ${ materi-bentukpecahanPersen } ${ menu-back }
--

Q: @mengubahbentukPecahan
A: ${ materi-mengubahbentukPecahan } ${ menu-back }
--

Q: @back
A: ${ menu-bentuk-pecahan } ${kembali-menu-materi} ${ menu-utama }
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



