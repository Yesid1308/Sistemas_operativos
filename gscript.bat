@echo off
cd \User\Escritorio/Desktop
mkdir script
mkdir copiaaa
cls



:menu
color 4
echo SU ARCHIVO SCRIPT HA SIDO CREADO CON EXITO :)
echo " MENU SCRIPT  "
echo **---------------------**
echo 1.- Copiar scripth
echo 2.- eliminar script
echo 3.- Salir del programa
echo **---------------------**
set /p op=FAVOR SELECCIONE LA OPCION QUE DESEA REALIZAR:
if %op%==1 goto copiar
if %op%==2 goto eliminar
if %op%==3 goto salir


:copiar
color 5
set /p origen=ingrese la direccion del script:
set /p destino=ingrese la direccion a donde desea copiar el script:
echo Se esta realizanso la copia de %origen% a %destino% ......
for %%f in ("%source%\*.*") do (
    xcopy "%%f" "%dest%\%%~nxf"
    echo Archivo %%f copiado el %date% a las %time% /O /X /E /H /K /F /D /G
)
echo La copia ha sido finalizada con exito :)

pause
set /p opcion1=Escribe "volver" para regresar al menu si no escriba "salir" para salir del programa: 
if %opcion1%==volver goto menu
if %opcion1%==salir goto salir



:eliminar
color 4
set / archivo=ingrese la direccion del script a eliminar:
for %%f in ("%eli%\*.*") do (
    del "%%f"
    echo Archivo %%f eliminado el %date% a las %time%
)
echo SI ARCHIVO A SIDO ELIMINADO CON EXITO :)
pause
echo ¿DESEA VOLVER AL MENU?
set /p opcion2=Escribe "volver" para regresar al menu si no escriba "salir" para salir del programa: 
if %opcion2%==volver goto menu
if %opcion2%==salir goto salir




:salir
pause
exit
