@ECHO OFF

call rebar3 as prod release
cd .\_build\prod\rel\gm_erl
.\bin\gm_erl-0.1.0.cmd console
