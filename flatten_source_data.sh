for DEPTH in {1..10}; do find ./source_data -name "*" -mindepth $DEPTH -exec mv {} ./source_data \;; done
