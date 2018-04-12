#
#Auto Link tool with 'index' file
#
#This code is licensed under the MIT License.
#
#Since : 2018-4-12
#Author: doolb
#
INDEX="_index"
# search all file
function readFile(){
  FILES=`find -L $SRC -type f -name $INDEX`
  for FILE in $FILES
  do
    echo $FILE
	split $FILE
  done
}

# split the file value
function split(){
  if test $# != 1;then echo error; return;fi;
  
  dir=${1%/*}
  
  str=`cat $1`
  arr=(${str//,/ })
  for t in ${arr[*]}
  do
  	link $dir $t;
  done
}

# link file
function link(){
  echo -e " " $1 '====>' $TGT/$2
  tgt=$TGT/$2
  tgt_dir=${tgt%/*}
  
  # create target dir if not exist
  if [ ! -d "$tgt_dir" ]; then mkdir -p $tgt_dir;fi;

  # delete orgin 
  if [ -e "$tgt" ];then rm -f $tgt; fi;

  ln -s $1 $tgt
}


if test $# != 2;then echo error; exit -1;fi;
SRC=$1
TGT=$2

readFile
