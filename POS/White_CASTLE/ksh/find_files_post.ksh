#!/bin/ksh

export REST_CURL_ENDPOINT="https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/fileup/DW_MEDIA_UP_DOWN_FILES/"
#! echo   "${REST_CURL_ENDPOINT}"

export CAN_PROCEED="YES"
if [[ "${1}" == "" ]]
	then
		echo "Must pass in a end point to process"
    export CAN_PROCEED="NO"
    echo   "${REST_CURL_ENDPOINT}"
  else
		echo "pass in end point ${1}"
    export CAN_PROCEED="YES"
fi		 
    
if [[ "${2}" == "DEBUG" ]]
	then
		RUN_CURL_DEBUG=" -v "
    echo "CURL Is RUNNNG IN DEBUG MODE"
	else
	  RUN_CURL_DEBUG="  "
    echo "CURL Is NOT RUNNNG IN DEBUG MODE"
fi



function rename_please_file {
	umask a=rwx o=rwx g=rwx
	export thistouchfile=${1}
        export curl_url_confirm="${2}" 
	export renametouchfile="ALREADY_RUN_"${thistouchfile}
	export   ispid=`date +"%Y/%m/%d %H:%M:%S PID=$$"`
	echo   "#!"${ispid}" restendpoint"${curl_url_confirm} >> ${thistouchfile}
	mv     ${thistouchfile} $renametouchfile
}

function delete_file {
   typeset -i cmd_status=0
   if [[ -f "${1}" ]]
   then
     rm -f ${1}
     cmd_status=$?
     if [[ "${cmd_status}" = "0" ]]
      then
        echo "successfully deleted file ==>${1}"
      else
        echo "delete failed for file =====>${1}"
      fi
   fi
}


function sed_fnx {
umask a=rwx o=rwx g=rwx 
 timestamp=$(date +%y_%m_%d__%H_%M_%S)
 tempfilesed=sed_file${$}.${timestamp}
 sourcefileinsed=${3}

 if [[ -f ${tempfilesed} ]]
  then
    chmod 777 ${tempfilesed}
    rm -f ${tempfilesed}
    touch ${tempfilesed}
    chmod 777 ${tempfilesed}
  else
    touch ${tempfilesed}
    chmod 777 ${tempfilesed}
 fi

 echo "sed_fnx received as param 1=Source to replace =>"${1}
 echo "sed_fnx received as param 2=new string to use =>"${2}
 echo "sed_fnx received as param 3=in file           =>"${sourcefileinsed}
 echo "sed_fnx received as param 4=temp file that use=>"${tempfilesed}

 sed 's~'"$1"'~'"$2"'~g' ${sourcefileinsed} >  ${tempfilesed}
 mv ${sourcefileinsed} ${sourcefileinsed}${timestamp}
 #!chmod 444 ${tempfilesed}
 mv ${tempfilesed} ${sourcefileinsed}
 if [[ "${?}" = "0" ]]
 then
  echo "change successful "
  chmod 777  ${sourcefileinsed}${timestamp}
  rm -f ${sourcefileinsed}${timestamp}
 else
  echo "change failed, rolling back"
  mv ${sourcefileinsed}${timestamp} ${sourcefileinsed}
 fi
}

function lastcmd {
export last_status=${1}
export  step_label=${2}
export shell_called="xxx"
export error_msg="CMD=>"${step_label}" RETURNED=>"${last_status}" STEP=>"${3}
export EMAIL_LIST="aplascencia@misorobotics.com"
export EMAIL_WC_LIST="MennettiP@whitecastle.com"

if [[ "${last_status}" = "0" ]]
then
 export shell_called= "x"
else
 echo "ERROR OCCURRED in "${error_msg} | mailx -s "WC 15 Min file upload CURL  script failed ${error_msg}"  ${EMAIL_LIST}
 echo ${error_msg}
 echo "last command failed with "${last_status}
fi
}

#! ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

if [[ "${CAN_PROCEED}" == "YES" ]]  #! /**********  if canproceed=NO ***********/
then

export current_run=`date '+%Y%m%d%H%M%S'`
export thisdir=${PWD}
export  local_epoch=`echo "* $(date +'%Z'): $(date +'%Y-%m-%dT%H:%M:%S.%N%:z')"`
export TMZONE_epoch=`echo "$(TZ=UTC date +'%Z'): $(TZ=UTC date +'%Y-%m-%dT%H:%M:%S.%N%:z')"`

export start_label="processing files from dir =>"${thisdir}" time="${current_run}" local_epoch="${local_epoch}" tmzone="${TMZONE_epoch}

export                FILES_PROCESSED="POS_15_MIN_FILES_PROCESSED.txt"
if [ -f "${thisdir}/${FILES_PROCESSED}" ]
then
     echo "Master file of previously processed files is "${FILES_PROCESSED} 
else
     echo "NO Master file of previously processed files is "${FILES_PROCESSED}" so its being created "
     touch ${FILES_PROCESSED}
     chmod 744 ${FILES_PROCESSED}
     echo "#! file created on "${current_run} >>  ${FILES_PROCESSED}
     echo "Master file of previously processed files is "${FILES_PROCESSED}
fi


