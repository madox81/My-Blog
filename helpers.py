import markdown
import datetime as d
from deta import Drive

posts = Drive('posts')

m = markdown.Markdown(extensions = ['meta', 'fenced_code'], output_format='html5')

# def format_date(date):
# 	date = date.split('-')
# 	formated_date = d.datetime(int(date[2]), int(date[1]), int(date[0])).strftime('%d.%m.%Y')
# 	return formated_date

def get_post(name):
	#name = name.replace('_', ' ').title() + '.md'
	try:
		post = posts.get(name)
		html = m.convert(post.read().decode('utf-8'))
		post.close()
		return {
			'html': html,
			'meta': {
				'title': m.Meta['title'][0],
				'date' :m.Meta['date'][0] #format_date(m.Meta['date'][0])
				
			}
		}
	except FileNotFoundError:
		return 'Not Found'

def get_posts():
	posts_meta = []
	try:
		posts_list = posts.list()
		if not posts_list['names']:
			pass
		else:
			posts_meta = [{
					'link':'/posts/' + post.split('.')[0].replace(' ', '_').lower(),
					'meta':get_post(post)['meta'] 
				} for post in posts_list['names'] ]
			# for post in posts_list['names']:
			# 	#curr_post = posts.get(post)
			# 	#m.convert(curr_post.read().decode('utf-8')) # read func return binary
			# 	#curr_post.close() 
			# 	posts_meta.append({
			# 		'link':'/posts/' + post.split('.')[0].replace(' ', '_').lower(),
			# 		'meta':get_post(post)['meta'] 
			# 	})
	except ConnectionError as err:
		return err
	return posts_meta 
