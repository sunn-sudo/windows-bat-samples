@echo off
title search.bat
chcp 65001
rem 実行ディレクトリーに移動
cd C:\Program Files\Google\Chrome\Application
set /p search_word="検索ワードを入力してください:"
rem chrome.exe にURLの引数を渡す
chrome.exe https://www.google.com/search?q=%search_word%
pause