# Gradient-Descent

Gradientni spust je iterativna metoda za iskanje lokalnega minimuma funkcije. To je algoritem, ki se lahko uporablja na različnih področjih. Cilj pa je imeti algoritem s čim manj iteracij. \\

Samo delovanje algoritma je sledeče. Najprej si izberemo začetno točko (initial value) - $x_0 \in \mathbb{R}^n $ in hitrost konvergence (learning rate). Zapišemo stroškovno funkcijo (Loss Function) in jo odvajamo po vseh parametrih. Na ta način dobimo gradient stroškovne funkcije. Izbrano začetku točko nato vstavimo v ta gradient in s pomočjo tega poračunamo velikost naslednjega koraka:
$$ \text{velikost koraka} = \nabla f(x_t) \cdot \text{learning rate} $$
Vrednost novega parametra pa dobimo s pomočjo spodnje formule:
$$ x_1 = x_0 - \text{velikost koraka} \in \mathbb{R}^n$$
Ko izračunamo vrednost $x_1$ postopek ponovimo.\\
