Program pozwalajacy policzyc pole kwadratu lub objetosc szescianu.
Program najpierw prosi uzytkownika o decyzje czy policzyc pole kwadratu
czy objetosc szescianu. Nastepnie pobiera od uzytkownika wartosci typu INT i
wyswietla obliczone pole badz objetosc, program nie przewiduje dzialania w 
petli, by obliczyc kolejne wartosci trzeba go ponownie uruchomic.

Funkcje do liczenia objetosci i pola sa w odzielnych plikach zrodlowych i 
naglowkowych, utworzona z nich zostaje biblioteka wspoldzielona libfunc.so
ktora zostaje wykorzystana przy kompilacji programu Code2

Program kompilujemy i tworzymy za pomoca polecenia "make Code2", lub zwyklego
make, w celu uruchomienia nalezy wpisac ./Code2

Nie probowalem jeszcze uruchomic programu na innej maszynie, w razie problemu z
biblioteka mozna zmienic wartosc zmiennej PATHL w pliku makefile lub uzyc polecenia
sudo ldconfig, w ostatecznosci mozna skorzystac z polecenia 
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/sciezka/w/ktorej/jest/biblioteka

pierwszy commit:
    inicjalizacja repo + utworzenie plikow zrodlowych oraz naglowkowych do 
    programu.

drugi commit:
    dodanie najprostszego pliku makefile, problem z niewyszukiwaniem biblioteki
    rozwiazany za pomoca -rpath.

trzeci commit:
    Rozbudowanie pliku makefile o zmienne automatyczne i zdefiniowane przeze
    mnie.

czwarty commit:
    Rozbudowanie pliku makefile o reguly przyrostkow.

piaty commit:
    Rozbudowanie pliku makefile o reguly wzorca.
