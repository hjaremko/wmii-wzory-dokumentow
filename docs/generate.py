#!/usr/bin/env python3

# Hubert Jaremko - 2020
# Generuje dokumenty dla podanego kierunku z szablonu
# ./wmiidocgen.py <plik szablonu> <skrot kierunku> <nazwa kierunku> [tytul pdf]

import sys
import fileinput

def generate_from_template(template_filename, course_short, course_name):
    prefix = "templates/"
    with fileinput.FileInput(prefix + template_filename) as file:
        output_filename = "{}-{}".format(course_short, template_filename)

        with open(output_filename, "w") as output_file:
            for line in file:
                line = line.replace("@COURSE@", course_name)
                output_file.write(line)

if __name__ == "__main__":
    try:
        template_filename = sys.argv[1]
    except:
        print("Podaj nazwe szablonu.")
        sys.exit(1)

    try:
        course_short = sys.argv[2]
    except:
        print("Podaj skrot kierunku.")
        sys.exit(2)

    try:
        course_name = sys.argv[3]
    except:
        print("Podaj nazwe kierunku.")
        sys.exit(3)

    generate_from_template(template_filename, course_short, course_name)
