# Node.js 버전 20를 기반으로 한 이미지 사용
FROM node:20-slim

# 작업 디렉토리 설정
WORKDIR /app

# 앱 종속성 설치
COPY package*.json ./
RUN npm install

# 앱 소스 코드 복사
COPY . .

# 앱 빌드
RUN npm run build

# 포트 80에서 앱 실행
EXPOSE 80
CMD ["npm", "start"]
