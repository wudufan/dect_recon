#!/bin/bash

echo "0/273"
echo "[Progress] 0/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/22_1.mat" --output "fbp/22_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 1/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/22_1.mat" --output "fbp/22_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 2/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/22_1.mat" --output "fbp/22_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "3/273"
echo "[Progress] 3/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/18_2.mat" --output "fbp/18_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 4/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/18_2.mat" --output "fbp/18_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 5/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/18_2.mat" --output "fbp/18_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "6/273"
echo "[Progress] 6/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/28_2.mat" --output "fbp/28_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 7/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/28_2.mat" --output "fbp/28_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 8/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/28_2.mat" --output "fbp/28_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "9/273"
echo "[Progress] 9/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/3_1.mat" --output "fbp/3_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 10/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/3_1.mat" --output "fbp/3_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 11/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/3_1.mat" --output "fbp/3_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "12/273"
echo "[Progress] 12/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/4_1.mat" --output "fbp/4_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 13/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/4_1.mat" --output "fbp/4_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 14/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/4_1.mat" --output "fbp/4_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "15/273"
echo "[Progress] 15/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/47_2.mat" --output "fbp/47_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 16/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/47_2.mat" --output "fbp/47_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 17/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/47_2.mat" --output "fbp/47_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "18/273"
echo "[Progress] 18/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/17_2.mat" --output "fbp/17_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 19/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/17_2.mat" --output "fbp/17_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 20/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/17_2.mat" --output "fbp/17_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "21/273"
echo "[Progress] 21/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/7_2.mat" --output "fbp/7_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 22/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/7_2.mat" --output "fbp/7_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 23/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/7_2.mat" --output "fbp/7_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "24/273"
echo "[Progress] 24/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/20_2.mat" --output "fbp/20_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 25/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/20_2.mat" --output "fbp/20_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 26/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/20_2.mat" --output "fbp/20_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "27/273"
echo "[Progress] 27/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/30_1.mat" --output "fbp/30_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 28/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/30_1.mat" --output "fbp/30_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 29/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/30_1.mat" --output "fbp/30_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "30/273"
echo "[Progress] 30/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/57_2.mat" --output "fbp/57_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 31/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/57_2.mat" --output "fbp/57_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 32/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/57_2.mat" --output "fbp/57_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "33/273"
echo "[Progress] 33/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/13_2.mat" --output "fbp/13_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 34/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/13_2.mat" --output "fbp/13_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 35/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/13_2.mat" --output "fbp/13_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "36/273"
echo "[Progress] 36/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/49_2.mat" --output "fbp/49_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 37/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/49_2.mat" --output "fbp/49_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 38/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/49_2.mat" --output "fbp/49_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "39/273"
echo "[Progress] 39/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/38_2.mat" --output "fbp/38_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 40/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/38_2.mat" --output "fbp/38_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 41/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/38_2.mat" --output "fbp/38_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "42/273"
echo "[Progress] 42/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/3_2.mat" --output "fbp/3_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 43/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/3_2.mat" --output "fbp/3_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 44/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/3_2.mat" --output "fbp/3_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "45/273"
echo "[Progress] 45/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/29_2.mat" --output "fbp/29_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 46/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/29_2.mat" --output "fbp/29_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 47/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/29_2.mat" --output "fbp/29_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "48/273"
echo "[Progress] 48/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/35_2.mat" --output "fbp/35_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 49/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/35_2.mat" --output "fbp/35_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 50/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/35_2.mat" --output "fbp/35_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "51/273"
echo "[Progress] 51/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/34_1.mat" --output "fbp/34_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 52/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/34_1.mat" --output "fbp/34_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 53/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/34_1.mat" --output "fbp/34_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "54/273"
echo "[Progress] 54/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/22_2.mat" --output "fbp/22_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 55/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/22_2.mat" --output "fbp/22_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 56/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/22_2.mat" --output "fbp/22_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "57/273"
echo "[Progress] 57/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/46_1.mat" --output "fbp/46_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 58/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/46_1.mat" --output "fbp/46_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 59/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/46_1.mat" --output "fbp/46_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "60/273"
echo "[Progress] 60/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/23_2.mat" --output "fbp/23_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 61/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/23_2.mat" --output "fbp/23_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 62/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/23_2.mat" --output "fbp/23_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "63/273"
echo "[Progress] 63/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/32_1.mat" --output "fbp/32_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 64/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/32_1.mat" --output "fbp/32_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 65/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/32_1.mat" --output "fbp/32_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "66/273"
echo "[Progress] 66/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/55_1.mat" --output "fbp/55_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 67/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/55_1.mat" --output "fbp/55_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 68/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/55_1.mat" --output "fbp/55_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "69/273"
echo "[Progress] 69/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/5_2.mat" --output "fbp/5_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 70/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/5_2.mat" --output "fbp/5_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 71/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/5_2.mat" --output "fbp/5_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "72/273"
echo "[Progress] 72/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/54_1.mat" --output "fbp/54_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 73/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/54_1.mat" --output "fbp/54_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 74/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/54_1.mat" --output "fbp/54_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "75/273"
echo "[Progress] 75/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/18_1.mat" --output "fbp/18_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 76/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/18_1.mat" --output "fbp/18_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 77/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/18_1.mat" --output "fbp/18_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "78/273"
echo "[Progress] 78/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/13_1.mat" --output "fbp/13_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 79/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/13_1.mat" --output "fbp/13_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 80/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/13_1.mat" --output "fbp/13_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "81/273"
echo "[Progress] 81/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/65_2.mat" --output "fbp/65_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 82/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/65_2.mat" --output "fbp/65_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 83/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/65_2.mat" --output "fbp/65_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "84/273"
echo "[Progress] 84/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/46_2.mat" --output "fbp/46_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 85/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/46_2.mat" --output "fbp/46_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 86/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/46_2.mat" --output "fbp/46_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "87/273"
echo "[Progress] 87/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/25_1.mat" --output "fbp/25_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 88/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/25_1.mat" --output "fbp/25_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 89/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/25_1.mat" --output "fbp/25_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "90/273"
echo "[Progress] 90/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/57_1.mat" --output "fbp/57_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 91/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/57_1.mat" --output "fbp/57_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 92/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/57_1.mat" --output "fbp/57_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "93/273"
echo "[Progress] 93/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/26_1.mat" --output "fbp/26_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 94/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/26_1.mat" --output "fbp/26_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 95/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/26_1.mat" --output "fbp/26_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "96/273"
echo "[Progress] 96/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/38_1.mat" --output "fbp/38_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 97/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/38_1.mat" --output "fbp/38_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 98/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/38_1.mat" --output "fbp/38_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "99/273"
echo "[Progress] 99/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/19_1.mat" --output "fbp/19_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 100/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/19_1.mat" --output "fbp/19_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 101/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/19_1.mat" --output "fbp/19_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "102/273"
echo "[Progress] 102/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/55_2.mat" --output "fbp/55_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 103/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/55_2.mat" --output "fbp/55_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 104/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/55_2.mat" --output "fbp/55_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "105/273"
echo "[Progress] 105/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/35_1.mat" --output "fbp/35_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 106/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/35_1.mat" --output "fbp/35_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 107/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/35_1.mat" --output "fbp/35_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "108/273"
echo "[Progress] 108/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/16_1.mat" --output "fbp/16_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 109/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/16_1.mat" --output "fbp/16_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 110/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/16_1.mat" --output "fbp/16_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "111/273"
echo "[Progress] 111/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/33_1.mat" --output "fbp/33_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 112/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/33_1.mat" --output "fbp/33_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 113/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/33_1.mat" --output "fbp/33_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "114/273"
echo "[Progress] 114/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/64_2.mat" --output "fbp/64_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 115/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/64_2.mat" --output "fbp/64_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 116/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/64_2.mat" --output "fbp/64_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "117/273"
echo "[Progress] 117/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/34_2.mat" --output "fbp/34_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 118/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/34_2.mat" --output "fbp/34_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 119/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/34_2.mat" --output "fbp/34_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "120/273"
echo "[Progress] 120/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/60_1.mat" --output "fbp/60_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 121/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/60_1.mat" --output "fbp/60_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 122/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/60_1.mat" --output "fbp/60_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "123/273"
echo "[Progress] 123/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/52_1.mat" --output "fbp/52_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 124/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/52_1.mat" --output "fbp/52_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 125/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/52_1.mat" --output "fbp/52_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "126/273"
echo "[Progress] 126/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/14_2.mat" --output "fbp/14_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 127/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/14_2.mat" --output "fbp/14_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 128/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/14_2.mat" --output "fbp/14_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "129/273"
echo "[Progress] 129/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/21_1.mat" --output "fbp/21_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 130/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/21_1.mat" --output "fbp/21_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 131/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/21_1.mat" --output "fbp/21_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "132/273"
echo "[Progress] 132/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/27_2.mat" --output "fbp/27_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 133/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/27_2.mat" --output "fbp/27_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 134/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/27_2.mat" --output "fbp/27_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "135/273"
echo "[Progress] 135/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/17_1.mat" --output "fbp/17_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 136/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/17_1.mat" --output "fbp/17_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 137/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/17_1.mat" --output "fbp/17_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "138/273"
echo "[Progress] 138/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/31_2.mat" --output "fbp/31_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 139/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/31_2.mat" --output "fbp/31_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 140/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/31_2.mat" --output "fbp/31_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "141/273"
echo "[Progress] 141/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/32_2.mat" --output "fbp/32_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 142/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/32_2.mat" --output "fbp/32_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 143/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/32_2.mat" --output "fbp/32_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "144/273"
echo "[Progress] 144/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/24_2.mat" --output "fbp/24_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 145/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/24_2.mat" --output "fbp/24_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 146/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/24_2.mat" --output "fbp/24_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "147/273"
echo "[Progress] 147/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/6_2.mat" --output "fbp/6_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 148/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/6_2.mat" --output "fbp/6_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 149/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/6_2.mat" --output "fbp/6_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "150/273"
echo "[Progress] 150/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/59_2.mat" --output "fbp/59_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 151/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/59_2.mat" --output "fbp/59_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 152/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/59_2.mat" --output "fbp/59_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "153/273"
echo "[Progress] 153/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/65_1.mat" --output "fbp/65_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 154/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/65_1.mat" --output "fbp/65_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 155/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/65_1.mat" --output "fbp/65_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "156/273"
echo "[Progress] 156/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/50_1.mat" --output "fbp/50_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 157/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/50_1.mat" --output "fbp/50_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 158/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/50_1.mat" --output "fbp/50_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "159/273"
echo "[Progress] 159/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/16_3.mat" --output "fbp/16_3" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 160/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/16_3.mat" --output "fbp/16_3" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 161/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/16_3.mat" --output "fbp/16_3" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "162/273"
echo "[Progress] 162/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/58_2.mat" --output "fbp/58_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 163/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/58_2.mat" --output "fbp/58_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 164/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/58_2.mat" --output "fbp/58_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "165/273"
echo "[Progress] 165/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/14_1.mat" --output "fbp/14_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 166/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/14_1.mat" --output "fbp/14_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 167/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/14_1.mat" --output "fbp/14_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "168/273"
echo "[Progress] 168/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/6_1.mat" --output "fbp/6_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 169/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/6_1.mat" --output "fbp/6_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 170/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/6_1.mat" --output "fbp/6_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "171/273"
echo "[Progress] 171/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/24_1.mat" --output "fbp/24_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 172/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/24_1.mat" --output "fbp/24_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 173/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/24_1.mat" --output "fbp/24_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "174/273"
echo "[Progress] 174/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/31_1.mat" --output "fbp/31_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 175/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/31_1.mat" --output "fbp/31_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 176/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/31_1.mat" --output "fbp/31_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "177/273"
echo "[Progress] 177/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/56_1.mat" --output "fbp/56_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 178/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/56_1.mat" --output "fbp/56_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 179/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/56_1.mat" --output "fbp/56_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "180/273"
echo "[Progress] 180/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/20_1.mat" --output "fbp/20_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 181/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/20_1.mat" --output "fbp/20_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 182/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/20_1.mat" --output "fbp/20_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "183/273"
echo "[Progress] 183/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/51_2.mat" --output "fbp/51_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 184/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/51_2.mat" --output "fbp/51_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 185/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/51_2.mat" --output "fbp/51_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "186/273"
echo "[Progress] 186/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/7_1.mat" --output "fbp/7_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 187/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/7_1.mat" --output "fbp/7_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 188/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/7_1.mat" --output "fbp/7_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "189/273"
echo "[Progress] 189/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/2_1.mat" --output "fbp/2_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 190/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/2_1.mat" --output "fbp/2_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 191/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/2_1.mat" --output "fbp/2_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "192/273"
echo "[Progress] 192/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/16_2.mat" --output "fbp/16_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 193/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/16_2.mat" --output "fbp/16_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 194/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/16_2.mat" --output "fbp/16_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "195/273"
echo "[Progress] 195/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/19_2.mat" --output "fbp/19_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 196/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/19_2.mat" --output "fbp/19_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 197/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/19_2.mat" --output "fbp/19_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "198/273"
echo "[Progress] 198/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/25_2.mat" --output "fbp/25_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 199/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/25_2.mat" --output "fbp/25_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 200/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/25_2.mat" --output "fbp/25_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "201/273"
echo "[Progress] 201/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/54_2.mat" --output "fbp/54_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 202/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/54_2.mat" --output "fbp/54_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 203/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/54_2.mat" --output "fbp/54_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "204/273"
echo "[Progress] 204/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/21_2.mat" --output "fbp/21_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 205/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/21_2.mat" --output "fbp/21_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 206/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/21_2.mat" --output "fbp/21_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "207/273"
echo "[Progress] 207/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/28_1.mat" --output "fbp/28_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 208/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/28_1.mat" --output "fbp/28_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 209/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/28_1.mat" --output "fbp/28_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "210/273"
echo "[Progress] 210/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/4_2.mat" --output "fbp/4_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 211/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/4_2.mat" --output "fbp/4_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 212/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/4_2.mat" --output "fbp/4_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "213/273"
echo "[Progress] 213/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/27_1.mat" --output "fbp/27_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 214/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/27_1.mat" --output "fbp/27_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 215/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/27_1.mat" --output "fbp/27_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "216/273"
echo "[Progress] 216/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/23_1.mat" --output "fbp/23_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 217/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/23_1.mat" --output "fbp/23_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 218/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/23_1.mat" --output "fbp/23_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "219/273"
echo "[Progress] 219/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/56_2.mat" --output "fbp/56_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 220/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/56_2.mat" --output "fbp/56_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 221/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/56_2.mat" --output "fbp/56_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "222/273"
echo "[Progress] 222/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/47_1.mat" --output "fbp/47_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 223/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/47_1.mat" --output "fbp/47_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 224/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/47_1.mat" --output "fbp/47_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "225/273"
echo "[Progress] 225/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/58_1.mat" --output "fbp/58_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 226/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/58_1.mat" --output "fbp/58_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 227/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/58_1.mat" --output "fbp/58_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "228/273"
echo "[Progress] 228/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/30_2.mat" --output "fbp/30_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 229/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/30_2.mat" --output "fbp/30_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 230/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/30_2.mat" --output "fbp/30_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "231/273"
echo "[Progress] 231/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/2_2.mat" --output "fbp/2_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 232/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/2_2.mat" --output "fbp/2_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 233/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/2_2.mat" --output "fbp/2_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "234/273"
echo "[Progress] 234/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/26_2.mat" --output "fbp/26_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 235/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/26_2.mat" --output "fbp/26_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 236/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/26_2.mat" --output "fbp/26_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "237/273"
echo "[Progress] 237/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/52_2.mat" --output "fbp/52_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 238/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/52_2.mat" --output "fbp/52_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 239/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/52_2.mat" --output "fbp/52_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "240/273"
echo "[Progress] 240/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/53_1.mat" --output "fbp/53_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 241/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/53_1.mat" --output "fbp/53_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 242/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/53_1.mat" --output "fbp/53_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "243/273"
echo "[Progress] 243/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/50_2.mat" --output "fbp/50_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 244/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/50_2.mat" --output "fbp/50_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 245/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/50_2.mat" --output "fbp/50_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "246/273"
echo "[Progress] 246/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/33_2.mat" --output "fbp/33_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 247/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/33_2.mat" --output "fbp/33_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 248/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/33_2.mat" --output "fbp/33_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "249/273"
echo "[Progress] 249/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/49_1.mat" --output "fbp/49_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 250/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/49_1.mat" --output "fbp/49_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 251/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/49_1.mat" --output "fbp/49_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "252/273"
echo "[Progress] 252/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/51_1.mat" --output "fbp/51_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 253/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/51_1.mat" --output "fbp/51_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 254/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/51_1.mat" --output "fbp/51_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "255/273"
echo "[Progress] 255/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/64_1.mat" --output "fbp/64_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 256/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/64_1.mat" --output "fbp/64_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 257/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/64_1.mat" --output "fbp/64_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "258/273"
echo "[Progress] 258/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/59_1.mat" --output "fbp/59_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 259/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/59_1.mat" --output "fbp/59_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 260/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/59_1.mat" --output "fbp/59_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "261/273"
echo "[Progress] 261/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/60_2.mat" --output "fbp/60_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 262/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/60_2.mat" --output "fbp/60_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 263/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/60_2.mat" --output "fbp/60_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "264/273"
echo "[Progress] 264/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/5_1.mat" --output "fbp/5_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 265/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/5_1.mat" --output "fbp/5_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 266/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/5_1.mat" --output "fbp/5_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "267/273"
echo "[Progress] 267/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/29_1.mat" --output "fbp/29_1" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 268/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/29_1.mat" --output "fbp/29_1" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 269/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/29_1.mat" --output "fbp/29_1" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
echo "270/273"
echo "[Progress] 270/273" >> logs/fbp_20220317_0.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/53_2.mat" --output "fbp/53_2" --subset "all" --device "1" &>> logs/fbp_20220317_0.log &
echo "[Progress] 271/273" >> logs/fbp_20220317_1.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/53_2.mat" --output "fbp/53_2" --subset "odd" --device "2" &>> logs/fbp_20220317_1.log &
echo "[Progress] 272/273" >> logs/fbp_20220317_2.log
python3 main.py --geometry "siemens_definition_flash.cfg" --input "raw/53_2.mat" --output "fbp/53_2" --subset "even" --device "3" &>> logs/fbp_20220317_2.log &
wait
cat logs/fbp_20220317_0.log logs/fbp_20220317_1.log logs/fbp_20220317_2.log > logs/fbp_20220317.log
rm logs/fbp_20220317_0.log
rm logs/fbp_20220317_1.log
rm logs/fbp_20220317_2.log
cp logs/fbp_20220317.log /home/local/PARTNERS/dw640/mnt/women_health_internal/dufan.wu/dect/data/fbp/fbp_20220317.log
