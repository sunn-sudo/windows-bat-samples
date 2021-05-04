@echo off
title search_map.bat
chcp 65001
rem 実行ディレクトリーに移動
cd C:\Program Files\Google\Chrome\Application
set /p search_from="現在地を入力してください:"
set /p search_to="目的地を入力してください:"
rem chrome.exe にURLの引数を渡す
chrome.exe https://www.google.co.jp/maps/dir/%search_from%/%search_to%/
pause