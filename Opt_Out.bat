@echo off
REM -------------------------------------------------------------------------------------------------------------------------
REM Setup Console view
REM -------------------------------------------------------------------------------------------------------------------------
mode con: cols=80 lines=35
CD %~dp0
Title Opt-Outer

REM --------------------------------------------------------------------------------------------------------------------------
REM Disclosure Agreement
REM --------------------------------------------------------------------------------------------------------------------------

echo ************************************************** 
echo *                   Opt-Outer                    *
echo **************************************************
echo *  Opt-Outer by CommsTech                        *
echo * hats off to https://www.abine.com/optouts.php  *
echo *  http://CryptoSoldier.com                      *
echo **************************************************
echo *                                                *
echo * This is a tool to  assist in the removal of    *
echo * personal information from site crawlers.       *
echo * The creator of this software holds no          *
echo * liability.                                     *
echo *                                                *
echo *                                                *
echo *   That being said....                          *
echo *      Let's continue!                           * 
echo *                                                *
echo **************************************************
echo *             Press ENTER to start               *
echo ************************************************** 
pause

:NAME
SET /P First_Name=Enter Your First Name Here:
If "%First_Name%"==" goto Name
SET /P Last_Name=Enter Your Last Name Here:
If "%Last_Name%"==" goto Name
SET /P Middle_Name=Enter Your Middle Name Here or just press enter:

:BROWSER
echo Lets start with your preferred browser
echo we recommend Brave with fingerprinting shield but its up to you
echo Select from the list below
echo. 
echo 1. Internet Explorer
echo 2. Edge
echo 3. Chrome
echo 4. Firefox
echo 5. Brave

set /p m=Type 1, 2, or 3 then press ENTER: 
if %m%==1 set Default_Browser = "%programfiles%\internet explorer\iexplore.exe"
if %m%==2 set Default_Browser = 
if %m%==3 set Default_Browser = 
if %m%==4 set Default_Browser = "%programfiles%\mozilla firefox\firefox.exe"
if %m%==5 set Default_Browser = 
else goto BROWSER


:BASE
choice /c gby /m "Google, Bing, Yahoo? " 
set /p string="Search: "%LAST_NAME% %FIRST_NAME% %MIDDLE_NAME%" 
for /f "tokens=1-9 delims= " %%a in ("%string%") do ( 
rem HERE THE SEARCH TERMS ARE SEPARATED BY SPACES, BUT YOU CAN'T HAVE SPACES IN A WEB ADDRESS. SO THE BELOW LINE TURNS THE SPACES INTO + SIGNS. WITHOUT IT, YOU CAN'T SEARCH FOR MORE THAN ONE WORD. LAME. 
set string=%%a+%%b+%%c+%%d+%%e+%%f+%%g+%%h+%... 
) 

if %errorlevel%==1 %Default_Browser% http://www.google.com/webhp#^&q=%string% 
if %errorlevel%==2 %Default_Browser% http://www.bing.com/search?q=%string% 
if %errorlevel%==3 %Default_Browser% http://search.yahoo.com/search?p=%string...

:Information
echo.
echo.
echo.
echo what sites had your information?
echo.
echo 1.  BeenVerified.com 
echo 2.  Intelius.com
echo 3.  Lookup.com
echo 4.  LookupAnyone.com
echo 5.  MyLife.com
echo 6.  Peekyou.com
echo 7.  PeopleFinder.com
echo 8.  PeopleFinders.com
echo 9.  PeopleLookup.com
echo 10. Peoplesmart.com
echo 11. Phonesbook.com
echo 12. PrivateEye.com
echo 13. PublicRecords.com
echo 14. Public-Records-Now.com
echo 15. Spoke.com
echo 16. Spokeo.com
echo 17. USA-People-Search.com
echo 18. USIdentify.com
echo 19. USSearch.com 
echo 20. Veromi.com
echo 21. Wink.com
echo 22. WhitePages.com
echo 23. Zabasearch.com
echo 24. ALL DONE!

set /p m=Type 1, 2, or 3 then press ENTER: 
if %m%==1 goto BEENVERIFIED
if %m%==2 goto
if %m%==3 goto
if %m%==4 goto
if %m%==5 goto
if %m%==6 goto
if %m%==7 goto
if %m%==8 goto
if %m%==9 goto
if %m%==10 goto
if %m%==11 goto
if %m%==12 goto
if %m%==13 goto
if %m%==14 goto
if %m%==15 goto
if %m%==16 goto
if %m%==17 goto
if %m%==18 goto
if %m%==19 goto
if %m%==20 goto
if %m%==21 goto
if %m%==22 goto
if %m%==23 goto
if %m%==24 goto COMPLETE

:BEENVERIFIED
echo Difficulty Rating: EASY
echo all you have to do is send an email
echo Building the template now
echo.
echo use your email provider and send this email below
echo press anykey to start
pause
echo TO:      support@beenverified.com
echo Subject: Opt Out Request
echo Body:    Your name as shown on the site:
echo          Your age:
echo          Your current address (city, state, zip):
echo          Previous addresses:
echo          Listed relatives:
echo          The copied & pasted URL of the BeenVerified search results page where you found your info:
echo          Thank you for your assistance.
echo.
echo          %First_Name% %Middle_Name% %Last_Name%
echo.
echo.
pause
echo *Note
echo  You'll receive 2 confirmation emails: the first to 
echo  confirm they received your request, and the second 
echo  several days later to confirm that they removed 
echo  your listing.
pause

: COMPLETE
echo now we need to stop this from happening again
echo alittle education goes a long way
echo more to follow on this section in the future
echo thanks for stopping by
echo press any key to exit
pause
