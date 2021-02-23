Užduotis nr. 9

"Duomenų failą data_pol surūšiuokite pagal metus ir pagal šalis. Stebinius, kurie turi 50 proc. arba daugiau tuščių reikšmių, pašalinkite." 

Duomenų failas data_pol turi 7170 stebinius ir 7 kintamuosius. 

Pirmiausia surūšiavau duomenų failą pagal kintamuosius year ir country didėjančia tvarka (nuo anksčiausių metų iki vėlyviausių bei alfabetine tvarka). 

data_pol %>%
  group_by(year, country)
  
Tuomet pašalinau stebinius, kurie turi 50 proc. arba daugiau tuščių reikšmių.

data_pol[which(rowMeans(!is.na(data_pol)) >= 0.5), ]

Duomenų faile liko 4000 stebinių. 
