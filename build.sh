#!/bin/bash

# installer et mettre à jour les modules nodes
npm install
npm update

# génération des fichiers json
python3 processors/python_builder/Main.py

node_modules/csa-xlsx-converter/bin/csa-xlsx-converter -t "src/releves-par-groupe-de-chaines/2017-02-01--2017-02-26/originaux/Chaines Gen - Période du 1er au 26 février 2017.xlsx" -o "dist/api/2017-02-01--2017-02-26/v1" -p "--chaines-generalistes"

