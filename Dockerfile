FROM sagemath/sagemath-jupyter:latest

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip install pycryptodome randcrack pwntools tqdm
RUN sage -pip install pycryptodome randcrack pwntools tqdm
RUN git clone https://github.com/jvdsn/crypto-attacks crypto
