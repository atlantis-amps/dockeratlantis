#!/bin/bash

echo "Install Atlantis"

cd trunk/atlantis; aclocal; autoheader; autoconf; automake -a; ./configure; sudo make CFLAGS='-Wno-misleading-indentation -Wno-format -Wno-implicit-fallthrough'; sudo make -d install; cd atlantismain


if [ -d $HOME/bin ]; then
PATH=$PATH:$HOME/bin
fi

        

  
