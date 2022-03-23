#!/bin/ksh

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
#! if [ -f         new_files_to_add_to_master${$} ]
#! then
#! 	     rm new_files_to_add_to_master${$}
#! fi
#!           touch new_files_to_add_to_master${$}
#! 
#!      while IFS= read -r lineoffile
#!      do
#! 	     export curl_output=`curl --ssl-no-revoke  "POST"  "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/fileup/DW_MEDIA_UP_DOWN_FILES/"  \
#! 		             -H "accept: application/json" -H "file_name: ${lineoffile}"  -H "file_type: text" -H "Content-Type: application/json"  --data-binary "./${lineoffile}"  -v  `
#! 	     echo "${curl_output}"             >  CURL_OUTPUT_${lineoffile}
#! 	     echo "CURL_OUTPUT_${lineoffile}" >>  new_files_to_add_to_master${$}
#! 	     echo ${lineoffile}               >>  new_files_to_add_to_master${$}
#!      done <tmp_files_fnd_${$}
#! 
  export             BASE_FILE="wc_dw_epoch_1970_2024.json"
  export EXT_BASE_FILE="NDJSON__wc_dw_epoch_1970_2024.json"

  delete_file     ${BASE_FILE}
  delete_file ${EXT_BASE_FILE}

export curl_output=`curl --ssl-no-revoke  "GET" "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/wc_dw_epoch_1970_2024/?limit=9999999999" -H "accept: application/json" `
echo "${curl_output}"  >   wc_dw_epoch_1970_2024.json
cat  wc_dw_epoch_1970_2024.json | jq -c '.[]' > NDJSON__wc_dw_epoch_1970_2024.json
