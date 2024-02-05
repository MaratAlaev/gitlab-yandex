FROM centos:7

RUN yum install python3 python3-pip -y
COPY req.txt req.txt 
RUN pip3 install -r req.txt && \
mkdir ./python_api
COPY python_api.py ./python_api/python_api.py
CMD ["python3", "./python_api/python_api.py"]