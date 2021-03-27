FROM arm64v8/python:3.9

USER root

RUN pip install --upgrade notebook

RUN jupyter notebook --generate-config

WORKDIR /notebooks
ENTRYPOINT ["jupyter", "notebook"]
