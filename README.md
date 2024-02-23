## 常用的ansible playbook

### create_inventory(自动生成inventory的脚本)

```bash
cd create_inventory/
server_list.txt             #ip或域名列表.
create_inventory.sh         #读取server_list.txt 列表生成inventory
```

### install_docker_base(安装Docker,配置基本生产环境)

* 批量

```bash
cd install_docker_base/
ansible-playbook -i inventory auto_playbook.yaml
```

* 某一个
```bash
cd install_docker_base/
./one.sh <address>
```

### update_kernel(各种Linux发行版切换至[Xanmod](https://xanmod.org/).内核剧本)

```bash
cd update_kernel/
ansible-playbook -i inventory auto_playbook.yaml
```

### node-exporter(node-exporter数据源)
```bash
cd node-exporter/
ansible-playbook -i inventory playbook.yaml
```
