@echo off
rem カレントディレクトリに移動
cd %~dp0
rem 出力ファイル名
set output_file="file_list.csv"

if not exist %output_file% (
	rem %output_file% が存在しない場合
	for /f %%A in ('dir /b') do ( 
		rem %%Aにファイル名が格納される
		for %%i in ("%%A") do echo %%A,%%~ti >> %output_file%
	)
echo 正常終了
) else (
	rem %output_file% が存在している場合 
	echo %output_file% が存在しています。
)

rem 一時停止
pause