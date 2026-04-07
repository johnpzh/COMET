#!/bin/bash

matrices=(
"Bova/rma10"
"Williams/cant"
"Hamm/scircuit"
"Williams/cop20k_A"
"HB/bcsstk17"
"Williams/pdb1HYS"
"Williams/consph"
"DNVS/shipsec1"
"SNAP/com-Orkut"
"SNAP/com-LiveJournal"
"SNAP/soc-Pokec"
"DIMACS10/road_usa"
"DIMACS10/hugebubbles-00020"
"LAW/ljournal-2008"
"DIMACS10/delaunay_n24"
"DIMACS10/europe_osm"
"VLSI/vas_stokes_4M"
"LAW/indochina-2004"
"Schenk/nlpkkt160"
"GenBank/kmer_A2a"
"LAW/webbase-2001"
)

for m in "${matrices[@]}"; do
  name=$(echo $m | cut -d'/' -f 2)
  if [[ -d "${name}" ]]; then
    echo "Directory ${name}/ exists. Skip."
    continue
  fi
  url="https://suitesparse-collection-website.herokuapp.com/MM/${m}.tar.gz"
  echo "downloading from" $url
  curl -O -L $url

  tar xvf "${name}.tar.gz"
  rm -rf "${name}.tar.gz"
done

# cd ..