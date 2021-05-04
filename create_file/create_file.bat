@echo off
rem カレントディレクトリに移動
cd %~dp0
rem for /L %%1 in (開始値, 増分, 終了値) do コマンド
for /L %%i in (1, 1, 1000) do (
	rem 空ファイル作成
	copy nul %%i
) 
