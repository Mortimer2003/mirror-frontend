FROM nginx:latest

# 设置工作目录
WORKDIR /app

VOLUME /app/pub

# 将本地的脚本复制到工作目录
COPY ./dist /app

COPY ./nginx.conf /etc/nginx/conf.d/

RUN rm /etc/nginx/conf.d/default.conf

# 暴露端口
EXPOSE 80

# 运行 Nginx Web 服务器
CMD ["nginx", "-g", "daemon off;"]

