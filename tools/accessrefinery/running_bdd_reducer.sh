#!/bin/bash

# Run AccessRefinery using the BDD backend in reducer mode.
# Options:
#   -m        : enable intent mining (kept for compatibility)
#   -r        : enable reduction mode to simplify formulas
#   --round N : run N rounds (10 rounds for reproducibility)

# Reduction on 'Correctness' dataset.
java -jar target/accessrefinery-1.0.jar -m -r --round 10 -f data/Correctness/

# Reduction on scalability datasets.
java -jar target/accessrefinery-1.0.jar -m -r --round 10 -f data/Scalability_05Keys/
java -jar target/accessrefinery-1.0.jar -m -r --round 10 -f data/Scalability_06Keys/

# Move outputs into a results folder for downstream analysis.
mkdir -p results
mv result/ results/accessrefinery_bdd_reducer_10rs/
