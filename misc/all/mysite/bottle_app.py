import bottle
from bottle import default_app, route, template, request, error
from beaker.middleware import SessionMiddleware
from pbkdf2 import crypt
import sqlite3
import requests
import os
import random

session_opts={
  'session_type':'memory',
  'session_cookie_expires':600,
}

@route('/')
def initialization():
    return template("/home/JackZhang1012/mysite/index")

@route('/about')
def about():
    return template("/home/JackZhang1012/mysite/about")

@route('/loggedin')
def about():
    return template("/home/JackZhang1012/mysite/loggedin")

@route('/login', method="POST")
def login_routine():
    e=request.forms.get("loginemail")
    p=request.forms.get("loginpassword")
    connection=sqlite3.connect("/home/JackZhang1012/mysite/users.db")
    c=connection.cursor()
    c.execute("SELECT * from account WHERE user_email=?", (e,))
    row=c.fetchone()
    if row==None:
        return template("/home/JackZhang1012/mysite/loginw")
    else:
        cp=row[2]
        if cp==crypt(p, cp):
            cookie=bottle.request.environ.get('beaker.session')
            cookie['logged_in']=1
            cookie.save()
            return bottle.redirect('/loggedin')
        else:
            return '''
                   <p>Logged out</p>
                   <meta http-equiv="refresh" content="2;url=/"/>
                   '''

@route('/admin')
def apanel():
    cookie=bottle.request.environ.get('beaker.session')
    if 'logged_in' in cookie:
        #if 'admt' in cookie:
        #    return "admin"
        #else:
        return template("/home/JackZhang1012/mysite/apanel")
    else:
        bottle.redirect('/')
#    return template("/home/JackZhang1012/mysite/apanel")
@route('/loginmain', method="POST" )
def loginmain():
    subject="Resource submission"
    item1=request.forms.get('sendemail')
    item2=request.forms.get('about')
    item3=request.forms.get('sendname')
    text=str(item3)+" "+str(item1)+" "+str(item2)
    requests.post("https://api.mailgun.net/v3/sandboxe58026630ab64c0a8633178a0fba43e1.mailgun.org/messages",
    auth=("api", "key-04ce2bbd519d47429db1f0904eb1929a"),
    data={"from": "Mailgun Sandbox <postmaster@sandboxe58026630ab64c0a8633178a0fba43e1.mailgun.org>",
          "to": "Jack Zhang <zjy20001012@126.com>",
          "subject": subject,
          "html": text})
    return '''
            <meta http-equiv="refresh" content="2;url=/">
            <p>Thx. Rediredcting...</p>
           '''
@route('/logout')
def logout():
    cookie=bottle.request.environ.get('beaker.session')
    cookie.delete()
    return '''
           <p>Logged out</p>
           <meta http-equiv="refresh" content="2;url=/"/>
           '''

@route('/signup')
def signup():
    return template("/home/JackZhang1012/mysite/signup")
@route('/signupresult', method="POST")
def signupresult():
    allowed_formats=[".png",".jpg",".jpeg",".gif", ".JPG"]
    e=request.forms.get("signupemail")
    p=request.forms.get("signuppassword")
    pr=request.forms.get("signuppasswordr")
    avt=request.files.pic
    filename=avt.filename
    filenamewoe,ext=os.path.splitext(avt.filename)
    mfilename=str(random.randint(0,999999))+str(ext)
    connection=sqlite3.connect("/home/JackZhang1012/mysite/users.db")
    c=connection.cursor()
    c.execute("SELECT * from account WHERE user_email=?", (e,))
    row=c.fetchone()
    if row!=None:
        return '''
               <p>Email used.</p>
               <meta http-equiv="refresh" content="2;url=/signup"/>
               '''
    if p!=pr:
        return template("/home/JackZhang1012/mysite/signupw")
    else:
        if ext not in allowed_formats:
            return "<p>Invalid format.</p>"
        else:
            file_path="/home/JackZhang1012/mysite/assets/img/avatars/"
            avt.save(file_path+mfilename)
            cp=crypt(p)
            connection=sqlite3.connect("/home/JackZhang1012/mysite/users.db")
            cursor=connection.cursor()
            cursor.execute("insert into account (user_email, user_password) values (?,?)",(e,cp))
            connection.commit()
            cursor.close()
            return template("/home/JackZhang1012/mysite/signupr")

@route('/issn')
def issn():
    return template("/home/JackZhang1012/mysite/modulus")
@route('/modulus', method="POST")
def modulus_app():
    weight=[8,7,6,5,4,3,2]
    issn=str(request.forms.get("issn"))
    if len(issn)==7:
        thesum=0
        for i in range(0,7):
          thesum+=weight[i]*int(issn[i])
        d=11-thesum%11
        issn+=str(d)
        parameters={"issnresult":"Full ISSN is "+issn}
        return template("/home/JackZhang1012/mysite/issnresult",parameters)
    else:
        return template("/home/JackZhang1012/mysite/issnresultr")

#application = default_app()
application=SessionMiddleware(default_app(), session_opts)

@error(404)
def errorredirect(error):
    return template("/home/JackZhang1012/mysite/errorredirect")