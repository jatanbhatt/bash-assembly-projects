{\rtf1\ansi\ansicpg1252\cocoartf1671
{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26 \cf0 \expnd0\expndtw0\kerning0
all:\'a0bscript2\'a0bscript3\'a0role.cpp\'a0role2.cpp\'a0role3.cpp\'a0role4.cpp\'a0role1.o\'a0role2.o\'a0role3.o\'a0role4.o\'a0role1\'a0role2\'a0role3\'a0role4\
\'a0\'a0\'a0\'a0\'a0g++\'a0-o\'a0role1\
\'a0\'a0\'a0\'a0\'a0g++\'a0-o\'a0role2\
\'a0\'a0\'a0\'a0\'a0g++\'a0-o\'a0role3\
\'a0\'a0\'a0\'a0\'a0g++\'a0-o\'a0role4\
\
bscript2:\'a0bscript1\
\'a0\'a0\'a0\'a0\'a0sed\'a0's/1/2/g'\'a0bscript1\'a0>\'a0bscript2\
\'a0\'a0\'a0\'a0\'a0chmod\'a0u+x\'a0bscript2\
\
bscript3:\'a0bscript1\
\'a0\'a0\'a0\'a0\'a0sed\'a0's/1/4/g'\'a0bscript1\'a0>\'a0bscript3\
\'a0\'a0\'a0\'a0\'a0chmod\'a0u+x\'a0bscript3\
\
role.cpp:\'a0C_section\'a0B_section\'a0A_section\
\'a0\'a0\'a0\'a0\'a0cat\'a0C_section\'a0>>\'a0role.cpp\
\'a0\'a0\'a0\'a0\'a0cat\'a0B_section\'a0>>\'a0role.cpp\
\'a0\'a0\'a0\'a0\'a0cat\'a0A_section\'a0>>\'a0role.cpp\
\
role2.cpp:\'a0role1.cpp\
\'a0\'a0\'a0\'a0\'a0sed\'a0's/1/2/g'\'a0role1.cpp\'a0>\'a0role2.cpp\
\
role3.cpp:\'a0role1.cpp\
\'a0\'a0\'a0\'a0\'a0sed\'a0's/1/3/g'\'a0role1.cpp\'a0>\'a0role3.cpp\
\
role4.cpp:\'a0role1.cpp\
\'a0\'a0\'a0\'a0\'a0sed\'a0's/1/4/g'\'a0role1.cpp\'a0>\'a0temp\
\'a0\'a0\'a0\'a0\'a0sed\'a0's/NOT\'a0EXPENSIVE/EXPENSIVE/g'\'a0temp\'a0>\'a0role4.cpp\
\
role1.o:\'a0role1.cpp\
\'a0\'a0\'a0\'a0\'a0g++\'a0-c\'a0role1.cpp\
\
role2.o:\'a0role2.cpp\
\'a0\'a0\'a0\'a0\'a0g++\'a0-c\'a0role2.cpp\
\
role3.o:\'a0role3.cpp\
\'a0\'a0\'a0\'a0\'a0g++\'a0-c\'a0role3.cpp\
\
role4.o:\'a0role4.cpp\
\'a0\'a0\'a0\'a0\'a0g++\'a0-c\'a0role4.cpp\
\
role1:\'a0role.cpp\
\'a0\'a0\'a0\'a0\'a0bscript1\
\
role2:\'a0role.cpp\
\'a0\'a0\'a0\'a0\'a0bscript2\
\
role3:\'a0role.cpp\
\'a0\'a0\'a0\'a0\'a0g++\'a0-o\'a0role3\'a0role.cpp\'a0-D_X3\'a0role1.o\'a0role2.o\'a0role3.o\'a0role4.o\
\
role4:\'a0role.cpp\
\'a0\'a0\'a0\'a0\'a0bscript3\
\
clean:\
\'a0\'a0\'a0\'a0\'a0rm\'a0*.o\
\'a0\'a0\'a0\'a0\'a0rm\'a0bscript2\'a0bscript3\
\'a0\'a0\'a0\'a0\'a0rm\'a0role.cpp\'a0role2.cpp\'a0role3.cpp\'a0role4.cpp\
\'a0\'a0\'a0\'a0\'a0rm\'a0temp\
\'a0\'a0\'a0\'a0\'a0rm\'a0role1\'a0role2\'a0role3\'a0role4}