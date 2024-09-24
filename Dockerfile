# Usar una imagen base de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo de requisitos a la imagen
COPY requirements.txt .

# Instalar las dependencias especificadas en el archivo requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código de la aplicación al contenedor
COPY . .

# Especificar el comando por defecto para ejecutar la aplicación
ENTRYPOINT ["python", "xsstrike.py"]
