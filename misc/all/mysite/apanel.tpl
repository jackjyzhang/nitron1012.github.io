<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <!--<meta http-equip="refresh" content="2" url=index.tpl>-->
    <!--<meta http-equiv="refresh" content="2;url=/"/>-->
    <title>Contact us</title>
    <link href="https://fonts.googleapis.com/css?family=Oswald|Raleway|Titillium+Web" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="static/css/contact.css" rel="stylesheet" type="text/css" />

  </head>
  <body>
    <script>
    $(document).ready(function(){
        $("#loginbg").animate({opacity: '1'}, 1000);
        $("#wbg").animate({opacity: '0.85'}, 1500);
});
    </script>
    <div class="topbar">

      <div class="top_logo">
        <img id="logoimage" src="https://lh3.googleusercontent.com/-7gCiGi8Ad4Y/UjUouoUwiOI/AAAAAAAAAAs/kVzfO0ooh8chhOFRA0FCmiTyT660MBG4gCEwYBhgL/w280-h280-p/952ee778-137e-411d-b237-42fe82deaae8">
        <h3> JACK ZHANG</h3>
      </div>
      <div class="top_menu">
        <ol>
          <li><button class="libutton" onclick="location.href='/'">Home</button></li>
          <li><button class="libutton" onclick="location.href='/about'">About</button></li>
          <li><button class="libutton" onclick="location.href='/logout'">Logout</button></li>
        </ol>
      </div>
    </div>
    <div class="content">
      <div class="whitebackground" id="wbg" align="center">
        <h1>Complete your personal data</h1>
    <form action="/loginmain" method="POST" enctype="multipart/form-data">
      <input id="main" placeholder="Your email" name="sendemail" type="email" required><br>
      <input id="main" placeholder="Your name" name="sendname"><br>
      <p>Anything you want to tell us, write it down here.</p>
      <textarea id="main" name="about" rows="30" cols="90"></textarea><br>
      <!--<input id="main" type="file" name="data"><br>-->
      <button type="submit">Submit</button>
    </form>
    <a href="/logout">Logout</a>
      </div>
    </div>
    </div>

      </div>
    </div>

  </body>
</html>