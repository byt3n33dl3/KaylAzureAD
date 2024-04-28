	@echo off
	chcp 65001

	echo.
	echo	 ██╗    ██╗██╗███╗   ██╗████████╗███████╗██████╗ ███████╗███████╗██╗     ██╗     
	echo	 ██║    ██║██║████╗  ██║╚══██╔══╝██╔════╝██╔══██╗██╔════╝██╔════╝██║     ██║     
	echo	 ██║ █╗ ██║██║██╔██╗ ██║   ██║   █████╗  ██████╔╝█████╗  █████╗  ██║     ██║     
	echo	 ██║███╗██║██║██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗██╔══╝  ██╔══╝  ██║     ██║     
	echo	 ╚███╔███╔╝██║██║ ╚████║   ██║   ███████╗██║  ██║██║     ███████╗███████╗███████╗
	echo	 ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚══════╝╚══════╝╚══════╝	
	echo     "+-------------------------------------------------------------------------+
	echo     "| Winterfell is a windows batch script to collect windows forensics       |
	echo     "| data and perform threat hunting for Incident Response Investigation.    |
	echo     "| Created by yAsSeR Al-Ghamdi                                             |
	echo     "+-------------------------------------------------------------------------+
	echo.
	
	REM Get the tools directory path	
	set toolspath=%cd%\Tools
	REM Get the tools directory output
	set resultspath=%cd%\%COMPUTERNAME%\Malware
	title (Winterfell Malware)


	::LOKI CHECK
	echo Enumerating Loki Check Results .........................!
	echo Enumerating Loki Check Results >> %resultspath%\Winterfell_Status.log
	mkdir %resultspath%\Loki-Check
	%toolspath%\loki\loki.exe -l %resultspath%\Loki-Check\loki-results.log  
	echo %date% %time% : Finished enumerating loki check results >> %resultspath%\Winterfell_Status.log

	REM  ==========================================(END OF SCRIPT)====================================================================================
	echo %date% %time% : Winterfell-Malware Operation is Completed >> %resultspath%\Winterfell_Status.log
	echo 
	echo Please Enter Any Key to Exit ...