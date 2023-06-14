# DiskSpaceSaver
Simple project using Shell script to Archive Older Files or Archive Large Files

**Project Requirements**

In the given directory, if you find files more than a given size e.g., 20 MB or files older than given days e.g., 10 days, then compress those files and move them to archive folder.


**Purpose of script**

On Linux, disk storage is limited. Let’s say, one application is running, and it is producing logs of larger size on regular basis. After one opening the disk storage will be full. To solve this problem, this script will be useful. So, in this script backup is taken by compressing the files.

**How to Run?**
1. Open a text editor and create a new file
2. Write Script
3. Save the file with a desired name, such as archive.sh
4. Open a terminal. Navigate to the directory where you saved the log_archiver.sh script using the cd command. 
   For example, if you saved the script in your home directory, use: cd -
5. Make the script executable by running the following command: chmod 777 archive.sh
6. Edit the script and modify the BASE variable with the path to the directory you want to process
7. Test the script by running it manually with: ./archiver.sh 
   It will compress and move the files matching the specified criteria to the archive folder.
8. Set up a cron job to run the script automatically at a specified interval, use the following steps:
    a. Open the cron table for editing using the command: crontab -e.
    b. Add a new line to the cron table in the following format to run the script daily at a specific time (replace /path/to/script with the actual path to your script):
  
    0 0 * * * /path/to/script/log_archiver.sh

    This example runs the script at 12:00 AM (midnight) every day. You can customize the timing based on your needs using the cron syntax.
    c. Save the changes and exit the editor.


After following these steps, the script will be scheduled to run automatically as a cron job at the specified interval, compressing and moving the files matching the given criteria to the archive folder.
