FROM sagemath/sagemath-jupyter:latest

RUN sudo apt-get update
RUN sudo apt-get install git -y
RUN sudo apt-get install python3 -y
RUN sudo apt-get install python3-pip -y
RUN sudo pip install pycryptodome randcrack pwntools tqdm
RUN sudo sage -pip install pycryptodome randcrack pwntools tqdm
RUN git clone https://github.com/jvdsn/crypto-attacks crypto
