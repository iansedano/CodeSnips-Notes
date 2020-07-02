#!/bin/sh
if [ ! "$1" = "" ] ; then

   while [ "`pwd`" != "/" -a "$GITREPO" = "" ] ; do

       if [ -d ./lmkproject ] ; then

          GITREPO=`pwd`/src
       fi

       cd ..
   done

   if [ "$GITREPO" = "" -a -d "$HOME/cm/src" ] ; then
      GITREPO="$HOME/cm/src"
   fi

   if [ "$GITREPO" != "" ] ; then

      echo "Git repositories found in $GITREPO"
      echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-"

      DIRS="`/bin/ls -1 $GITREPO`"

      for dir in $DIRS ; do

         if [ -d $GITREPO/$dir/.git ] ; then
            echo "$dir -> git $1"
            cd $GITREPO/$dir ; git "$@"
            echo
         fi

      done
   else

      echo "Git repositories not found."

   fi
fi