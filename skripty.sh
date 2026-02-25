echo "Ahoj" | fold -w1 | nl -w1 -s';' > slovo.txt
tr 'A-Z' 'a-z' < slovo.txt  > mala_pismena.txt
sort -t';' -k2 mala_pismena.txt > slovo_sorted.txt
join -t';' -1 2 -2 1 slovo_sorted.txt hlaskovaci_abeceda.txt > spojene.txt
sort -t';' -n -k2 spojene.txt > final_sorted.txt
cut -d ';' -f3 final_sorted.txt

join -t ';' sifra.txt alphabet.txt > spojna_sifra.txt
sort -t ';' -n -k2 spojna_sifra.txt > sifra_serazena.txt
cut -d';' -f3 sifra_serazena.txt | tr '_' ' ' | tr -d '/n'