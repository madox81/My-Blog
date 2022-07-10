import sys

from bottle import Bottle
from routes import routes

class Blog(Bottle):
    def __init__(self):
        super(Blog, self).__init__()
        
        self.route('/', callback = routes.Home())
        self.route('/about', callback = routes.About())
        self.route('/posts/<name>', callback = routes.Post())
        self.route(
            '/static/<filepath:path>', 
            callback = routes.Static()
        )


app = Blog()

if __name__ == '__main__':

    try:
        app.run(host='localhost', port=8080, debug=True, reload=True)
    except KeyboardInterrupt:
        sys.exit(0)