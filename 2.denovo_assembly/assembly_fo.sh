#PBS -N megahit
#PBS -q iiser
#PBS -l select=1:ncpus=40
#PBS -V
#PBS -l walltime=128:00:00
#PBS -o assembly.o
#PBS -e assembly.err

ncores=`cat $PBS_NODEFILE|wc -l`


#source /home/app/intel/compilers_and_libraries/linux/bin/compilervars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mpi/bin64/mpivars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mkl/bin/mklvars.sh intel64

cd $PBS_O_WORKDIR
cd /home/naman/vinay/WGS_100x/split
 
command 
mpirun -np 40 /home/Workshop-Genomics/MEGAHIT-1.2.9-Linux-x86_64-static/bin/megahit -1 fo_read1_val_1.fq.gz -2 fo_read2_val_2.fq.gz -o ../denovo/assembly -t 40
