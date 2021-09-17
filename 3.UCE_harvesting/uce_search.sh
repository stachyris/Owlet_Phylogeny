python /home/bird_biochemist/anaconda3/envs/phyluce-1.7.1/bin/phyluce_probe_run_multiple_lastzs_sqlite \
	--db owlet_phylogeny.sqlite \
	--output owlet_phylogeny_lastz \
	--scaffoldlist athblt athbra glarad \
	--genome-base-path ./ \
	--probefile uce-5k-probes.fasta \
	--cores 16
