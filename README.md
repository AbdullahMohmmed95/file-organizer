# File Organizer Script

This script is used to organize files in a directory into subdirectories based on their name prefix before the dash (-).

## Requirements
- Bash shell (usually available on most UNIX based systems)

## Instructions
1- clone the the repository.
``` bash
git clone https://github.com/abood95122/file-organizer.git
```

2- Change the directory to the cloned repo.
``` bash
cd file-organizer/
```

3- Make the script executable with the following command:
``` bash
chmod +x organize_files.sh
```

5- Run the script:
``` bash
./organize_files.sh /path/to/directory
```

This will create subdirectories in the given directory, named according to the prefix of the files, and move the corresponding files into them.
