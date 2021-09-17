python /home/bird_biochemist/anaconda3/envs/phyluce-1.7.1/bin/phyluce_probe_slice_sequence_from_genomes \
	--lastz owlet_phylogeny_lastz \
	--conf genomes.conf \
	--flank 500 \
	--name-pattern "uce-5k-probes.fasta_v_{}.lastz.clean" \
	--output owlet_phylogeny_fasta
