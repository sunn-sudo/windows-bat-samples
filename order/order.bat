@echo off
REM utf-8 に変更
chcp 65001
REM 各メニューの個数(メニューの個数分を初期化します)
for /l %%n in (0,1,3) do (
  set /a array[%%n]=0
)
REM ----- メニュー -----
:TOP
echo *****************************************************************
echo * 注文リスト -- menu --                                                           
echo *                                                               
echo *   1:コメダブレンド      %array[0]% 個                         
echo *   2:小倉トースト        %array[1]% 個                         
echo *   3:コメダ特製ピザ      %array[2]% 個                         
echo *  99:終了                                                      
echo *                                                               
echo *****************************************************************
 
:MENUSTART
 
set USR_INPUT_STR=
set /P USR_INPUT_STR="注文番号を入力してください: "
 
if %USR_INPUT_STR%==1 (
  set /P USR_INPUT_NUMBER="コメダブレンドの個数を入力してください: "
  set /a array[0]=+USR_INPUT_NUMBER
  goto TOP
) else if %USR_INPUT_STR%==2 (
  set /P USR_INPUT_NUMBER="小倉トーストの個数を入力してください: "
  set /a array[1]=+USR_INPUT_NUMBER
  goto TOP
) else if %USR_INPUT_STR%==3 (
  set /P USR_INPUT_NUMBER="コメダ特製ピザの個数を入力してください: "
  set /a array[2]=+USR_INPUT_NUMBER
  goto TOP
) else if %USR_INPUT_STR%==99 (
  echo.
  echo ご注文ありがとうございました。
  goto EXITTRAP
) else (
  echo メニューにその注文番号はありません。
  echo.
  goto MENUSTART
)

:EXITTRAP
pause