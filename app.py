from flask import Flask, render_template, request, url_for, redirect
from pymongo import MongoClient

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/login', methods=['POST'])
def login():
    usuario=request.form.get("usuario")
    contrasena=request.form.get("contraseña")
    client = MongoClient('192.168.1.50', 27017, username=usuario, password=contrasena)
    db = client.servidor
    miColeccion = db.miColeccion
    miColeccion_all = miColeccion.find()
    return render_template('login.html',miColeccion_all=miColeccion_all)
