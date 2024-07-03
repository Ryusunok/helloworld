# Dockerfile

# 사용할 베이스 이미지를 설정합니다. 여기서는 Python 3.9 이미지를 사용합니다.
FROM python:3.9

# 작업 디렉토리를 설정합니다.
WORKDIR /app

# 현재 디렉토리의 모든 파일을 Docker 이미지의 /app 디렉토리로 복사합니다.
COPY . .

# 필요한 Python 패키지를 설치합니다. 여기서는 Flask를 설치합니다.
RUN pip install --no-cache-dir -r requirements.txt

# 컨테이너가 시작될 때 실행할 명령을 설정합니다. 여기서는 Python 애플리케이션을 실행합니다.
CMD ["python", "hello.py"]
