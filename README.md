# Gradient-Descent

Gradientni spust je iterativna metoda za iskanje lokalnega minimuma funkcije. To je algoritem, ki se lahko uporablja na različnih področjih. Cilj pa je imeti algoritem s čim manj iteracij. 

Samo delovanje algoritma je sledeče. Najprej si izberemo začetno točko in učno stopnjo(learning rate). Zapišemo stroškovno funkcijo in jo odvajamo po vseh parametrih. Na ta način dobimo gradient stroškovne funkcije. Izbrano začetno točko nato vstavimo v ta gradient in s pomočjo tega poračunamo velikost naslednjega koraka ter vrednost novega parametra. Ko izračunamo vrednost nove točke postopek ponovimo. Ponavljamo dokler ne dosežemo maksimalno število iteracij oz. je končni rezultat že dovolj blizu minimuma.


