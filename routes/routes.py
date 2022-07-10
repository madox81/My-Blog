from helpers import get_posts, get_post
from bottle import template, static_file


class Post:
    def __call__(self, name):
        post = get_post(name + '.md')
        return template('post', html=post['html'], meta=post['meta'])    
        
class Static:
    def __call__(self, filepath):
        return static_file(filepath, root = './static')
        
class Home:
    def __call__(self):
        posts = get_posts()
        return template('home', posts = posts) 

class About:
    def __call__(self):
        return template('about') 