# make-executable-validation
Use Makefile to validate the existence of executable files on a system

## Usage (success):
1.  Clone repository and enter folder  
2.  Run ```make```
  

## Usage (failure):
1.  Clone repository and enter folder
2.  Edit ```Makefile``` commenting out the line under ```WORKS``` comment and uncomment the line under ```FAILS``` comment
3.  Run ```make```

NOTE:  success requires /bin/bash, /bin/awk, and /bin/sed to exist
