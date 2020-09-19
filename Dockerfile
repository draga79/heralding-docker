FROM python:3.7-slim-stretch as base

RUN apt-get update && apt-get install --no-install-recommends -y libpq-dev gcc git && apt-get clean && rm -rf /var/lib/apt/lists/* 

RUN cd /; git clone https://github.com/johnnykv/heralding.git; cd /heralding

RUN apt-get update && apt-get install -y --no-install-recommends libpq-dev gcc \ 
    && pip install --user --no-cache-dir -r /heralding/requirements.txt && apt-get clean && rm -rf /var/lib/apt/lists/* 

RUN cd /heralding && python setup.py install --user

ENV PATH=/root/.local/bin:$PATH

RUN mkdir /heralogs

COPY exec.sh /

CMD ["/exec.sh"]
EXPOSE 21 22 23 25 80 110 143 443 993 995 1080 2222 3306 3389 5432 5900
