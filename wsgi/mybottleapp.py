
from bottle import route, default_app, get, post, put, run, template, error, request, static_file, response
import requests
import json
from lxml import etree
 
@route('/')
def principal():
    return template('index.tpl')
    
@route('/artistas')
def buscar():
    return template('artistas.tpl')

@route ('/resultado', method='post')
def nombre():
	global artist
	artist = request.forms.get("artista")
	r = requests.get('http://api.deezer.com/search/album', params={'q':'%s'% artist})
	datos=json.loads(r.text)
	return template("resultado.tpl", data=datos,busqueda=artist)

@route('/letras')
def search():
    return template('buscarletras')
    
@route('/letra', method="post")
def letra():
    artist2 = request.forms.get("artista2")
    cancionk = request.forms.get("cancion")
    dicc_peticion = {'artist':artist2,'song':cancionk,'fmt':'xml'}
    peticion = requests.get('http://lyrics.wikia.com/api.php/lyrics', params=dicc_peticion)
    datos1 = etree.fromstring(peticion.text.encode("utf-8"))
    url = datos1.find("url")
    lyrics = datos1.find("lyrics")
    song = datos1.find("song")	
    
    return template('letra', url=url.text,lyrics=lyrics.text,song=song.text)



@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root=os.environ['OPENSHIFT_REPO_DIR']+"wsgi/static")
    
@error(404)
def error404(error):
    return template('error')

# This must be added in order to do correct path lookups for the views

import os
from bottle import TEMPLATE_PATH
TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_REPO_DIR'], 'wsgi/views/')) 

application=default_app()
