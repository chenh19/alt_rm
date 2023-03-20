# Alternative rm command for Linux
*Current version: v1.2.1*

## Introduction
- This tool is intended to replace the Linux default ```rm``` command, which directly deletes files from the drive and may cause unwanted troubles. 
- With almost unchanged ```rm``` syntax in bash, this tool implements an equivalent function to "**Recycle Bin**", "deleting" files to a hidden ```~/.trash/``` folder rather than deleting them immediately. In addition, this tool provides ```rm-check``` and ```rm-purge``` commands to quickly check and delete all files in ```~/.trash/``` permanently upon user confirmation.
- It is functionally similar to [**trash-cli**](https://github.com/andreafrancia/trash-cli/), but there are three key differences: **1) alt_rm** directly replaces ```rm``` command using **alias** rather than introducing a new command, **2) alt_rm** moves files to ```~/.trash/``` instead of ```~/.local/share/Trash``` folder, **3) alt_rm** does not require ```sudo``` privileges for installing.
- It is highly recommended to deploy this tool for safer manipulations of files in **interactive** shells, especially on institutional servers. For non-interactive shells (*i.e.*, scripts) and for any other users without **alt_rm** deployed (including the **root user**), the original ```rm``` command will not be affected by the alias.

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
rm file_name "file name" folder_path/ folder_path "folder path"/ "folder path" etc
```
**Note:** original ```rm``` arguments like ```-rf``` are allowed but not required. They will just be **silently ommitted**.  

- **Check all the trashed files (list files in the ```~/.trash/``` folder):**
```
rm-check
```

- **Delete all the trashed files permanently (empty the ```~/.trash/``` folder):** 
```
rm-purge
```
**Note:** no argument is needed for this command. It's just like "**Empty Recycle Bin**".  
  
<p align="center">
  <img src="https://raw.githubusercontent.com/chenh19/alt_rm/main/images/alt_rm.png" width=85%>
</p>
