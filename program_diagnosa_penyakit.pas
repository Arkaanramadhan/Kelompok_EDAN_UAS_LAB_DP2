uses crt;

type
    TString = array[1..100] of string;
    TInteger = array[1..100] of integer;

    TPenyakit = record
        nama : string;
        gejala : TInteger;
        count_gejala : integer;
    end;

    TList = record
        jenis : TString;
        count : TInteger;
        count2 : TInteger;
        gejala : TString;
    end;

var
    i, j, k, a, kecocokan : integer;
    persentase : real;
    database_gejala : array[1..100] of TList;
    database_penyakit : array[1..100] of TPenyakit;
    input_gejala : TInteger;
    jumlah_gejala : integer;
    pilihan : char;

procedure inisialisasi_penyakit;
    begin
        with database_penyakit[1] do
            begin
                nama := 'Diare';
                gejala[1] := 1;
                gejala[2] := 2;
                gejala[3] := 3;
                gejala[4] := 7;
                gejala[5] := 45;
                gejala[6] := 46;
                gejala[7] := 50;
                gejala[8] := 54;
                gejala[9] := 55;
                gejala[10] := 56;
                count_gejala := 10;
            end;
        with database_penyakit[2] do
            begin
                nama := 'Sembelit';
                gejala[1] := 2;
                gejala[2] := 4;
                gejala[3] := 5;
                gejala[4] := 6;
                gejala[5] := 7;
                gejala[6] := 8;
                gejala[7] := 46;
                gejala[8] := 55;
                gejala[9] := 56;
                gejala[10] := 57;
                count_gejala := 10;
            end;
        with database_penyakit[3] do
            begin
                nama := 'Infeksi Saluran Pernapasan Akut (ISPA)';
                gejala[1] := 14;
                gejala[2] := 15;
                gejala[3] := 16;
                gejala[4] := 17;
                gejala[5] := 29;
                gejala[6] := 45;
                gejala[7] := 46;
                gejala[8] := 50;
                gejala[9] := 58;
                gejala[10] := 69;
                count_gejala := 10;
            end;
        with database_penyakit[4] do
            begin
                nama := 'Demam Berdarah Dengue (DBD)';
                gejala[1] := 29;
                gejala[2] := 34;
                gejala[3] := 45;
                gejala[4] := 50;
                gejala[5] := 53;
                gejala[6] := 55;
                gejala[7] := 56;
                gejala[8] := 60;
                gejala[9] := 61;
                gejala[10] := 62;
                count_gejala := 10;
            end;
        with database_penyakit[5] do
            begin
                nama := 'Hipertensi (Tekanan Darah Tinggi)';
                gejala[1] := 16;
                gejala[2] := 17;
                gejala[3] := 21;
                gejala[4] := 22;
                gejala[5] := 23;
                gejala[6] := 24;
                gejala[7] := 25;
                gejala[8] := 29;
                gejala[9] := 30;
                gejala[10] := 45;
                gejala[11] := 69;
                count_gejala := 11;
            end;
        with database_penyakit[6] do
            begin
                nama := 'Hipotensi (Tekanan Darah Rendah_';
                gejala[1] := 20;
                gejala[2] := 22;
                gejala[3] := 26;
                gejala[4] := 27;
                gejala[5] := 28;
                gejala[6] := 31;
                gejala[7] := 45;
                gejala[8] := 56;
                gejala[9] := 63;
                gejala[10] := 69;
                count_gejala := 10;
            end;
        with database_penyakit[7] do
            begin
                nama := 'Diabetes Melitus Tipe I';
                gejala[1] := 12;
                gejala[2] := 22;
                gejala[3] := 41;
                gejala[4] := 42;
                gejala[5] := 45;
                gejala[6] := 52;
                gejala[7] := 55;
                gejala[8] := 64;
                gejala[9] := 65;
                gejala[10] := 66;
                count_gejala := 10;
            end;
        with database_penyakit[8] do
            begin
                nama := 'Diabetes Melitus Tipe II';
                gejala[1] := 12;
                gejala[2] := 22;
                gejala[3] := 32;
                gejala[4] := 39;
                gejala[5] := 42;
                gejala[6] := 45;
                gejala[7] := 52;
                gejala[8] := 64;
                gejala[9] := 65;
                gejala[10] := 67;
                count_gejala := 10;
            end;
        with database_penyakit[9] do
            begin
                nama := 'Penyakit Jantung Koroner';
                gejala[1] := 16;
                gejala[2] := 17;
                gejala[3] := 20;
                gejala[4] := 43;
                gejala[5] := 45;
                gejala[6] := 48;
                gejala[7] := 51;
                gejala[8] := 56;
                gejala[9] := 63;
                gejala[10] := 68;
                count_gejala := 10;
            end;
        with database_penyakit[10] do
            begin
                nama := 'Asma';
                gejala[1] := 14;
                gejala[2] := 16;
                gejala[3] := 17;
                gejala[4] := 18;
                gejala[5] := 19;
                gejala[6] := 44;
                gejala[7] := 45;
                count_gejala := 7;
            end;
        with database_penyakit[11] do
            begin
                nama := 'Flu';
                gejala[1] := 14;
                gejala[2] := 15;
                gejala[3] := 29;
                gejala[4] := 45;
                gejala[5] := 46;
                gejala[6] := 47;
                gejala[7] := 50;
                gejala[8] := 53;
                gejala[9] := 58;
                gejala[10] := 73;
                count_gejala := 10;
            end;
        with database_penyakit[12] do
            begin
                nama := 'Maag';
                gejala[1] := 7;
                gejala[2] := 9;
                gejala[3] := 10;
                gejala[4] := 11;
                gejala[5] := 12;
                gejala[6] := 13;
                gejala[7] := 18;
                gejala[8] := 46;
                gejala[9] := 56;
                gejala[10] := 72;
                count_gejala := 10;
            end;
        with database_penyakit[13] do
            begin
                nama := 'TBC';
                gejala[1] := 14;
                gejala[2] := 16;
                gejala[3] := 17;
                gejala[4] := 41;
                gejala[5] := 45;
                gejala[6] := 46;
                gejala[7] := 49;
                gejala[8] := 50;
                gejala[9] := 59;
                count_gejala := 9;
            end;
        with database_penyakit[14] do
            begin
                nama := 'Campak';
                gejala[1] := 14;
                gejala[2] := 15;
                gejala[3] := 34;
                gejala[4] := 35;
                gejala[5] := 45;
                gejala[6] := 46;
                gejala[7] := 50;
                gejala[8] := 53;
                gejala[9] := 70;
                gejala[10] := 71;
                count_gejala := 10;
            end;
        with database_penyakit[15] do
            begin
                nama := 'Gagal Ginjal';
                gejala[1] := 16;
                gejala[2] := 17;
                gejala[3] := 33;
                gejala[4] := 37;
                gejala[5] := 38;
                gejala[6] := 45;
                gejala[7] := 46;
                gejala[8] := 51;
                gejala[9] := 56;
                gejala[10] := 69;
                count_gejala := 10;
            end;
    end;

