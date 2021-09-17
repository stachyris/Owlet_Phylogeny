python /home/bird_biochemist/anaconda3/envs/phyluce-1.7.1/bin/phyluce_assembly_get_fastas_from_match_counts \
	--contigs ../../contigs \
	--locus-db ../../uce-search-results/probe.matches.sqlite \
	--match-count-output all-taxa-incomplete.conf \
	--output all-taxa-incomplete.fasta \
	--incomplete-matrix all-taxa-incomplete.incomplete \
	--log-path log
