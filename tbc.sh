#!/bin/bash
# replacing the amber version in benchmark scripts

for ((i=2; i<10; i++))
do 
  ext=`printf "groupfile_%02i" ${i}`
  sed -i -e 's/runGPU/runGPU_amber18/g' $ext
done

for ((i=0; i<10; i++))
do 
  ext=`printf "groupfile_%02i" ${i}`
  Ext=`printf "groupfile_nstep_%02i" ${i}`
  cp $ext $Ext; sed -i -e 's/runGPU_amber18/runGPU_nstep/g' $Ext
done
