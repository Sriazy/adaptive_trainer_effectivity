library(semPower)
library(lavaan)


Hypothese_1 <- '
i =~ 1*Punktzahl0 + 1*Punktzahl1 + 1*Punktzahl2
s =~ 0*Punktzahl0 + 1*Punktzahl1 + 2*Punktzahl2

Punktzahl0 ~ Themagelernt0
Punktzahl1 ~ Themagelernt1
Punktzahl2 ~ Themagelernt2

i ~ AT
s ~ AT
'


nr_of_df = semPower.getDf(Hypothese_1)


power_analysis <- semPower.aPriori(effect = .25, effect.measure = 'F0', 
                       alpha = .05, power = .90, df = nr_of_df)


summary(power_analysis)