rem new_insert.bat

chcp 65001
rem カレントディレクトリに移動
cd %~dp0

rem パス設定
set PGPATH=C:\Program Files\PostgreSQL\13\bin
set PATH=%PATH%;%PGPATH%

rem DB接続情報
set HOSTNAME=localhost
set PORTNUM=5432
set DBNAME=postgres
set USERNAME=postgres
set PGPASSWORD=password

rem for /L %%1 in (開始値, 増分, 終了値) do コマンド
for /L %%i in (1, 1, 100000) do (
    rem SQL実行
    psql -h %HOSTNAME% -p %PORTNUM% -d %DBNAME% -U %USERNAME% -f ./insert.sql
)

echo errorlevel:%errorlevel% >> insert.log
echo 正常終了しました。>> insert.log
