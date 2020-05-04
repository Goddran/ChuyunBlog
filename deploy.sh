#!/bin/bash

# 指定项目的根目录，请按实际修改
SENS_DIR="/www/wwwroot/ChuyunBlog"
# 拉取最新的源码
git pull
echo "代码拉取完毕！"

# 停止项目
sh $SENS_DIR/bin/sens.sh stop

# 执行打包
mvn clean package -Dmaven.test.skip=true
echo "项目打包完成！"

# 运行SENS
sh $SENS_DIR/bin/sens.sh start

echo "部署完毕，Enjoy！"