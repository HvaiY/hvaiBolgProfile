## CentOS搭建gilab
  - [官方文档](https://about.gitlab.com/install/#centos-8)
  - 步骤安装 root 安装去除所有sudo 命令
    ```
    # 允许sshd 远程服务 
    sudo dnf install -y curl policycoreutils openssh-server
    sudo systemctl enable sshd
    sudo systemctl start sshd

    # 防火墙永久允许接受https 和http 请求，没有ssh证书可以使用http 作为gitlab 请求 协议，建议使用https 
    sudo firewall-cmd --permanent --add-service=http
    sudo firewall-cmd --permanent --add-service=https
    sudo systemctl reload firewalld
    # 支持邮件服务
    sudo dnf install postfix
    sudo systemctl enable postfix
    sudo systemctl start postfix
    #添加gitlab 报仓库
    curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | sudo bash
    # 安装gitlab 并设置默认的外界访问地址 
    sudo EXTERNAL_URL="https://gitlab.example.com" dnf install -y gitlab-ee
    #以上已安装 默认访问地址需要修改(一般为本机ip+端后口或者nginx 转发)
     # 查看安装版本 cat /opt/gitlab/embedded/service/gitlab-rails/VERSION
    #修改配置访问地址 
     vi etc/gitlab/gitlab.rb 
     #找到该行 external_url 'https://gitlab.example.com'
     #修改后 external_url 'http://192.168.3.100:8088' (我本机CentOS地址3.100)
     # 退出vim 编译器 重新启动配置 之后需要重启gitlab 
     sudo gitlab-ctl reconfigure
      #启动gitlab服务
       sudo gitlab-ctl start
      #gitlab服务停止
       sudo gitlab-ctl stop
      #重启gitlab服务
       sudo gitlab-ctl restart
    # 浏览器直接访问 http://192.168.3.100:8088  可达到刚配置的 gitlab ，第一次访问默认root 登录，需要自己设置密码
    
    ```
  