#PBS -N exabayes
#PBS -q iiser
#PBS -l select=1:ncpus=40
#PBS -l walltime=128:00:00
#PBS -V
#PBS -o exabayes.o
#PBS -e exabayes.err

ncores=`cat $PBS_NODEFILE|wc -l`


#source /home/app/intel/compilers_and_libraries/linux/bin/compilervars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mpi/bin64/mpivars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mkl/bin/mklvars.sh intel64

cd $PBS_O_WORKDIR
cd /home/naman/vinay/Owlet_Phylogeny/Trees/bayesian

command
mpirun -np 40 exabayes -f mafft-nexus-internal-trimmed-gblocks-clean-75p-raxml.phylip -n all_taxa -m DNA -s $RANDOM -c config.nexus -R 4

