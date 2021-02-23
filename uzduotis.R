
# Duomenų failą data_pol surūšiuokite pagal metus ir pagal šalis.
# Stebinius, kurie turi 50 proc. arba daugiau tuščių reikšmių, pašalinkite.

data_pol %>%
  group_by(year, country)


newData_pol <- data_pol[which(rowMeans(!is.na(data_pol)) >= 0.5), ]
head(newData_pol)

