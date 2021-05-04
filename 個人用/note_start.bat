@echo off
rem note_start.bat
rem カレントディレクトリーに移動
cd %~dp0
chcp 65001
set /p note_date="記事作成日を入力してください:"

if not exist %note_date% ( 
	mkdir %note_date%
	echo 記事作成日のディレクトリーを作成しました

	cd %note_date%
	type nul > %note_date%_記事.txt
	copy ..\temp\temp.xlsx %note_date%_画像編集用.xlsx
	echo 記事作成用のファイルを作成しました
) else (
	echo %note_date%は作成済みです
)

pause
