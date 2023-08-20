@echo off
chcp 65001
title Adivinhe o Número
echo.
color 0a
:sorteio
cls
set /a numero=(%random% %% 50) + 1
set /a cont=11
:jogo
cls
set /a cont=%cont% - 1
echo ╔═══════════════════╣ Adivinhe o número ╠══════════════════╗
echo   Foi sorteado um número entre 01 e 50, tente adivinhar... 
echo.                                                         
echo                         ( ͡° ͜ʖ ͡°)                       
echo ╚══════════════════════════════════════════════════════════╝
echo.
echo ═══════════════════╣Você possui %cont% chances╠═════════════════
echo.
echo ------------------------------------------------------------
set /p resp=Digite seu palpite:
echo.
if %resp% geq 51 (
	echo.
	echo NÃO VACILA!
	echo.
	echo O jogo é de 1 a 50
	echo.
	echo ¯\_/ ͠❛ ⏥ ͡❛\_/¯
	echo.
	set /a cont=%cont% + 1
	pause
	goto :jogo
)
if %resp% equ %numero% (
    echo.
    echo Acertouuu!!!
    echo.
    echo \/ᵔ ͜ʖ ︡ᵔ\/
    echo.
    goto :fim
) else if %cont% geq 2 (
    if %resp% gtr %numero% (
        echo.
        echo Digite um número menor!
        echo.
        echo  ノ\ ͡° ͜ʖ ͡°ノ\
        echo.
        pause
        goto :jogo
    ) else (
        echo.
        echo Digite um número maior!
        echo.
        echo \╯ ͠° ͟ʖ ͡°\╯
        echo.
        pause
        goto :jogo
    )
) else (
    echo.
    echo Você perdeu!
    echo O número sorteado era: %numero%
    echo.
    echo / ͡ಥ ︹ ͡ಥ \
    goto :fim
)
:fim
set /p jogarNovamente=Deseja jogar novamente? (S/N)
if /i %jogarNovamente% equ s (goto :sorteio) else (exit)
pause
