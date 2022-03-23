#!/bin/sh 
#! dependencies
#! $ cat template.ksh
#! (curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=~PAGENUM~ -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_~PAGENUM~
#! $ cat keep_template.ksh
#! (curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=~PAGENUM~ -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_~PAGENUM~

cd "/c/sam"

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

export DBQT='"'

if [ -f error_on_purpose.output ]
then
	rm  error_on_purpose.output
      echo "removing old file error_on_purpose.output"
fi

 (curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=99999999999999 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > error_on_purpose.output
 cat  error_on_purpose.output
  sed_fnx "${DBQT}" "_"  error_on_purpose.output
 cat  error_on_purpose.output
  export new_error_on_purpose=` cat  error_on_purpose.output | sed 's\{\_\g' | sed 's\}\_\\g' `
  typeset -i rows_to_iterate=`echo ${new_error_on_purpose} | cut -d':' -f6 | sed 's~_~~g'`    
  typeset -i run_x_times=`expr ${rows_to_iterate} / 100 ` 
  typeset -i modulus_run_x_times=`expr ${rows_to_iterate} % 100 ` 

  if [[ ${modulus_run_x_times} > 0 ]]
  then
   run_x_times=(${run_x_times}+1)
  fi

  if [[ -f run_all_ticket_metrics.ksh ]]
   then
	 rm  run_all_ticket_metrics.ksh
  fi
      touch   run_all_ticket_metrics.ksh

  for i in $(seq  ${run_x_times})  
  do   
    if [ -f json_tmp.rename ]
    then
	 rm json_tmp.rename
    fi
   echo "looping thu i"${i}
   export pass_page=${i}
   #!  echo "(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=${i} -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H ${DBQT}Content-Type: application/json${DBQT} ) > json_tmp.rename_${i} " > run_all_ticket_metrics.ksh
   cat template.ksh | sed 's^~PAGENUM~^'"$pass_page"'^g' >>  run_all_ticket_metrics.ksh
 done
   chmod 777 run_all_ticket_metrics.ksh
   . run_all_ticket_metrics.ksh 

 for ij in `ls -1 | grep  json_tmp.rename_`
 do
  mv ${ij} ${ij}.json
 done

 for ij in `ls -1 | grep  json_tmp.rename_`
 do
 cat ${ij} >>  master.json
 echo "send file"${ij}
 done

#! export get_final=`curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=99999999999999 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" | grep \
#! '"next_page":null,"previous_page":"https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=' `
#! echo ${get_final}
