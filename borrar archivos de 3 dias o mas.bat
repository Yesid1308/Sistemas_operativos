forfiles /p "C:\Users\IserLab\Desktop\batch" /s /m *.* /c "cmd /c 
if @isdir==FALSE  
if @fdate LEQ %date%-%time:~0,2%-%time:~3,2%-%time:~6,2%-3 (del path)"