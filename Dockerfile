FROM sagemath/sagemath-jupyter

RUN sudo apt-get update
RUN sudo apt-get install git -y
RUN sudo sage -pip install pycryptodome randcrack pwntools tqdm
RUN git clone https://github.com/jvdsn/crypto-attacks crypto