unset      new_files_fnd_dir
declare -a new_files_fnd_dir 

unset      new_files_cnt_dir
declare -a new_files_cnt_dir 

typeset -i new_files_cnt_incr=0


#! creaqte new file for every run, list all files found in current directory here, remove files know to be ignored
#! remove files that have been process, leave in the file just the ones to push up , as I push files up add them to FILES_PROCESSED.

if [ -f tmp_files_fnd_${$} ] 
then
     rm tmp_files_fnd_${$}  
fi

for ij in `ls -1 | grep tmp_files_fnd | grep -v grep`
do
#!	 delete_file "${ij}" 
  rm "${ij}" 
done

for ij in `ls -1 | grep new_files_to_add_to_master | grep -v grep`
do
	#! delete_file "${ij}" 
	rm  "${ij}" 
done

for ij in `ls -1 | grep CURL_OUTPUT_ | grep csv |  grep -v grep`
do
	#! delete_file "${ij}" 
	rm  "${ij}" 
done

echo "#! in dir "${thisdir}" on "${current_run}" for "${start_label}  > tmp_files_fnd_${$}

#! remove know files
for ijk in `ls -1  | grep -v "CURL_OUTPUT_" | grep -v "tmp_files_fnd_" | grep -v "new_files_to_add_to_master" |  grep -v "find_files_post.ksh" | grep -v "POS_15_MIN_FILES_PROCESSED.txt" | grep -v "backup/" | grep -v send_to_curl | grep -v "\.ksh" | grep -v grep`
do
 #!
 if [[ "${ijk}" == " " ]]
 then
   echo "ignoring spaces"
 else
  echo ${ijk} >> tmp_files_fnd_${$}
  typeset -i new_files_added=(${new_files_added}+1)
 fi
done
#! remove files in files

while IFS= read -r lineoffile
do
  export FILE_TIGNORE=${lineoffile}
  echo "Ignoring file =>"${FILE_TIGNORE}
  sed_fnx "${FILE_TIGNORE}" " " tmp_files_fnd_${$} 
done <POS_15_MIN_FILES_PROCESSED.txt 


	
#! for ij in `ls -1 | grep -v tmp_files_fnd_ | grep -v find_files_post.ksh | grep -v POS_15_MIN_FILES_PROCESSED.txt | grep -v grep`
#! do
#!  typeset -i found_in_files_processed=`cat ${FILES_PROCESSED} | grep ${ij} | grep -v grep | wc -l`
#!  if [[ "${found_in_files_processed}" == "0" ]]
#!    then
#!     files_fnd_dir+=("${ij}")
#!     echo "("${files_cnt_incr}") File found="${files_fnd_dir[${files_cnt_incr}]}
#!     files_cnt_incr=(${files_cnt_incr}+1)
#!    else
#!     echo "Skipping file "${ij}" as its already been processed "
#!  fi
#! done

echo "Here are the new files to post =>"tmp_files_fnd_${$}

if [ -f new_files_to_add_to_master${$} ]
then
     rm new_files_to_add_to_master${$}
fi
     touch new_files_to_add_to_master${$}


while IFS= read -r lineoffile
do
 echo "#!*******lineoffile="${lineoffile}
#! export curl_output=`curl --ssl-no-revoke  "POST"   "${REST_CURL_ENDPOINT}" -H "accept: application/json" -H "file_name: ${lineoffile}"  -H "file_type: text" -H "Content-Type: application/json"  --data-binary "./${lineoffile}"  ${RUN_CURL_DEBUG}  `
#!export curl_output=(curl --ssl-no-revoke "POST" "${REST_CURL_ENDPOINT}" -H "accept: application/json" -H "file_name: ${lineoffile}" -H "file_type: text" -H "Content-Type: application/json"  --data-binary "./${lineoffile}"  ${RUN_CURL_DEBUG} ) 
 (curl --ssl-no-revoke "POST" "${REST_CURL_ENDPOINT}" -H "accept: application/json" -H "file_name: ${lineoffile}" -H "file_type: text" -H "Content-Type: application/json"  --data-binary "./${lineoffile}"  ${RUN_CURL_DEBUG} ) >  CURL_OUTPUT_${lineoffile}  

#!echo "${curl_output}"             >  CURL_OUTPUT_${lineoffile} 
echo "CURL_OUTPUT_${lineoffile}" >>  new_files_to_add_to_master${$}
echo ${lineoffile}               >>  new_files_to_add_to_master${$}
done <tmp_files_fnd_${$}


#!cat tmp_files_fnd_${$} 
#! for i in ${new_files_fnd_dir[@]}
#! do 
#!   echo "create curl here"${i}
#! done

cat  new_files_to_add_to_master${$} >> POS_15_MIN_FILES_PROCESSED.txt
export end_label="processing files from dir =>"${thisdir}" time="${current_run}" local_epoch="${local_epoch}" tmzone="${TMZONE_epoch}
echo ${start_label}
echo ${end_label}

else   #! /**********  if canproceed=NO ***********/
echo "invalid parameters passed in, nothing was done"
fi

for ij in `ls -1 | grep tmp_files_fnd | grep -v grep`
do
	 delete_file "${ij}" 
done