procedure inisialisasi_jenis_gejala;
    begin
        with database_gejala[1] do
            begin
                jenis[1] := 'Sistem Pencernaan';
                count[1] := 13;
                count2[1] := 13;
                gejala[1] := '1. BAB cair.';
                gejala[2] := '2. Feses berbau menyengat atau bercampur darah.';
                gejala[3] := '3. Penurunan berat badan mendadak.';
                gejala[4] := '4. Frekuensi BAB < tiga kali dalam seminggu.';
                gejala[5] := '5. Kesulitan atau rasa sakit saat BAB.';
                gejala[6] := '6. Feses keras atau berbentuk seperti batu kecil.';
                gejala[7] := '7. Perut terasa penuh atau kembung.';
                gejala[8] := '8. Kesulitan buang angin.';
                gejala[9] := '9. Nyeri ulu hati atau rasa terbakar di perut bagian atas.';
                gejala[10] := '10. Perasaan begah setelah makan sedikit.';
                gejala[11] := '11. Muntah darah atau feses berwarna hitam.';
                gejala[12] := '12. Rasa lapar berlebihan atau perut kosong yang menyakitkan.';
                gejala[13] := '13. Sendawa berlebihan.';
            end;

        with database_gejala[2] do
            begin
                jenis[2] := 'Sistem Pernapasan';
                count[2] := 6;
                count2[2] := database_gejala[1].count2[1] + count[2]; //19
                gejala[14] := '14. Batuk (kering atau berdahak).';
                gejala[15] := '15. Pilek atau hidung tersumbat.';
                gejala[16] := '16. Sesak napas atau napas berbunyi (mengi).';
                gejala[17] := '17. Nyeri dada saat bernapas.';
                gejala[18] := '18. Gangguan tidur akibat batuk atau sulit bernapas.';
                gejala[19] := '19. Napas pendek bahkan saat beristirahat.';
            end;

        with database_gejala[3] do
            begin
                jenis[3] := 'Sistem Peredaran Darah';
                count[3] := 9;
                count2[3] := database_gejala[2].count2[2] + count[3]; //28
                gejala[20] := '20. Pusing atau sensasi melayang.';
                gejala[21] := '21. Wajah memerah.';
                gejala[22] := '22. Penglihatan kabur.';
                gejala[23] := '23. Jantung berdebar-debar.';
                gejala[24] := '24. Mimisan.';
                gejala[25] := '25. Telinga berdenging.';
                gejala[26] := '26. Pingsan (sinkop).';
                gejala[27] := '27. Kulit pucat dan dingin.';
                gejala[28] := '28. Napas pendek atau cepat.';
            end;

        with database_gejala[4] do
            begin
                jenis[4] := 'Sistem Saraf';
                count[4] := 4;
                count2[4] := database_gejala[3].count2[3] + count[4];
                gejala[29] := '29. Sakit kepala.';
                gejala[30] := '30. Pusing atau sensasi melayang.';
                gejala[31] := '31. Kebingungan atau kesulitan berkonsentrasi.';
                gejala[32] := '32. Mati rasa atau kesemutan di tangan dan kaki.';
            end;

        with database_gejala[5] do
            begin
                jenis[5] := 'Sistem Imun dan Kulit';
                count[5] := 4;
                count2[5] := database_gejala[4].count2[4] + count[5];
                gejala[33] := '33. Kulit gatal yang tidak kunjung hilang.';
                gejala[34] := '34. Ruam merah di kulit (bercak pendarahan).';
                gejala[35] := '35. Bintik Koplik (bintik putih kecil di dalam mulut).';
                gejala[36] := '36. Kulit pucat dan dingin';
            end;

        with database_gejala[6] do
            begin
                jenis[6] := 'Sistem Ginjal';
                count[6] := 2;
                count2[6] := database_gejala[5].count2[5] + count[6];
                gejala[37] := '37. Penurunan jumlah urin atau produksi urin yang tidak normal';
                gejala[38] := '38. Perubahan warna urin (keruh, berbusa, atau berdarah).';
            end;

        with database_gejala[7] do
            begin
                jenis[7] := 'Sistem Endokrin dan Metabolisme';
                count[7] := 4;
                count2[7] := database_gejala[6].count2[6] + count[7];
                gejala[39] := '39. Kulit gelap pada lipatan tubuh (acanthosis nigricans).';
                gejala[40] := '40. Rasa lapar yang ekstrem (polifagia).';
                gejala[41] := '41. Penurunan berat badan yang tidak dapat dijelaskan.';
                gejala[42] := '42. Luka yang lambat sembuh.';
            end;

        with database_gejala[8] do
            begin
                jenis[8] := 'Sistem Kardiovaskular';
                count[8] := 2;
                count2[8] := database_gejala[7].count2[7] + count[8];
                gejala[43] := '43. Nyeri yang menjalar ke lengan, leher, punggung, atau rahang.';
                gejala[44] := '44. Peningkatan detak jantung saat serangan.';
            end;

        with database_gejala[9] do
            begin
                jenis[9] := 'Umum dan Sistemik';
                count[9] := 28;
                count2[9] := database_gejala[8].count2[8] + count[9];
                gejala[45] := '45. Lemas atau kelelahan.';
                gejala[46] := '46. Kehilangan nafsu makan.';
                gejala[47] := '47. Menggigil.';
                gejala[48] := '48. Keringat dingin.';
                gejala[49] := '49. Berkeringat di malam hari.';
                gejala[50] := '50. Demam';
                gejala[51] := '51. Pembengkakan di kaki, pergelangan kaki, atau wajah (edema).';
                gejala[52] := '52. Haus berlebih (polidipsia).';
                gejala[53] := '53. Nyeri otot dan sendi.';
                gejala[54] := '54. Dehidrasi.';
                gejala[55] := '55. Kram atau nyeri perut.';
                gejala[56] := '56. Mual atau muntah.';
                gejala[57] := '57. Sensasi bahwa BAB belum tuntas';
                gejala[58] := '58. Sakit tenggorokan atau iritasi';
                gejala[59] := '59. Pembengkakan kelenjar getah bening di leher';
                gejala[60] := '60. Nyeri di belakang mata';
                gejala[61] := '61. Gusi atau hidung';
                gejala[62] := '62. Penurunan jumlah trombosit';
                gejala[63] := '63. Detak jantung yang tidak teratur atau lemah';
                gejala[64] := '64. Sering buang air kecil.';
                gejala[65] := '65. Infeksi berulang pada kulit atau saluran kemih.';
                gejala[66] := '66. Napas berbau seperti buah';
                gejala[67] := '67. Penambahan berat badan.';
                gejala[68] := '68. Sensasi berat atau tekanan di dada.';
                gejala[69] := '69. Tekanan darah yang sulit dikontrol.';
                gejala[70] := '70. Sensitivitas terhadap cahaya';
                gejala[71] := '71. Mata merah atau iritasi.';
                gejala[72] := '72. Rasa asam atau pahit di mulut.';
                gejala[73] := '73. Bersin-bersin ';
            end;
    end;

