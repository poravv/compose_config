# Ingresar al contenedor
```
docker exec -it gitlab bash
```

# Ejecutar 
```
gitlab-rails console
```

# Asignar pass a root
```
user = User.find_by(username: 'root')
user.password = '761995!#2024@'
user.password_confirmation = '761995!#2024@'
user.save!
```

# Crear el namespace
```
namespace = Namespace.new(
  name: 'Root Namespace',
  path: 'root',
  owner: user
)
namespace.save!
```

# Crear el usuario
```
user = User.new(
  username: 'root',
  email: 'email@dominio.net',
  password: 'Password', # Cambia a una contraseña segura
  password_confirmation: 'Password',
  name: 'Nombre Apellido',
  namespace: namespace
)
user.admin = true
user.skip_confirmation!
user.save!
```

761995!#2024@

# Configurar correo

```
nano /etc/gitlab/gitlab.rb.
```

```
gitlab_rails['smtp_enable'] = true
# Cambia por tu servidor SMTP
gitlab_rails['smtp_address'] = 'smtp.example.com' 
# O el puerto que uses (25, 465, etc.)
gitlab_rails['smtp_port'] = 587 
gitlab_rails['smtp_user_name'] = 'tu_correo@example.com'
# La contraseña de tu correo
gitlab_rails['smtp_password'] = 'tu_contraseña' 
# El dominio de tu correo
gitlab_rails['smtp_domain'] = 'example.com' 
# Método de autenticación
gitlab_rails['smtp_authentication'] = 'login' 
# Si tu servidor SMTP lo permite
gitlab_rails['smtp_enable_starttls_auto'] = true 

```

## Reconfigurar gitlab 
```
sudo gitlab-ctl reconfigure
```

## Verifica en los Registros
```
tail -f /var/log/gitlab/gitlab-rails/production.log
```

## Prueba de envio de correo 

```
sudo gitlab-rails console -e production
```

Luego enviar el correo de prueba 

```
Notify.test_email('tu_correo@example.com', 'Prueba de configuración', 'Este es un correo de prueba.').deliver_now
```