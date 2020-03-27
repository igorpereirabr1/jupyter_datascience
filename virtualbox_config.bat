@echo OFF
SET vbox=C:/Program Files/Oracle/VirtualBox/
echo Executando em %vbox%
CD /D %vbox%
echo
echo *****************************************
echo ************** INICIO ******************
echo *****************************************

echo 
echo *****************************************
echo **** PARANDO VM DEFAULT
echo *****************************************
docker-machine stop default

echo 
echo *****************************************
echo **** CONFIGURANDO DISCOS COMPARTILHADOS
echo *****************************************

:: se a unidade de disco não for a C: altera para a unidade correta
:: altear apenas o "C:/" para "D:/"
VBoxManage.exe sharedfolder add default --name "d" --hostpath "c:/" --automount
VBoxManage.exe setextradata default VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root 1
VBoxManage.exe setextradata default VBoxInternal2/SharedFoldersEnableSymlinksCreate/d 1

echo 
echo *****************************************
echo **** AUMENTANDO MEMORIA DA VM DEFAULT
echo *****************************************
VBoxManage.exe  modifyvm default --memory 2048


echo 
echo *****************************************
echo **** MAPEANDO PORTAS DE REDE
echo *****************************************
VBoxManage.exe modifyvm default --natpf1 "jupyter,tcp,,8888,,8888"

echo *****************************************
echo **************** FIM ********************
echo *****************************************

pause