procedure user_input_gejala;
    begin
    k := 1;
        for i := 1 to 9 do
            begin
                with database_gejala[i] do
                    begin
                        if i = 1 then
                            begin
                                repeat
                                    writeln('Gejala pada', jenis[i]);
                                    writeln('(masukkan nomor gejala yang anda rasakan satu per satu)');
                                    for j := 1 to count[i] do
                                        begin
                                            writeln(gejala[j]);
                                        end;
                                    writeln('Apakah ada gejala yang anda rasakan? (y/t) : '); readln(pilihan);
                                    pilihan := lowercase(pilihan);
                                    if (pilihan = 'y') then
                                        begin
                                            writeln('Gejala manakah yang anda rasakan : '); readln(input_gejala[k]);
                                            k += 1;
                                            inc(jumlah_gejala);
                                            clrscr;
                                        end
                                    else
                                        begin
                                            clrscr;
                                        end;
                                until (pilihan = 't');
                            end
                        else if (i = 2) or (i = 3) or (i = 4) or (i = 5) or (i = 6) or (i = 7) or (i = 8) then
                            begin
                                repeat
                                    writeln('Gejala pada', jenis[i]);
                                    writeln('(masukkan nomor gejala yang anda rasakan satu per satu)');
                                    for j := (1 + database_gejala[i-1].count2[i-1]) to count2[i] do
                                        begin
                                            writeln(gejala[j]);
                                        end;
                                    writeln('Apakah ada gejala yang anda rasakan? (y/t) : '); readln(pilihan);
                                    pilihan := lowercase(pilihan);
                                    if (pilihan = 'y') then
                                        begin
                                            writeln('Gejala manakah yang anda rasakan : '); readln(input_gejala[k]);
                                            k += 1;
                                            inc(jumlah_gejala);
                                            clrscr;
                                        end
                                    else
                                        begin
                                            clrscr;
                                        end;
                                until (pilihan = 't');
                            end
                        else
                            begin
                                repeat
                                    writeln('Gejala pada', jenis[i]);
                                    writeln('(masukkan nomor gejala yang anda rasakan satu per satu)');
                                    for j := (1 + database_gejala[i-1].count2[i-1]) to count2[i] + 1 do
                                        begin
                                            writeln(gejala[j]);
                                        end;
                                    writeln('Apakah ada gejala yang anda rasakan? (y/t) : '); readln(pilihan);
                                    pilihan := lowercase(pilihan);
                                    if (pilihan = 'y') then
                                        begin
                                            writeln('Gejala manakah yang anda rasakan : '); readln(input_gejala[k]);
                                            k += 1;
                                            inc(jumlah_gejala);
                                            clrscr;
                                        end
                                    else
                                        begin
                                            clrscr;
                                        end;
                                until (pilihan = 't');
                            end;
                    end;
            end;
    end;

