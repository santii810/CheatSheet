
#Actualiza base de datos con fecha 6 meses despues de la seleccionada
update activity 
set finish_date = DATEADD(month,6, created_date)
from activity where 1=1
