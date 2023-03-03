 ## 基础镜像java
 FROM java:8
 ## 作者是zrq
 MAINTAINER zrq
 ## 就是你上传的jar包的名称。给jar包起个别名
 ADD ./target/*.jar  app.jar
 ## 就是在容器中以多少端口号运行
 EXPOSE 8080
 ## 容器启动之后执行的命令，java -jar spring_boot.jar 即启动jar
 ENTRYPOINT ["java","-jar","app.jar"]

