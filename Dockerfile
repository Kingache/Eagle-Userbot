FROM Kingache/Eagle-Ubot:latest

#clonning repo 
RUN git clone https://github.com/Kingache/Eagle-Ubot/root/Eagle-Ubot

#working directory 
WORKDIR /root/Eagle-Ubot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/Eagle-Ubot/bin:$PATH"

CMD ["python3","-m","eagle"]
