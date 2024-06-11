FROM pytorch/pytorch

WORKDIR /app

COPY ./test-app/. /app/
COPY ./requirements.txt /app/

RUN /bin/bash -c "pip install -r requirements.txt"

# Создаем виртуальное окружение и устанавливаем инструменты через pipx
RUN python -m venv venv
RUN /bin/bash -c "source venv/bin/activate && pipx install poetry==1.8.2"
RUN /bin/bash -c "source venv/bin/activate && pipx install copier==9.2.0"

# Указываем точку входа, активируя виртуальное окружение
CMD /bin/bash -c "source venv/bin/activate"
# ENTRYPOINT [ "jupyter", "notebook", "--ip=0.0.0.0","--port=8888", "--allow-root" ]