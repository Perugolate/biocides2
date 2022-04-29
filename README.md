# biocides2

This repository contains the code and data required to download raw sequencing reads from the SRA and perform quality trimming, alignment, and variant calling.

## Results

### SH1000

You can download this as a tsv [here](https://github.com/Perugolate/biocides2/blob/main/sh1000.tsv).

|Treatment |Type       |Label   |Mutation                                                                                      |Locus tag    |Annotation |Function                                        |Run         |
|:---------|:----------|:-------|:---------------------------------------------------------------------------------------------|:------------|:----------|:-----------------------------------------------|:-----------|
|PG        |population |4       |frameshift variant c.117delG p.Gly41fs                                                        |PROKKA_01659 |hemY       |Protoporphyrinogen oxidase                      |SRR18771780 |
|PG        |colony     |4-s-c1  |frameshift variant c.117delG p.Gly41fs                                                        |PROKKA_01659 |hemY       |Protoporphyrinogen oxidase                      |SRR18771792 |
|PG        |population |32      |frameshift variant c.117delG p.Gly41fs                                                        |PROKKA_01659 |hemY       |Protoporphyrinogen oxidase                      |SRR18771797 |
|PG        |colony     |32-s-c1 |frameshift variant c.117delG p.Gly41fs                                                        |PROKKA_01659 |hemY       |Protoporphyrinogen oxidase                      |SRR18771786 |
|PG        |population |4       |stop gained c.991A>T p.Lys331*                                                                |PROKKA_01871 |cls2       |Cardiolipin synthase                            |SRR18771780 |
|PG        |colony     |4-s-c1  |stop gained c.991A>T p.Lys331*                                                                |PROKKA_01871 |cls2       |Cardiolipin synthase                            |SRR18771792 |
|PG        |population |32      |frameshift variant c.786delA p.Lys262fs                                                       |PROKKA_01871 |cls2       |Cardiolipin synthase                            |SRR18771797 |
|PG        |colony     |32-s-c1 |frameshift variant c.786delA p.Lys262fs                                                       |PROKKA_01871 |cls2       |Cardiolipin synthase                            |SRR18771786 |
|PG        |population |33      |stop lost c.1485A>T p.Ter495Tyrext*?                                                          |PROKKA_01871 |cls2       |Cardiolipin synthase                            |SRR18771796 |
|PG        |colony     |33-s-c1 |stop lost c.1485A>T p.Ter495Tyrext*?                                                          |PROKKA_01871 |cls2       |Cardiolipin synthase                            |SRR18771785 |
|PG        |colony     |32-s-c1 |missense variant c.515C>T p.Pro172Leu                                                         |PROKKA_01192 |parE       |DNA topoisomerase 4 subunit B                   |SRR18771786 |
|PG        |population |33      |stop gained c.703C>T p.Gln235*                                                                |PROKKA_01660 |hemH       |Ferrochelatase                                  |SRR18771796 |
|PG        |colony     |33-s-c1 |stop gained c.703C>T p.Gln235*                                                                |PROKKA_01660 |hemH       |Ferrochelatase                                  |SRR18771785 |
|PG        |population |33      |g.2185374C>T                                                                                  |intergenic   |-          |-                                               |SRR18771796 |
|PG        |colony     |33-s-c1 |g.2185374C>T                                                                                  |intergenic   |-          |-                                               |SRR18771785 |
|BAC       |population |14      |g.687271T>A                                                                                   |intergenic   |-          |-                                               |SRR18771776 |
|BAC       |colony     |14-s-c2 |g.687271T>A                                                                                   |intergenic   |-          |-                                               |SRR18771790 |
|BAC       |population |7       |g.687271T>A                                                                                   |intergenic   |-          |-                                               |SRR18771779 |
|BAC       |colony     |7-s-c1  |g.687271T>A                                                                                   |intergenic   |-          |-                                               |SRR18771791 |
|BAC       |population |14      |missense variant c.477C>G p.Asp159Glu                                                         |PROKKA_02369 |-          |Baeyer-Villiger flavin-containing monooxygenase |SRR18771776 |
|BAC       |colony     |14-s-c2 |missense variant c.477C>G p.Asp159Glu                                                         |PROKKA_02369 |-          |Baeyer-Villiger flavin-containing monooxygenase |SRR18771790 |
|BAC       |population |7       |missense variant c.477C>G p.Asp159Glu                                                         |PROKKA_02369 |-          |Baeyer-Villiger flavin-containing monooxygenase |SRR18771779 |
|BAC       |colony     |7-s-c1  |missense variant c.477C>G p.Asp159Glu                                                         |PROKKA_02369 |-          |Baeyer-Villiger flavin-containing monooxygenase |SRR18771791 |
|BAC       |colony     |14-s-c2 |missense variant c.636G>T p.Gln212His                                                         |PROKKA_01209 |trpB       |Tryptophan synthase beta chain                  |SRR18771790 |
|BAC       |colony     |14-s-c2 |frameshift variant c.618dupT p.Arg207fs                                                       |PROKKA_01818 |agrA       |Accessory gene regulator protein A              |SRR18771790 |
|BAC       |colony     |14-s-c2 |missense variant & inframe deletion c.622_630delCATAATATTinsTCTTTCp.His208_Ile210delinsSerPhe |PROKKA_01818 |agrA       |Accessory gene regulator protein A              |SRR18771790 |
|BAC       |colony     |14-s-c2 |missense variant c.778G>A p.Ala260Thr                                                         |PROKKA_01862 |kdpD       |Sensor protein KdpD                             |SRR18771790 |
|BAC       |colony     |7-s-c1  |synonymous variant c.591G>A p.Gln197Gln                                                       |PROKKA_01039 |-          |hypothetical protein                            |SRR18771791 |
|BAC       |colony     |7-s-c1  |missense variant c.684A>T p.Glu228Asp                                                         |PROKKA_01817 |dpiB       |Sensor histidine kinase DpiB                    |SRR18771791 |
|BAC       |colony     |7-s-c1  |synonymous variant c.525T>A p.Thr175Thr                                                       |PROKKA_01929 |czcD       |Cadmium, cobalt and zinc/H( )-K( ) antiporter   |SRR18771791 |
|BAC       |population |35      |missense variant c.277G>A p.Ala93Thr                                                          |PROKKA_01081 |topA       |DNA topoisomerase 1                             |SRR18771794 |
|BAC       |colony     |35-s-c2 |missense variant c.277G>A p.Ala93Thr                                                          |PROKKA_01081 |topA       |DNA topoisomerase 1                             |SRR18771783 |
|BAC       |population |35      |synonymous variant c.804T>A p.Ile268Ile                                                       |PROKKA_01457 |-          |putative AAA domain-containing protein          |SRR18771794 |
|BAC       |colony     |35-s-c2 |synonymous variant c.804T>A p.Ile268Ile                                                       |PROKKA_01457 |-          |putative AAA domain-containing protein          |SRR18771783 |
|BAC       |population |35      |stop gained c.2035C>T p.Gln679*                                                               |PROKKA_01463 |relA       |GTP pyrophosphokinase                           |SRR18771794 |
|BAC       |colony     |35-s-c2 |stop gained c.2035C>T p.Gln679*                                                               |PROKKA_01463 |relA       |GTP pyrophosphokinase                           |SRR18771783 |
|CON       |population |11      |g.1960175G>A                                                                                  |intergenic   |-          |-                                               |SRR18771778 |

### ATCC6538

You can download this as a tsv [here](https://github.com/Perugolate/biocides2/blob/main/atcc6538.tsv).

|Treatment |Type       |Label   |Mutation    |Locus tag  |Annotation |Function |Run         |
|:---------|:----------|:-------|:-----------|:----------|:----------|:--------|:-----------|
|BAC       |population |17      |g.714937C>G |Intergenic |-          |-        |SRR18771805 |
|BAC       |colony     |17-s-c1 |g.714937C>G |Intergenic |-          |-        |SRR18771789 |

### ST398

You can download this as a tsv [here](https://github.com/Perugolate/biocides2/blob/main/st398.tsv).

|Treatment |Type       |Label   |Mutation                              |Locus tag     |Annotation |Function                          |Run         |
|:---------|:----------|:-------|:-------------------------------------|:-------------|:----------|:---------------------------------|:-----------|
|BAC       |population |21      |g.756786.C>T                          |Intergenic    |-          |-                                 |SRR18771804 |
|BAC       |colony     |21-s-c1 |g.756786.C>T                          |Intergenic    |-          |-                                 |SRR18771788 |
|BAC       |population |22      |g.756786.C>T                          |Intergenic    |-          |-                                 |SRR18771803 |
|BAC       |colony     |22-s-c1 |g.756786.C>T                          |Intergenic    |-          |-                                 |SRR18771787 |
|BAC       |colony     |21-s-c1 |frameshift variant c.88delC p.Gln30fs |B4603_RS05320 |fmtA       |teichoic acid D-Ala esterase FmtA |SRR18771788 |
|BAC       |colony     |22-s-c1 |missense variant c.841C>A p.Gln281Lys |B4603_RS05320 |fmtA       |teichoic acid D-Ala esterase FmtA |SRR18771787 |
|BAC       |colony     |40-s-c2 |missense variant c.808G>A p.Glu270Lys |B4603_RS08370 |rpoD       |RNA polymerase sigma factor RpoD  |SRR18771782 |

```
$ATCC6538

Call:
lm(formula = lag ~ type, data = .)

Residuals:
    Min      1Q  Median      3Q     Max 
-5.4700 -1.8483 -0.3683  2.6392  4.4633 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  135.687      1.517  89.455 2.72e-13 ***
typeBAC_17    -0.020      2.145  -0.009    0.993    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3.392 on 8 degrees of freedom
Multiple R-squared:  1.087e-05,	Adjusted R-squared:  -0.125 
F-statistic: 8.693e-05 on 1 and 8 DF,  p-value: 0.9928


$CC398

Call:
lm(formula = lag ~ type, data = .)

Residuals:
     Min       1Q   Median       3Q      Max 
-14.9200  -4.5333  -0.9617   1.5950  21.8300 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  155.170      4.482  34.618   <2e-16 ***
typeBAC_21   -11.203      6.339  -1.767   0.0962 .  
typeBAC_22     1.953      6.339   0.308   0.7619    
typeBAC_40    -2.467      6.339  -0.389   0.7023    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 10.02 on 16 degrees of freedom
Multiple R-squared:  0.2392,	Adjusted R-squared:  0.09661 
F-statistic: 1.677 on 3 and 16 DF,  p-value: 0.2118


$SH1000

Call:
lm(formula = lag ~ type, data = .)

Residuals:
   Min     1Q Median     3Q    Max 
-5.353 -1.450 -0.500  1.740  5.207 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  152.000      1.232 123.333   <2e-16 ***
typeBAC_14    -3.337      1.743  -1.914   0.0666 .  
typeBAC_35    31.973      1.743  18.345   <2e-16 ***
typeBAC_7     -2.500      2.013  -1.242   0.2253    
typePEX_32    54.960      1.743  31.533   <2e-16 ***
typePEX_33    54.610      1.743  31.332   <2e-16 ***
typePEX_4     53.570      1.743  30.736   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 2.756 on 26 degrees of freedom
Multiple R-squared:  0.9912,	Adjusted R-squared:  0.9891 
F-statistic: 485.5 on 6 and 26 DF,  p-value: < 2.2e-16


$ATCC6538

Call:
lm(formula = vmax ~ type, data = .)

Residuals:
    Min      1Q  Median      3Q     Max 
-0.2260 -0.0395 -0.0130  0.0405  0.2140 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  2.90600    0.06510  44.639    7e-11 ***
typeBAC_17  -0.26600    0.09207  -2.889   0.0202 *  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.1456 on 8 degrees of freedom
Multiple R-squared:  0.5106,	Adjusted R-squared:  0.4495 
F-statistic: 8.348 on 1 and 8 DF,  p-value: 0.02022


$CC398

Call:
lm(formula = vmax ~ type, data = .)

Residuals:
    Min      1Q  Median      3Q     Max 
-0.6510 -0.3317 -0.0885  0.1930  0.9170 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)   3.4890     0.2007  17.388 8.18e-12 ***
typeBAC_21   -0.2950     0.2838  -1.040    0.314    
typeBAC_22   -0.0780     0.2838  -0.275    0.787    
typeBAC_40    0.2340     0.2838   0.825    0.422    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.4487 on 16 degrees of freedom
Multiple R-squared:  0.1817,	Adjusted R-squared:  0.02826 
F-statistic: 1.184 on 3 and 16 DF,  p-value: 0.347


$SH1000

Call:
lm(formula = vmax ~ type, data = .)

Residuals:
   Min     1Q Median     3Q    Max 
-0.194 -0.039 -0.011  0.048  0.146 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  2.62100    0.03516  74.549  < 2e-16 ***
typeBAC_14  -0.11200    0.04972  -2.253  0.03295 *  
typeBAC_35  -0.14200    0.04972  -2.856  0.00832 ** 
typeBAC_7   -0.17100    0.05741  -2.978  0.00620 ** 
typePEX_32  -1.05400    0.04972 -21.198  < 2e-16 ***
typePEX_33  -0.04400    0.04972  -0.885  0.38430    
typePEX_4   -0.91700    0.04972 -18.443  < 2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.07862 on 26 degrees of freedom
Multiple R-squared:  0.9729,	Adjusted R-squared:  0.9666 
F-statistic: 155.3 on 6 and 26 DF,  p-value: < 2.2e-16


$ATCC6538

Call:
lm(formula = finalOD ~ type, data = .)

Residuals:
     Min       1Q   Median       3Q      Max 
-0.02900 -0.01090  0.00040  0.00435  0.03500 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept)  0.868200   0.009416  92.200 2.14e-13 ***
typeBAC_17  -0.043200   0.013317  -3.244   0.0118 *  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.02106 on 8 degrees of freedom
Multiple R-squared:  0.5681,	Adjusted R-squared:  0.5141 
F-statistic: 10.52 on 1 and 8 DF,  p-value: 0.01181


$CC398

Call:
lm(formula = finalOD ~ type, data = .)

Residuals:
     Min       1Q   Median       3Q      Max 
-0.01940 -0.00925 -0.00170  0.00655  0.03160 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept)  0.924200   0.006447 143.360  < 2e-16 ***
typeBAC_21  -0.016000   0.009117  -1.755  0.09839 .  
typeBAC_22  -0.002800   0.009117  -0.307  0.76271    
typeBAC_40  -0.034200   0.009117  -3.751  0.00174 ** 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.01442 on 16 degrees of freedom
Multiple R-squared:  0.5237,	Adjusted R-squared:  0.4344 
F-statistic: 5.865 on 3 and 16 DF,  p-value: 0.006706


$SH1000

Call:
lm(formula = finalOD ~ type, data = .)

Residuals:
    Min      1Q  Median      3Q     Max 
-0.0304 -0.0144  0.0036  0.0096  0.0328 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept)  0.719200   0.008105  88.739  < 2e-16 ***
typeBAC_14   0.063400   0.011462   5.531 8.31e-06 ***
typeBAC_35   0.045200   0.011462   3.944 0.000542 ***
typeBAC_7    0.050133   0.013235   3.788 0.000811 ***
typePEX_32  -0.057400   0.011462  -5.008 3.29e-05 ***
typePEX_33   0.042200   0.011462   3.682 0.001066 ** 
typePEX_4   -0.038800   0.011462  -3.385 0.002268 ** 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.01812 on 26 degrees of freedom
Multiple R-squared:  0.8844,	Adjusted R-squared:  0.8577 
F-statistic: 33.15 on 6 and 26 DF,  p-value: 5.511e-11


ATCC6538, vmax~type, Ancestor, BAC_17:
lm model parameter contrast

  Contrast       S.E.      Lower     Upper    t df Pr(>|t|)
1    0.266 0.09206519 0.05369728 0.4783027 2.89  8   0.0202
 
ATCC6538, lag~type, Ancestor, BAC_17:
lm model parameter contrast

  Contrast     S.E.     Lower    Upper    t df Pr(>|t|)
1     0.02 2.145107 -4.926625 4.966625 0.01  8   0.9928
 
ATCC6538, finalOD~type, Ancestor, BAc_17:
lm model parameter contrast

  Contrast       S.E.      Lower      Upper    t df Pr(>|t|)
1   0.0432 0.01331691 0.01249116 0.07390884 3.24  8   0.0118
 
CC398, vmax~type, Ancestor, BAC_21:
lm model parameter contrast

  Contrast     S.E.      Lower     Upper    t df Pr(>|t|)
1    0.295 0.283771 -0.3065677 0.8965677 1.04 16    0.314
 
CC398, lag~type, Ancestor, BAC_21:
lm model parameter contrast

  Contrast     S.E.     Lower   Upper    t df Pr(>|t|)
1 11.20333 6.338949 -2.234637 24.6413 1.77 16   0.0962
 
CC398, finalOD~type, Ancestor, BAC_21:
lm model parameter contrast

  Contrast        S.E.        Lower      Upper    t df Pr(>|t|)
1    0.016 0.009117017 -0.003327213 0.03532721 1.75 16   0.0984
 
CC398, vmax~type, Ancestor, BAC_22:
lm model parameter contrast

  Contrast     S.E.      Lower     Upper    t df Pr(>|t|)
1    0.078 0.283771 -0.5235677 0.6795677 0.27 16   0.7869
 
CC398, lag~type, Ancestor, BAC_22:
lm model parameter contrast

   Contrast     S.E.    Lower    Upper     t df Pr(>|t|)
1 -1.953333 6.338949 -15.3913 11.48464 -0.31 16   0.7619
 
CC398, finalOD~type, Ancestor, BAC_22:
lm model parameter contrast

  Contrast        S.E.       Lower      Upper    t df Pr(>|t|)
1   0.0028 0.009117017 -0.01652721 0.02212721 0.31 16   0.7627
 
CC398, vmax~type, Ancestor, BAC_40:
lm model parameter contrast

  Contrast     S.E.      Lower     Upper     t df Pr(>|t|)
1   -0.234 0.283771 -0.8355677 0.3675677 -0.82 16   0.4217
 
CC398, lag~type, Ancestor, BAC_40:
lm model parameter contrast

  Contrast     S.E.    Lower    Upper    t df Pr(>|t|)
1 2.466667 6.338949 -10.9713 15.90464 0.39 16   0.7023
 
CC398, finalOD~type, Ancestor, BAC_40:
lm model parameter contrast

  Contrast        S.E.      Lower      Upper    t df Pr(>|t|)
1   0.0342 0.009117017 0.01487279 0.05352721 3.75 16   0.0017
 
SH1000, vmax~type:
lm model parameter contrast

  Contrast       S.E.       Lower     Upper    t df Pr(>|t|)
1    0.112 0.04972076 0.009797517 0.2142025 2.25 26    0.033
 
SH1000, lag~type, Ancestor, BAC_14:
lm model parameter contrast

  Contrast     S.E.      Lower    Upper    t df Pr(>|t|)
1 3.336667 1.742931 -0.2459794 6.919313 1.91 26   0.0666
 
SH1000, finalOD~type, Ancestor, BAC_14:
lm model parameter contrast

  Contrast       S.E.       Lower       Upper     t df Pr(>|t|)
1  -0.0634 0.01146169 -0.08695983 -0.03984017 -5.53 26        0
 
SH1000, vmax~type, Ancestor, BAC_35:
lm model parameter contrast

  Contrast       S.E.      Lower     Upper    t df Pr(>|t|)
1    0.142 0.04972076 0.03979752 0.2442025 2.86 26   0.0083
 
SH1000, lag~type, Ancestor, BAC_35:
lm model parameter contrast

   Contrast     S.E.     Lower     Upper      t df Pr(>|t|)
1 -31.97333 1.742931 -35.55598 -28.39069 -18.34 26        0
 
SH1000, finalOD~type, Ancestor, BAC_35:
lm model parameter contrast

  Contrast       S.E.       Lower       Upper     t df Pr(>|t|)
1  -0.0452 0.01146169 -0.06875983 -0.02164017 -3.94 26    5e-04
 
SH1000, vmax~type, Ancestor, BAC_7:
lm model parameter contrast

  Contrast       S.E.      Lower     Upper    t df Pr(>|t|)
1    0.171 0.05741259 0.05298674 0.2890133 2.98 26   0.0062
 
SH1000, lag~type, Ancestor, BAC_7:
lm model parameter contrast

  Contrast     S.E.     Lower    Upper    t df Pr(>|t|)
1      2.5 2.012563 -1.636883 6.636883 1.24 26   0.2253
 
SH1000, finalOD~type, Ancestor, BAC_7:
lm model parameter contrast

     Contrast       S.E.       Lower       Upper     t df Pr(>|t|)
1 -0.05013333 0.01323482 -0.07733789 -0.02292878 -3.79 26    8e-04
 
SH1000, vmax~type, Ancestor, PEX_32:
lm model parameter contrast

  Contrast       S.E.     Lower    Upper    t df Pr(>|t|)
1    1.054 0.04972076 0.9517975 1.156202 21.2 26        0
 
SH1000, lag~type, Ancestor, PEX_32:
lm model parameter contrast

  Contrast     S.E.     Lower     Upper      t df Pr(>|t|)
1   -54.96 1.742931 -58.54265 -51.37735 -31.53 26        0
 
SH1000, finalOD~type, Ancestor, PEX_32:
lm model parameter contrast

  Contrast       S.E.      Lower      Upper    t df Pr(>|t|)
1   0.0574 0.01146169 0.03384017 0.08095983 5.01 26        0
 
SH1000, vmax~type, Ancestor, PEX_33:
lm model parameter contrast

  Contrast       S.E.       Lower     Upper    t df Pr(>|t|)
1    0.044 0.04972076 -0.05820248 0.1462025 0.88 26   0.3843
 
SH1000, lag~type, Ancestor, PEX_33:
lm model parameter contrast

  Contrast     S.E.     Lower     Upper      t df Pr(>|t|)
1   -54.61 1.742931 -58.19265 -51.02735 -31.33 26        0
 
SH1000, finalOD~type, Ancestor, PEX_33:
lm model parameter contrast

  Contrast       S.E.       Lower       Upper     t df Pr(>|t|)
1  -0.0422 0.01146169 -0.06575983 -0.01864017 -3.68 26   0.0011
 
SH1000, vmax~type, Ancestor, PEX_4:
lm model parameter contrast

  Contrast       S.E.     Lower    Upper     t df Pr(>|t|)
1    0.917 0.04972076 0.8147975 1.019202 18.44 26        0
 
SH1000, lag~type, Ancestor, PEX_4:
lm model parameter contrast

  Contrast     S.E.     Lower     Upper      t df Pr(>|t|)
1   -53.57 1.742931 -57.15265 -49.98735 -30.74 26        0
 
SH1000, finalOD~type, Ancestor, PEX_4:
lm model parameter contrast

  Contrast       S.E.      Lower      Upper    t df Pr(>|t|)
1   0.0388 0.01146169 0.01524017 0.06235983 3.39 26   0.0023
 
```
