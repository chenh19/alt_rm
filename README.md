# Alternative rm command for Linux
*Current version: v1.0.0*

## Introduction
- This tool is intended to replace the Linux default ```rm``` command, which delete files directly and may cause unwanted troubles. 
- With almost unchanged ```rm``` syntax, this tool implements an equivalent function to Recycle Bin, "deleting" files to a hidden ```~/.trash/``` folder rather than deleting them immediately.
- In addition, this tool also provides a ```rm-perm``` command to quickly delete all files in ```/.trash/``` with user confirmation.

## How to setup

- **Install:** connect to internet and execute the below command in terminal  
```
bash <(wget -qO- https://raw.githubusercontent.com/chenh19/alt_rm/main/install.sh)
```

- **Uninstall:** connect to internet and execute the below command in terminal  
```
bash <(wget -qO- https://raw.githubusercontent.com/chenh19/alt_rm/main/uninstall.sh)
```

## How to use

- **Delete files (move files to the hidden ```~/.trash/``` folder):** 
```
rm file_name "file name" folder_path folder_path/ "folder path" "folder path"/ etc
```
**Note:** original ```rm``` arguments like ```-i``` and ```-rf``` will no longer be available.  

- **Delete all the trashed files permanently (empty ```~/.trash/``` folder):** 
```
rm-perm
```  

