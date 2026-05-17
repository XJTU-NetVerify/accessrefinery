#!/bin/bash

# Run AccessRefinery using the BDD backend (default) for mining.
# Options:
#   -m        : enable intent mining
#   --round N : run N mining rounds (10 rounds here for statistical averaging)

# Mining on 'Correctness' dataset (functional tests).
java -jar target/accessrefinery-1.0.jar -m --round 10 -f data/Correctness/

# Mining on scalability datasets.
java -jar target/accessrefinery-1.0.jar -m --round 10 -f data/Scalability_05Keys/
java -jar target/accessrefinery-1.0.jar -m --round 10 -f data/Scalability_06Keys/

# Move results to a dedicated folder for later analysis/plotting.
mkdir -p results
mv result/ results/accessrefinery_bdd_miner_10rs/
