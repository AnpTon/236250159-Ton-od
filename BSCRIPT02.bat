@echo off
echo Select a shape to calculate the area of!
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral

choice /c 123 /n /m "Choice:"

if errorlevel 3 goto quad
if errorlevel 2 goto tri
if errorlevel 1 goto Circ

:quad
:tri
	echo Input side a length:
    set /p ta=
	echo Input side b length:
    set /p tb=
	echo Input side c length:
    set /p tc=
	if %ta% 
:Circ
    echo Input Radius:
    set /p radius=
    echo The area of the circle is:
    powershell -command "3.14 * (%radius% * %radius%)"
    pause