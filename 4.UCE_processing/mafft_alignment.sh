python /home/bird_biochemist/anaconda3/envs/phyluce-1.7.1/bin/phyluce_align_seqcap_align \
	--input all-taxa-incomplete.fasta \
	--output mafft-nexus-internal-trimmed \
	--taxa 51 \
	--aligner mafft \
	--cores 16 \
	--incomplete-matrix \
	--output-format fasta \
	--no-trim \
	--log-path log
