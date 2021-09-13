.686P
.MODEL FLAT, STDCALL
.STACK 4096
.DATA
MB_OK    EQU 0
STR1     DB "Моя первая программа",0
STR2     DB "Бесплатный шаблон",0
HW       DD ?
EXTERN MessageBoxA@16:NEAR
.CODE
START:
PUSH     MB_OK
PUSH     OFFSET STR1
PUSH     OFFSET STR2
PUSH     HW
CALL     MessageBoxA@16
RET
END START