FROM python:3.12-rc

RUN apt update

RUN apt upgrade -y

RUN apt install -y zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN chsh -s /bin/zsh
RUN sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/g' /root/.zshrc

RUN apt install -y netcat-openbsd net-tools iputils-ping python3-requests

RUN pip install ansible

