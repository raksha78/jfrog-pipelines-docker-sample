# FROM ubuntu:18.04
# ADD . /
# RUN chmod +x /install.sh

# RUN /install.sh && rm -rf /tmp && mkdir /tmp && chmod 1777 /tmp

# ENV BASH_ENV "/etc/drydock/.env"

FROM mcr.microsoft.com/windows/servercore:ltsc2019
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

ADD ./install.ps1 C:/Users/ContainerAdministrator/AppData/Local/Temp
RUN C:/Users/ContainerAdministrator/AppData/Local/Temp/install.ps1
