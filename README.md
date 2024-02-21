## 常用的ansible playbook

### create_inventory(自动生成inventory的脚本)

```bash
server_list.txt             #ip或域名列表.
create_inventory.sh         #读取server_list.txt 列表生成inventory
```

### install_docker_base(安装Docker,配置基本生产环境)

>批量

```bash
ansible-playbook -i inventory auto_playbook.yaml
```

> 某一个
```bash
./one.sh <address>
```
