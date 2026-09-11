bat
@echo off
set CHROME="C:\Program Files\Google\Chrome\Application\chrome.exe"
if not exist %CHROME% set CHROME="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

start "" %CHROME% ^
  --allow-file-access-from-files ^
  --disable-web-security ^
  --user-data-dir="%~dp0.chrome-debug-profile" ^
  --disable-site-isolation-trials ^
  "%~dp0index.html"

echo Chrome запущен в режиме отладки. Не используйте это окно для обычного сёрфинга.
pause