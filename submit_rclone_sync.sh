#!/bin/bash
#SBATCH --job-name=rclone_sync
#SBATCH --output=rclone_sync_%j.out
#SBATCH --error=rclone_sync_%j.err
#SBATCH --ntasks=20
#SBATCH --mem=64G
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=mnwadiugwu@tulane.edu
#SBATCH --time=07-00:00:00       # Reduced from 3 days to allow buffer
#SBATCH --partition=centos7
#SBATCH --account=crosslin
#SBATCH --qos=long             # Explicitly set QOS


# Load necessary modules (if rclone is module-managed)
# module load rclone

# Activate your environment if needed
# source ~/miniconda3/bin/activate base

# Run the script
module load rclone

# Confirm rclone path
which rclone

# Run the script
bash rclone_sync_missing.sh
