#rclone copy jobs
echo " " >> /home/john/scripts/rclone_weekly.log
echo "#########################################################" >> /home/john/scripts/rclone_weekly.log
echo "rclone weekly initialised at $(date)" >> /home/john/scripts/rclone_weekly.log
echo "#########################################################" >> /home/john/scripts/rclone_weekly.log
echo " " >> /home/john/scripts/rclone_weekly.log
echo "################# rclone Apps local > OneDrive copy Running...   $(date)" >> /home/john/scripts/rclone_weekly.log
rclone copy /home/john/Documents/Apps OneDrive:/Backup/Apps --log-file /home/john/scripts/rclone_weekly.log -v
echo "################# rclone Books local > OneDrive copy Running...   $(date)" >> /home/john/scripts/rclone_weekly.log
rclone copy /home/john/Documents/Books OneDrive:/Backup/Books --log-file /home/john/scripts/rclone_weekly.log -v
echo "################# rclone Comics local > OneDrive copy Running...   $(date)" >> /home/john/scripts/rclone_weekly.log
rclone copy /home/john/Documents/Comics OneDrive:/Backup/Comics --log-file /home/john/scripts/rclone_weekly.log -v
echo "################# rclone House local > OneDrive copy Running...   $(date)" >> /home/john/scripts/rclone_weekly.log
rclone copy /home/john/Documents/House OneDrive:/Backup/House --log-file /home/john/scripts/rclone_weekly.log -v
echo "################# rclone Games local > OneDrive copy Running...   $(date)" >> /home/john/scripts/rclone_weekly.log
rclone copy "/mnt/freenas/Backups/My Games" "OneDrive:/Backup/My Games" --log-file /home/john/scripts/rclone_weekly.log -v
echo "################# rclone Personal local > OneDrive copy Running...   $(date)" >> /home/john/scripts/rclone_weekly.log
rclone copy /home/john/Documents/Personal OneDrive:/Backup/Personal --log-file /home/john/scripts/rclone_weekly.log -v
echo "################# rclone Work local > OneDrive copy Running...   $(date)" >> /home/john/scripts/rclone_weekly.log
rclone copy "/home/john/Work/Work Personal" "OneDrive:/Backup/Work Personal" --log-file /home/john/scripts/rclone_weekly.log -v
echo "################# rclone Pictures local > OneDrive copy Running...   $(date)" >> /home/john/scripts/rclone_weekly.log
rclone copy "/home/john/Pictures/Google Photos" "OneDrive:/Backup/Google Photos" --log-file /home/john/scripts/rclone_weekly.log -v
echo "################# rclone images local > OneDrive copy Running...   $(date)" >> /home/john/scripts/rclone_weekly.log
rclone copy /home/john/Pictures/images/ OneDrive:/Backup/images --log-file /home/john/scripts/rclone_weekly.log -v
echo "################# rclone Deb18 (Backup) local > OneDrive copy Running...   $(date)" >> /home/john/scripts/rclone_weekly.log
rclone copy /mnt/freenas/Backup/Deb18 OneDrive:/Backup/Deb18 --log-file /home/john/scripts/rclone_weekly.log -v
echo "##################################################" >> /home/john/scripts/rclone_weekly.log
echo "####### All weekly rclone copies complete! #######   $(date)" >> /home/john/scripts/rclone_weekly.log
echo "##################################################" >> /home/john/scripts/rclone_weekly.log
#Trim the log file to stop it going mad
echo "$(tail -5000 /home/john/scripts/rclone_weekly.log)" > /home/john/scripts/rclone_weekly.log
