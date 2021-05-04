@echo off
rem utf-8に変更
chcp 65001

rem ファイル名:sch_command.bat
title スケジュール設定バッチ

rem 設定内容
set /p sch_url="スケジュールに設定するURLを入力:"
set /p sch_time="実行時間を入力:"

rem timeコマンドによる空白を0埋めにする処理
set time_=%time: =0%

rem dateとtimeを用いてスケジュール名を動的に決める
set sch_name=%date:~0,4%%date:~5,2%%date:~8,2%-%time_:~0,2%%time_:~3,2%%time_:~6,2%

rem schtasks  /create /tn [タスク名] /tr [実行内容] /sc [実行頻度] /st [実行時間]
schtasks /create /tn "%sch_name%" /tr "C:\Program Files\Google\Chrome\Application\chrome.exe %sch_url%" /sc once /st %sch_time%

pause