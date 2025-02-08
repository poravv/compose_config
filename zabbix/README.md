# Instalar el agente de Zabbix
sudo apt-get update
sudo apt-get install zabbix-agent

# Configurar el agente de Zabbix
sudo nano /etc/zabbix/zabbix_agentd.conf

Server=<IP_del_servidor_Zabbix>
ServerActive=<IP_del_servidor_Zabbix>
Hostname=<Nombre_de_tu_servidor>

docker-compose up -d

Admin
zabbix