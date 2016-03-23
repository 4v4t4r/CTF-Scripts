REM Portante
echo "Hunting for Alpha and Bravo connections" 
:loop  
for /F "tokens=5" %%a in ('netstat -ano ^| find "192.168.1.66" ') do Taskkill /PID %%a /F /T
for /F "tokens=5" %%a in ('netstat -ano ^| find "10.1.50.*" ') do Taskkill /PID %%a /F /T
ping 1.1.1.1 -n 1 -w 5000 >NUL
GOTO loop
