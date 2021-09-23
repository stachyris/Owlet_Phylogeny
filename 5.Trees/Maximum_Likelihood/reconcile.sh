#PBS -N RAxML_reconcile
#PBS -q iiser
#PBS -l select=1:ncpus=40
#PBS -l walltime=96:00:00
#PBS -V
#PBS -o RAxML_reconcile.o
#PBS -e RAxML_reconcile.err

ncores=`cat $PBS_NODEFILE|wc -l`


#source /home/app/intel/compilers_and_libraries/linux/bin/compilervars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mpi/bin64/mpivars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mkl/bin/mklvars.sh intel64

cd $PBS_O_WORKDIR
cd /home/naman/vinay/Owlet_Phylogeny/Trees/RAxML/reconcile

command
/home/naman/anaconda2/envs/phyluce/bin/raxmlHPC-SSE3 \
-m GTRGAMMA \
-f b \
-t RAxML_bestTree.best \
-z RAxML_bootstrap.bootreps \
-n all_taxa

