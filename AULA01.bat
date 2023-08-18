@echo off
title Aula 01 - WEB1
color 0a
echo.
:inicio
cls
echo ===========================
echo          ( o - O )
echo ===========================
echo       Menu Principal
echo ===========================
echo [1] Executar Word
echo [2] Executar Excel
echo [3] Abrir a Calculadora
echo [4] Teclado Virtual
echo [5] Navegar na WEB
echo [6] Buscar Video no Youtube
echo [7] Testar Conexao de Rede
echo [8] Gerar Arquivos Diversos
echo [9] Organizar Arquivos
echo [F] Finalizar o Programa
echo ============================
set /p op=Digite uma Opcao:
rem condicionais
if %op% equ 1 (goto:word)
if %op% equ 2 (goto:excel)
if %op% equ 3 (goto:calculadora)
if %op% equ 4 (goto:teclado)
if %op% equ 5 (goto:web)
if %op% equ 6 (goto:busca)
if %op% equ 7 (goto:teste)
if %op% equ 8 (goto:gerar)
if %op% equ 9 (goto:organizar)
if /i %op% equ F (exit) else (
	echo.
	echo --------------------------------
	echo       opcao invalida
	echo -------------------------------
	echo.
	pause
	goto :inicio
	)
	
:word
start winword.exe
goto :inicio

:excel
start excel.exe
goto :inicio

:calculadora
start calc.exe
goto :inicio

:teclado
start osk.exe
goto :inicio

:web
echo.
set /p site=digite o endereço do site:
start chrome.exe %site%
goto :inicio

:busca
echo.
set /p busca=o que voce quer ver?
start https://www.youtube.com/results?search_query=%busca%
goto :inicio

:teste
echo.
set /p conexao=Digite o Ip da maquina ou endereco web:
ping %conexao% -t
goto :inicio

:gerar
echo.
set /p nome=Digite o nome do arquivo:
set /p qtde=Digite a quantidade:
set /p ext=Digite a extensao:
for /l %%n in (1,1,%qtde%) do echo Fatec Maua > %nome%%%n.%ext%
echo.
echo Arquivos gerados com sucesso!
echo.
pause
goto inicio

:organizar
c:
cd\Users\lab5\Desktop
echo.
set /p pasta=Digite a pasta a ser criada:
set /p ext=digite a extensao do tipo do arquivo:
md %pasta%
move *.%ext% c:\Users\lab5\Desktop\%pasta%
echo.
echo arquivos organizados com sucesso
echo.
pause
goto :inicio
