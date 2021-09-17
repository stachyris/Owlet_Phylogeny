#PBS -N megahit
#PBS -q iiser
#PBS -l select=1:ncpus=20
#PBS -V
#PBS -l walltime=128:00:00
#PBS -o assembly.o
#PBS -e assembly.err

ncores=`cat $PBS_NODEFILE|wc -l`


#source /home/app/intel/compilers_and_libraries/linux/bin/compilervars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mpi/bin64/mpivars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mkl/bin/mklvars.sh intel64

cd $PBS_O_WORKDIR
cd /home/naman/vinay/Owlet_Phylogeny/Jungle_Owlet
 
command 
mpirun -np 20 /home/Workshop-Genomics/MEGAHIT-1.2.9-Linux-x86_64-static/bin/megahit -1 JO1_R1_val_1.fq.gz -2 JO1_R2_val_2.fq.gz -r JO1_R1_unpaired_1.fq.gz -r JO1_R2_unpaired_2.fq.gz -o ./assembly -t 20



