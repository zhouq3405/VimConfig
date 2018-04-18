#!/bin/bash
ctags -R --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q



find ./ -name "*.c" -o -name "*.h" -o -name "*.cpp" -o -name "*.cc" > cscope.files

cscope -Rqb -i cscope.files


# generate tag file for lookupfile plugin
echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/"> filenametags
find . -not -regex '.*\.\(png\|gif\)' -type f -printf "%f\t%p\t1\n" | sort -f >> filenametags 


### other way to support for Freebsd
# Freebsd support,  finished by myself
#echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/"> filenametags
#find ./ \! -regex '.*\.\(png\|gif\)' -type f -print | sed -n 's,\(.*\)\/,\1#,p' | awk -F "#" '{print $2,$1,1}' OFS="\t" | sort -f >> filenametags
