 <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Jack Zhang's awesome website</title>
    <link href="https://fonts.googleapis.com/css?family=Oswald|Raleway|Titillium+Web" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="static/css/loggedin.css" />
    <style>
        html, body {

            text-align: center;
            background-repeat: no-repeat;
            background-position: center;
            background-size:cover;
            background-attachment: fixed;
            height: 900px;
            width: 100%;
            background-image: url('http://wallpapercave.com/wp/6DdpvwC.jpg')
        }
    </style>
</head>
<body>
<script>
    $(document).ready(function(){
        $("#loginbg").animate({opacity: '1'}, 1000);
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
          <li><button class="libutton" onclick="location.href='/admin'">Contact</button></li>
          <li><button class="libutton" onclick="location.href='/logout'">Log out</button></li>
        </ol>
      </div>
    </div>
    <div class="csslider" align="center">
      <h1 id="ml" align="center">Photos</h1>
        <input type="radio" name="slides" id="slides_1" checked />
        <input type="radio" name="slides" id="slides_2" />
        <input type="radio" name="slides" id="slides_3" />
        <input type="radio" name="slides" id="slides_4" />
        <input type="radio" name="slides" id="slides_N" />
        <ul id="loginbg">
            <li><img src="static/img/photos/c1.jpg"  class="photo"></li>
            <li><img src="static/img/photos/c2.jpg"  class="photo"></li>
            <li><img src="static/img/photos/c3.jpg"  class="photo"></li>
            <li><img src="static/img/photos/c4.jpg"  class="photo"></li>
            <li><img src="static/img/photos/c5.jpg"  class="photo"></li>
        </ul>
        <div class="arrows">
            <label for="slides_1"></label>
            <label for="slides_2"></label>
            <label for="slides_3"></label>
            <label for="slides_4"></label>
            <label for="slides_N"></label>
        </div>
        <div class="navigation">
            <div>
                <label for="slides_1"></label>
                <label for="slides_2"></label>
                <label for="slides_3"></label>
                <label for="slides_4"></label>
                <label for="slides_N"></label>
            </div>
        </div>

</body>
</html>
