# ����microsoft/dotnet:latest����Docker Image
FROM microsoft/dotnet:latest
 
# ����docker�е�/usr/local/srcĿ¼
RUN cd /usr/local/src
 
# ����DockerWebAPIĿ¼
RUN mkdir DockerWeb
 
# ���ù���·��
WORKDIR /usr/local/src/DockerWeb
 
# ����ǰ�ļ����µ������ļ�ȫ�����Ƶ�����Ŀ¼
COPY *.* ./
 
# ����籩¶5000�˿�
EXPOSE 5000
 
# ִ��dotnet DockerWebAPI.dll����
CMD ["dotnet", "dockerAPI.dll"]