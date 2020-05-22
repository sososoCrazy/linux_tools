#########################################################################
#   > File Name:     ping.sh
#   > Author:        gsj
#   > mail:          guosj.so@gmail.com
#   > Created Time:  2019.10.29 17:57
#########################################################################
#!/bin/sh
#while true
#do
#if [ `ping -c 1 node9|grep 100%|wc -l` -ne 0 ];then
#echo diaoxian_node9 >>log2
#fi
#done

#ping -i "3580" node9 | sed "s/64/$(date) 64/g"
#ping -i 2 node9 | sed "s/64/$(date) 64/g"

#ping -i "1" node9 | awk '{print $0"\t" strftime("%H:%M:%S %D",systime()) }' > ~/.ping/ping.log 2>&1 
ping -i "1" node9 | awk '{print $0"\t" strftime("%H:%M:%S %D",systime()) }' | tee -a ~/.scripts/ping/ping1.log &
while  
	sleep 10
do
	echo "------------------------------------------------------------------"
done | tee -a ~/.scripts/ping/ping1.log &
ping -i "1" node9 | awk '{print $0"\t" strftime("%H:%M:%S %D",systime()) }' 
ping -i "1" node9 | awk '{print $0"\t" strftime("%H:%M_%D",systime()) }' 
timer=`awk '{print $0"\t" strftime("%H:%M_%D",systime()) }'`
echo $timer
