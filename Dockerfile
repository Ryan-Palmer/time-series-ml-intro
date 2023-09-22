FROM tensorflow/tensorflow:latest-gpu

COPY kaggle.json  /root/.kaggle/kaggle.json

WORKDIR /app

RUN apt-get update
# RUN apt-get install {package names} -y

COPY pip-packages.txt pip-packages.txt
RUN pip install --upgrade pip
RUN pip install --upgrade -r pip-packages.txt
RUN rm ./pip-packages.txt

EXPOSE 8888
ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root","--no-browser"]