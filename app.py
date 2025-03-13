import logging
from flask import Flask
 
app = Flask(__name__)
 
logging.basicConfig(filename='/logs/app.log', level=logging.INFO)
 
@app.route('/')
def home():
    app.logger.info("Acceso a /")
    return "Bienvenido a la Prueba de Docker"
 
@app.route('/devops')
def devops():
    app.logger.info("Acceso a /devops")
    return "La automatización es clave en DevOps"
 
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)