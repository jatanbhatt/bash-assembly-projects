{\rtf1\ansi\ansicpg1252\cocoartf1671
{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26 \cf0 \expnd0\expndtw0\kerning0
%include\'a0"asm_io.inc"\
\
SECTION\'a0.data\
\
string:\'a0db\'a0"Hello\'a0World",10,0\
upper:\'a0dd\'a00\
total:\'a0dd\'a00\
dispStr:\'a0db\'a0"the\'a0length\'a0of\'a0the\'a0string\'a0is\'a0",0\
dispUpper:\'a0db\'a0"the\'a0number\'a0of\'a0upper\'a0case\'a0letters\'a0is\'a0",0\
dispError:\'a0db\'a0"too\'a0many\'a0characters",10,0\
\
SECTION\'a0.text\
\
global\'a0asm_main\
global\'a0error\
asm_main:\
\
\'a0\'a0\'a0\'a0\'a0push\'a0ebp\
\'a0\'a0\'a0\'a0\'a0mov\'a0ebp,\'a0esp\
\'a0\'a0\'a0\'a0\'a0\
\'a0\'a0\'a0\'a0\'a0mov\'a0ebx,\'a0string\'a0\'a0\'a0\'a0\'a0\
\'a0\'a0\'a0\'a0\'a0mov\'a0edx,\'a0DWORD\'a0[upper]\
\'a0\'a0\'a0\'a0\'a0mov\'a0ecx,\'a0DWORD\'a0[total]\'a0\
\'a0\'a0\'a0\'a0\'a0\
\'a0\'a0\'a0\'a0\'a0looptop:\
\'a0\'a0\'a0\'a0\'a0cmp\'a0byte\'a0[ebx],\'a00\
\'a0\'a0\'a0\'a0\'a0je\'a0loopend\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0;exit\'a0if\'a0character\'a0is\'a00\
\
\'a0\'a0\'a0\'a0\'a0cmp\'a0ecx,21\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0;accounting\'a0for\'a0bad\'a0counter\
\'a0\'a0\'a0\'a0\'a0jg\'a0error\
\'a0\'a0\
\'a0\'a0\'a0\'a0\'a0cmp\'a0byte\'a0[ebx],'A'\
\'a0\'a0\'a0\'a0\'a0jb\'a0L1\
\'a0\'a0\'a0\'a0\'a0cmp\'a0byte\'a0[ebx],'Z'\
\'a0\'a0\'a0\'a0\'a0ja\'a0L1\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0;code\'a0for\'a0upper\'a0case\'a0\'a0\'a0\'a0\'a0\
\'a0\'a0\'a0\'a0\'a0add\'a0edx,\'a0DWORD\'a01\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0;increment\'a0number\'a0of\'a0UPPER\
\
\'a0\'a0\'a0\'a0\'a0jmp\'a0L2\
\'a0\'a0\'a0\'a0\'a0\
\'a0\'a0\'a0\'a0\'a0L1:\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0;code\'a0for\'a0lower\'a0case\
\'a0\'a0\'a0\'a0\'a0\
\'a0\'a0\'a0\'a0\'a0L2:\
\'a0\'a0\'a0\'a0\'a0add\'a0ecx,\'a0DWORD\'a01\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0;increment\'a0total\
\'a0\'a0\'a0\'a0\'a0add\'a0ebx,\'a0DWORD\'a01\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0;go\'a0to\'a0next\'a0character\
\'a0\'a0\'a0\'a0\'a0jmp\'a0looptop\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0;back\'a0to\'a0top\
\'a0\'a0\'a0\'a0\'a0\
\'a0\'a0\'a0\'a0\'a0loopend:\
\
\'a0\'a0\'a0\'a0\'a0mov\'a0eax,string\
\'a0\'a0\'a0\'a0\'a0call\'a0print_string\
\
\'a0\'a0\'a0\'a0\'a0mov\'a0eax,dispStr\
\'a0\'a0\'a0\'a0\'a0call\'a0print_string\
\'a0\'a0\'a0\'a0\'a0\
\'a0\'a0\'a0\'a0\'a0dec\'a0ecx\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0;accounting\'a0for\'a0bad\'a0counter\
\'a0\'a0\'a0\'a0\'a0mov\'a0eax,ecx\
\'a0\'a0\'a0\'a0\'a0call\'a0print_int\
\'a0\'a0\'a0\'a0\'a0call\'a0print_nl\
\'a0\'a0\'a0\'a0\'a0\
\'a0\'a0\'a0\'a0\'a0mov\'a0eax,dispUpper\
\'a0\'a0\'a0\'a0\'a0call\'a0print_string\
\
\'a0\'a0\'a0\'a0\'a0mov\'a0eax,edx\
\'a0\'a0\'a0\'a0\'a0call\'a0print_int\
\'a0\'a0\'a0\'a0\'a0call\'a0print_nl\
\
\'a0\'a0\'a0\'a0\'a0mov\'a0esp,\'a0ebp\
\'a0\'a0\'a0\'a0\'a0pop\'a0ebp\
\
\'a0\'a0\'a0\'a0\'a0mov\'a0eax,0\
\'a0\'a0\'a0\'a0\'a0ret\
\
error:\
\'a0\'a0\'a0\'a0\'a0mov\'a0eax,dispError\
\'a0\'a0\'a0\'a0\'a0call\'a0print_string\
\'a0\'a0\'a0\'a0\'a0\
\'a0\'a0\'a0\'a0\'a0mov\'a0esp,\'a0ebp\
\'a0\'a0\'a0\'a0\'a0pop\'a0ebp\
\'a0\'a0\'a0\'a0\'a0\
\'a0\'a0\'a0\'a0\'a0mov\'a0eax,0\
\'a0\'a0\'a0\'a0\'a0ret}