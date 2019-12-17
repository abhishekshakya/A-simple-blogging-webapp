from flask import Flask, render_template, url_for,request,redirect
from flask_mysqldb import MySQL
import json

with open('Flask\config.json','r') as c:
    params = json.load(c)['params']

app = Flask(__name__)

#configuration
app.config['MYSQL_HOST']=params['mysql_host']
app.config['MYSQL_USER']=params['mysql_user']
app.config['MYSQL_PASSWORD']=params['mysql_password']
app.config['MYSQL_DB']=params['mysql_db']

mysql = MySQL(app)

@app.route('/',methods=['GET','POST'])
def index():
    if request.method == 'POST':
        author = request.form['author']
        title = request.form['title']
        content = request.form['content']
        date = request.form['date']
        if(len(author)==0 or len(title)==0 or len(content)==0 or len(date)==0):
            return "<h1>OOPS! looks like you left some filed empty :(</h1>"
        
        cur = mysql.connection.cursor()
        cur.execute(f"INSERT INTO blog(author,title,content,data_posted) VALUES('{author}','{title}','{content}','{date}');")
        mysql.connection.commit()
        cur.close()
        return redirect(url_for('index'))
    else:
        cur = mysql.connection.cursor()
        cur.execute(f"SELECT * FROM blog")
        posts = cur.fetchall()
        return render_template('index.html', posts = posts)

@app.route('/about')
def about():
    name = 'abhishek'
    return render_template('about.html', id = name,title = 'YOLO')

@app.route('/delete/<int:id>')
def delete(id):
    cur = mysql.connection.cursor()
    cur.execute(f"DELETE FROM blog where id={id}")
    mysql.connection.commit()
    cur.close()
    return redirect(url_for('index'))

@app.route('/edit/<int:id>', methods=['POST','GET'])
def edit(id):
    if request.method == 'POST':
        text = request.form['update']
        if(len(text)!=0):
            cur = mysql.connection.cursor()
            cur.execute(f"UPDATE blog SET content='{text}' WHERE id={id}")
            mysql.connection.commit()
            cur.close()
        return redirect(url_for('index'))
    else:
        return render_template('update.html',id=id)

@app.route('/register', methods=['POST','GET'])
def register():
    if request.method == 'POST':
        email = request.form['email']
        pas = request.form['pass']
        print(email,pas)
        cur = mysql.connection.cursor()
        cur.execute(f"INSERT INTO users(email,pass) VALUES('{email}','{pas}');")
        mysql.connection.commit()
        cur.close()
        return redirect(url_for('index'))
    else:
        return render_template('register.html')
    

if __name__ == "__main__":
    app.run(debug=True)