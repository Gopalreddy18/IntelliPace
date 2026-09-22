@echo off
title IntelliPace Student Learning Portal
cd /d "%~dp0"

echo ========================================================
echo   Starting IntelliPace Student Learning Portal...
echo ========================================================
echo.

if not exist "venv\Scripts\streamlit.exe" (
    echo [ERROR] Virtual environment not found in venv\
    pause
    exit /b 1
)

echo Activating environment and launching Streamlit...
call venv\Scripts\activate.bat
streamlit run app.py

pause
