# Instalación de Glances
## En Debian/Ubuntu:
```
sudo apt update
sudo apt install glances
```

## Ejecutar Glances:
Simplemente ejecuta el siguiente comando para iniciar Glances:

```
glances
```

## Características de Glances
Monitoreo en Tiempo Real: Muestra el uso de la CPU, memoria, disco, red y más en tiempo real.
Interfaz Intuitiva: La interfaz de línea de comandos es fácil de usar y proporciona una visión clara del estado del sistema.
Personalizable: Puedes ajustar los umbrales de alerta y personalizar la visualización según tus necesidades.
Uso de Glances
- RAM: Muestra el uso total, libre y utilizado de la memoria RAM.
Almacenamiento: Proporciona información sobre el uso del disco, incluyendo el espacio total, utilizado y libre.

### Comandos Útiles

- Para ver solo la memoria:
```
glances --disable-plugin diskio,fs,load,network,processlist,system
```

- Para ver solo el almacenamiento:
```
glances --disable-plugin cpu,mem,network,processlist,system
```