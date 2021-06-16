l2encdec -d l2.ini
start dec-l2.ini
pause
l2encdec -h 413 dec-l2.ini
del dec-l2.ini
del l2.ini
copy enc-dec-l2.ini l2.ini
del enc-dec-l2.ini

