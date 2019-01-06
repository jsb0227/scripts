#rclone copy jobs
  echo " " >> /home/john/scripts/rclone.log
  echo "##################################################" >> /home/john/scripts/rclone.log
  echo "rclone initialised at $(date)" >> /home/john/scripts/rclone.log
  echo "##################################################" >> /home/john/scripts/rclone.log
  echo " " >> /home/john/scripts/rclone.log
  echo "################# rclone Apps local copy Running...   $(date)" >> /home/john/scripts/rclone.log
#rclone copy "/home/john/Documents/Apps" "GoogleDrive:/Apps" --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone Apps GoogleDrive copy Running...   $(date)" >> /home/john/scripts/rclone.log
rclone copy "GoogleDrive:/Apps" "/home/john/Documents/Apps" --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone Books local copy Running...   $(date)" >> /home/john/scripts/rclone.log
#rclone copy "/home/john/Documents/Books" "GoogleDrive:/Books" --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone Books GoogleDrive copy Running...   $(date)" >> /home/john/scripts/rclone.log
rclone copy "GoogleDrive:/Books" "/home/john/Documents/Books" --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone Comics local copy Running...   $(date)" >> /home/john/scripts/rclone.log
#rclone copy "/home/john/Documents/Comics" "GoogleDrive:/Comics" --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone Comics GoogleDrive copy Running...   $(date)" >> /home/john/scripts/rclone.log
rclone copy "GoogleDrive:/Comics" "/home/john/Documents/Comics" --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone House local copy Running...   $(date)" >> /home/john/scripts/rclone.log
#rclone copy "/home/john/Documents/House" "GoogleDrive:/House" --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone House GoogleDrive copy Running...   $(date)" >> /home/john/scripts/rclone.log
rclone copy "GoogleDrive:/House" "/home/john/Documents/House" --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone Games local copy Running...   $(date)" >> /home/john/scripts/rclone.log
#rclone copy "/mnt/freenas/Backup/My Games" "GoogleDrive:/My Games" --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone Games GoogleDrive copy Running...   $(date)" >> /home/john/scripts/rclone.log
rclone copy "GoogleDrive:/My Games" "/mnt/freenas/Backups/My Games" --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone Personal local copy Running...   $(date)" >> /home/john/scripts/rclone.log
#rclone copy "/home/john/Documents/Personal" "GoogleDrive:/Personal" --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone Personal GoogleDrive copy Running...   $(date)" >> /home/john/scripts/rclone.log
rclone copy "GoogleDrive:/Personal" "/home/john/Documents/Personal" --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone Work local copy Running...   $(date)" >> /home/john/scripts/rclone.log
#rclone copy "/home/john/Work/Work Personal" "GoogleDrive:/Work Personal" --drive-acknowledge-abuse --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone Work GoogleDrive copy Running...   $(date)" >> /home/john/scripts/rclone.log
rclone copy "GoogleDrive:/Work Personal" "/home/john/Work/Work Personal" --drive-acknowledge-abuse --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone Pictures local copy Running...   $(date)" >> /home/john/scripts/rclone.log
#rclone copy "/home/john/Pictures/Google Photos" "GoogleDrive:/Google Photos" --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone Pictures GoogleDrive copy Running...   $(date)" >> /home/john/scripts/rclone.log
rclone copy "GoogleDrive:/Google Photos" "/home/john/Pictures/Google Photos" --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone images local copy Running...   $(date)" >> /home/john/scripts/rclone.log
#rclone copy "/home/john/Pictures/images/" "GoogleDrive:/images" --log-file /home/john/scripts/rclone.log -v
  echo "################# rclone images GoogleDrive copy Running...   $(date)" >> /home/john/scripts/rclone.log
rclone copy "GoogleDrive:/images" "/home/john/Pictures/images/" --log-file /home/john/scripts/rclone.log -v
  echo "###########################################" >> /home/john/scripts/rclone.log
  echo "####### All rclone copies complete! #######   $(date)" >> /home/john/scripts/rclone.log
  echo "###########################################" >> /home/john/scripts/rclone.log
#Trim the log file to stop it going mad
  echo "$(tail -5000 /home/john/scripts/rclone.log)" > /home/john/scripts/rclone.log
