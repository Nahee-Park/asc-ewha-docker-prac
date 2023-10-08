# Node.js 공식 이미지를 베이스로 합니다.
FROM node:16

# 작업 디렉토리를 설정합니다.
WORKDIR /usr/src/app

# package.json와 package-lock.json 파일을 복사합니다.
COPY package*.json ./

# 프로젝트의 의존성을 설치합니다.
RUN npm install

# 모든 프로젝트 파일을 컨테이너로 복사합니다.
COPY . .

# 서버가 사용할 포트를 설정합니다. 
EXPOSE 8080

# Node.js 서버를 실행합니다.
CMD ["node", "app.js"]
