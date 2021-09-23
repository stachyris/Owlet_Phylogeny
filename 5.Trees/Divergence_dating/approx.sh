#PBS -N approx
#PBS -q iiser
#PBS -l select=2:ncpus=40
#PBS -l walltime=128:00:00
#PBS -V
#PBS -o approx01.o
#PBS -e approx01.err

ncores=`cat $PBS_NODEFILE|wc -l`


#source /home/app/intel/compilers_and_libraries/linux/bin/compilervars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mpi/bin64/mpivars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mkl/bin/mklvars.sh intel64

cd $PBS_O_WORKDIR
cd /home/naman/vinay/Owlet_Phylogeny/Trees/dating

command
mpirun -np 80 mcmctree
