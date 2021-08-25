FROM Kingache/eagle:latest

#clonning repo 
RUN git clone https://github.com/Kingache/eagle /root/eagle

#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
