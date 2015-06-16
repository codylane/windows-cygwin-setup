# windows-cygwin-setup

## Instructions
First you need to get the cygwin setup utility downloaded onto your
windows machine.

I recommend using the 32-bit setup because some of the libaries are missing for the 64-bit releases.  This code assumes that you download the 32-bit version of `setup-x86.exe` as I'm using rxvt and the 64-bit version of rxvt is not available yet.

You can download cygwin from here: https://cygwin.com/install.html

## Download the `cygwin-package-install.bat` 
Download on your windows machine either using `git clone` or click the file and select <RAW>.

## NOTE: If you require a proxy in your envionment
Set this variable in the command window
```
SET PROXY=someproxy.example.com:8080
```

## Run the script to install 
This will invoke the cygwin setup utility and installed all the packages listed in the `%PACKAGES%` variable.
```
cygwin-package-install.bat
```

## If you'd like to customize your install
This is just an example so if you like to add more packages just add more packages in a comma seperate list like so:
```
SET PACKAGES=%PACKAGES%,package1,package2,package3
```

Then re-run the `cygwin-package-install.bat`
