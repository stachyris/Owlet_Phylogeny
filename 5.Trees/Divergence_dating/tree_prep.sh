
python3 /home/bird_biochemist/soft/mcmctree_tree_prep/mcmctree_tree_prep.py \
	> --left_species athbra \
	> --right_species athblt \
	> --lower_bound 0.036 \
	> --upper_bound 0.053 \
	> --tree /mnt/d/Vinay/Owlet_Phylogeny/Trees/dating/fossil_constraints/bayesian_inference.10p_bi_50mr \
	> python3 mcmctree_tree_prep.py \
	> --left_species bubo_nipalensis_189733 \
	> --right_species bubo_scandiacus_27634 \
	> --lower_bound 0.040 \
	> --upper_bound 0.039 \
	> --tree - \
	> python3 mcmctree_tree_prep.py \
	> --left_species tytalb \
	> --right_species athbra \
	> --lower_bound 0.635 \
	> --upper_bound 0.685 \
	> --tree - \
	> --add_header \
	> owlet_tree_for_mcmct.nwk



