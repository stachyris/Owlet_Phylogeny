#PBS -N RAxML_best_tree
#PBS -q iiser
#PBS -l select=1:ncpus=40
#PBS -l walltime=96:00:00
#PBS -V
#PBS -o RAxML_best_tree.o
#PBS -e RAxML_best_tree.err

ncores=`cat $PBS_NODEFILE|wc -l`


#source /home/app/intel/compilers_and_libraries/linux/bin/compilervars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mpi/bin64/mpivars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mkl/bin/mklvars.sh intel64

cd $PBS_O_WORKDIR
cd /home/naman/vinay/Owlet_Phylogeny/Trees/RAxML

command
/home/naman/anaconda2/envs/phyluce/bin/raxmlHPC-PTHREADS-SSE3 \
-m GTRGAMMA \
-N 20 \
-p 6515 \
-n best \
-s mafft-nexus-internal-trimmed-gblocks-clean-75p-raxml.phylip \
-T 40

