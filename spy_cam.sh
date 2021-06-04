#!/bin/bash 
while true; do 
sudo cat /dev/input/mouse0 | read -n1 #проверка девайса на работу сейчас 
mpv tv:// -frames 3 -vo jpeg #сохранение через кодек mpv скриншотов в формате jpeg
mv 00000003.jpg date +%F-%H-%M.jpg #переиминовывание скрина с его датой
rm -f 0000*.jpg 
sleep 10 #таймаут на 10 сек
done