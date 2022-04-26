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