procedure diagnosa;

var
    penyakit_terdiagnosa : array[1..100] of string;
    kemungkinan : array[1..100] of real;
    hitung : integer;
    kecocokan : array[1..100] of integer;

begin
    hitung := 0;
    writeln('Hasil Diagnosa : ');

    // Inisialisasi kecocokan untuk setiap penyakit
    for j := 1 to 15 do
        begin
            kecocokan[j] := 0;
        end;

    // Hitung kecocokan untuk setiap penyakit
    for i := 1 to jumlah_gejala do
    begin
        for j := 1 to 15 do
        begin
            for k := 1 to database_penyakit[j].count_gejala do
            begin
                if input_gejala[i] = database_penyakit[j].gejala[k] then
                begin
                    kecocokan[j] := kecocokan[j] + 1; // Tambah kecocokan untuk penyakit j
                end;
            end;
        end;
    end;

    // Tampilkan hasil
    for j := 1 to 15 do
    begin
        if kecocokan[j] > 0 then
            begin
                hitung := hitung + 1;
                persentase := (kecocokan[j] / database_penyakit[j].count_gejala) * 100;
                penyakit_terdiagnosa[hitung] := database_penyakit[j].nama;
                kemungkinan[hitung] := persentase;
                writeln('Penyakit: ', database_penyakit[j].nama, ' - Kemungkinan: ', persentase:0:2, '%');
            end;
    end;

    if hitung = 0 then
    begin
        writeln('Tidak ada penyakit yang cocok dengan gejala yang Anda masukkan.');
    end;
end;

begin
    clrscr;
    inisialisasi_jenis_gejala;
    inisialisasi_penyakit;
    user_input_gejala;
    diagnosa;
end.