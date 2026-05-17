#!/bin/bash

# Run AccessRefinery in SAT (MiniSAT) reducer mode.
# Options:
#   -m        : enable intent mining
#   -s        : use SAT encoding for bit-vectors (MiniSAT)
#   -r        : enable intent reduction
#   --round N : run N mining rounds (we use 3 here to limit total runtime)

# Run tests for the 'Correctness' dataset (short, representative cases).
java -jar target/accessrefinery-1.0.jar -m -s -r --round 3 -f data/Correctness/

# Run tests for scalability datasets (05Keys and 06Keys).
java -jar target/accessrefinery-1.0.jar -m -s -r --round 3 -f data/Scalability_05Keys/
java -jar target/accessrefinery-1.0.jar -m -s -r --round 3 -f data/Scalability_06Keys/

# Move generated results into a results directory for later plotting and analysis.
mkdir -p results
mv result/ results/accessrefinery_sat_reducer_10rs/
