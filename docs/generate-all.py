#!/usr/bin/env python3

# Hubert Jaremko - 2020
# Generuje dokumenty dla Informatyki i Matematyki komputerowej

import generate as wmii

courses = [("ii", "Informatyka"), ("mk", "Matematyka komputerowa")]
templates = [
    "cudzoziemcy-powtarzanie-przedmiotu.tex",
    "deklaracja-urlop-studencki.tex",
    "powtarzanie-przedmiotu.tex",
    "powtarzanie-roku.tex",
    "oswiadczenie-powrot-z-urlopu.tex",
    "wniosek-dopisanie-przedmiotu-do-deklaracji.tex",
    "wniosek-przepisanie-przedmiotow.tex",
    "wniosek-skreslenie-z-listy-studentow.tex",
    "wniosek-urlop-dziekanski.tex",
    "wniosek-wpis-warunkowy.tex",
    "wniosek-zwolnienie-z-oplat.tex",
    "zaliczenie-lektoratu.tex",
    "zaliczenie-przedmiotu-humanistycznego.tex",
    "podanie-realizacja-przedmiotow-awansem.tex",
    "zmiany-zajec.tex",
    "wniosek-wydanie-dyplomu-po-angielsku.tex"
]

for template in templates:
    for course in courses:
        wmii.generate_from_template(template, course[0], course[1])
