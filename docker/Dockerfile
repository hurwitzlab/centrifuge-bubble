FROM python:3.7.4-buster
RUN apt-get -y update
RUN apt-get install -y parallel wget git

WORKDIR /app
RUN git clone https://github.com/hurwitzlab/centrifuge-bubble
RUN python3 -m pip install -r /app/centrifuge-bubble/scripts/requirements.txt
ENV PATH=/app/centrifuge-bubble/scripts:$PATH

# Run when the container launches
CMD ["/app/centrifuge-bubble/scripts/plot.py"]
