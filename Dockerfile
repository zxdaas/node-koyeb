# ʹ�� node:slim ��Ϊ��������
FROM node:slim

# ���ù���Ŀ¼
WORKDIR /app

# ����ǰĿ¼�µ������ļ����Ƶ�����Ŀ¼
COPY . .

# ����ϵͳ����װ curl��gawk �� sed ���ߣ�Ϊ index.js �ļ����ִ��Ȩ�ޣ�Ȼ��װӦ�õ�������
RUN apt-get update && \
    apt-get install -y curl gawk sed && \
    chmod +x index.js && \
    npm install

# ������������ʱִ�е�����Ϊ node index.js
CMD ["node", "index.js"]
