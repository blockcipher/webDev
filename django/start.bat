@echo off
set PYTHONPATH=[你的python-lib]
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Python安装目录
set PYTHON_HOME=D:\ProgramFiles\python\2.6
::设置搜索路径
set PATH=%PYTHON_HOME%;%PYTHON_HOME%\Scripts;%PATH%
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::设置代理
set HTTP_PROXY=http://proxy.your.com:8080
set HTTPS_PROXY=https://proxy.your.com:8080
cmd -k