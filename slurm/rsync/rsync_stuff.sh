#!/bin/bash -l  
#SBATCH --job-name=rsync_stuff
#SBATCH --ntasks=1
#SBATCH --mem=10gb
#SBATCH --output /nobackup/nfs/home/ISAD/jd708/projects/microclimate_uk_pests/scripts/output/rsync_stuff_%j.out
#SBATCH --partition=defq

module add Workspace

echo "Start"
pwd; hostname; date;

# assumes that ssh keys have been generated between source and destination
# in this case source is a folder in the workspace and destination is a NAS Box on the university network
FOLDER=/nobackup/nfs/workspace/jd708/projects/microclimate_uk_pests/out_data/2018/modelout/
rsync -azv $FOLDER jd708@144.173.73.227:/volume2/data2/JPD/microclimate_uk_pests/out_data/2018/modelout/

echo "Finish"