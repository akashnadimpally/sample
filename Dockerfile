FROM python:3
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN python demo.py
# RUN bandit -r demo.py
CMD ["bandit","-r","demo.py"]