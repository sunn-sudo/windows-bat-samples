@echo off
rem new_multi_start.bat
rem カレントディレクトリに移動
cd %~dp0
rem for /L %%1 in (開始値, 増分, 終了値) do コマンド
for /L %%i in (1, 1, 5) do (
	timeout /t 1 /nobreak
	start cmd /c "new_insert.bat"
)