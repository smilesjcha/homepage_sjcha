# Node.js ���� 20�� ������� �� �̹��� ���
FROM node:20-slim

# �۾� ���丮 ����
WORKDIR /app

# �� ���Ӽ� ��ġ
COPY package*.json ./
RUN npm install

# �� �ҽ� �ڵ� ����
COPY . .

# �� ����
RUN npm run build

# ��Ʈ 80���� �� ����
EXPOSE 80
CMD ["npm", "start"]
