@echo off
rem �J�����g�f�B���N�g���Ɉړ�
cd %~dp0
rem �o�̓t�@�C����
set output_file="file_list.csv"

if not exist %output_file% (
	rem %output_file% �����݂��Ȃ��ꍇ
	for /f %%A in ('dir /b') do ( 
		rem %%A�Ƀt�@�C�������i�[�����
		for %%i in ("%%A") do echo %%A,%%~ti >> %output_file%
	)
echo ����I��
) else (
	rem %output_file% �����݂��Ă���ꍇ 
	echo %output_file% �����݂��Ă��܂��B
)

rem �ꎞ��~
pause