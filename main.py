from flask import Flask
from flask import render_template
from flask import request
import database_manager as dbHandler
import sqlite3

app = Flask(__name__)

@app.route('/index.html', methods=['GET'])
def index():
    data = dbHandler.listMedia()
    return render_template("/index.html", content=data)

@app.route('/catalogue.html', methods=['GET'])     # Only GET - just viewing
@app.route('/', methods=['POST', 'GET'])       # Both GET and POST - can handle forms
def catalogue():
    status = request.args.get('status')
    media_type = request.args.get('media_type')
    search_query = request.args.get("q", "").strip()

    if status:
        data = dbHandler.listMediaByStatus(status)
    elif media_type:
        data = dbHandler.listMediaByType(media_type)
    elif search_query:
        data = dbHandler.listMediabySearch(search_query)
    else:
        data = dbHandler.listMedia()
    return render_template("/catalogue.html", content=data)

@app.route('/add-contact.html', methods=['POST', 'GET'])
def add_contact():
    """
    Handle the contact form page.

    GET request: Display empty form
    POST request: Process form submission with error handling
    """
    if request.method == 'POST':
        # Extract form data
        email = request.form['email']
        name = request.form['name']

        # Try to insert into database
        try:
            dbHandler.insertContact(email, name)
            # Success! Show confirmation
            return render_template('/add-contact.html', is_done=True)

        except sqlite3.IntegrityError:
            # Duplicate email - show error message
            error_message = "This email address is already subscribed. Please use a different email."
            return render_template('/add-contact.html', error=error_message, email=email, name=name)

    else:
        # GET request - display empty form
        return render_template('/add-contact.html')

@app.route('/add-media.html', methods=['POST', 'GET'])
def add_media():
    """
    Handle the media form page.

    GET request: Display empty form
    POST request: Process form submission with error handling
    """
    if request.method == 'POST':
        # Extract form data
        name = request.form['name']
        hyperlink = request.form['hyperlink']
        media_type = request.form['media_type']
        slogan = request.form['slogan']
        genre = request.form['genre']
        about = request.form['about']
        stars = request.form['stars']
        platform = request.form['platform']
        status = request.form['status']
        image = request.form['image']
        dbHandler.insertMedia(name, hyperlink, media_type, slogan, genre, about, stars, platform, status, image)
        
        # Success! Show confirmation
        return render_template('/add-media.html', is_done=True)

    else:
        # GET request - display empty form
        return render_template('/add-media.html')

# should always be at the bottom

if __name__ == '__main__':
  app.run(debug=True, host='0.0.0.0', port=5000)