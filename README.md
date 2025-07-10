This is steps for rclone to move files from HPC to OneDrive.

a. Login to the HPC from your local machine with X11 forwarding enabled. (See X11 Forwarding.) You should confirm that X11 forwarding is enabled using the xterm command. This will cause a new, separate terminal window to open on your local machine, which you can close by typing exit in that new terminal window.

[HPC~]$ xterm
In your HPC session enter the following commands.
[HPC~]$ module load rclone
[HPC~]$ rclone config

b. At the prompt …No remotes found - make a new one…, enter n for New remote.
c. At the prompt name>, choose a meaningful name, to be used for future connection.
d. At the prompt Type of storage to configure…, enter the appropriate number for OneDrive.

FILES

1. files_to_check.txt - Links to the files on HPC
2. submit_rclone_sync.sh - sbatch script
3. rclone_sync_missing.sh - bash script to run the transfer

RUN

In the bash script change onedrive_path="MN_TU_OneDrive:nwadiugwu_backup" to new onedrive path.

To run:  sbatch submit_rclone_sync.sh
