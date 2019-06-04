#Install Atlantis
#### Get code from CSIRO SVN, if need to change version use co -5468 for example
       svn co https://svnserv.csiro.au/svn/ext/atlantis/Atlantis/trunk --username <username> --password <password> --quiet
       
##Rebuild recompile via MAKE: 
        cd trunk/atlantis
        aclocal
        autoheader
        autoconf
        automake -a
        ./configure
        sudo make CFLAGS='-Wno-misleading-indentation -Wno-format -Wno-implicit-fallthrough'
        sudo make -d install
        cd atlantismain
  
