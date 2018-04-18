#!/bin/bash
ctags -R --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q



#find ./ -name "*.c" -o -name "*.h" -o -name "*.cpp" -o -name "*.cc" > cscope.files

#cscope -Rqb -i cscope.files
