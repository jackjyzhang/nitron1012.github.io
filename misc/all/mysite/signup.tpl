<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <!--<meta http-equip="refresh" content="2" url=index.tpl>-->
    <!--<meta http-equiv="refresh" content="2;url=/"/>-->
    <title>Jack Zhang's Awesome Website</title>
    <link href="https://fonts.googleapis.com/css?family=Oswald|Raleway|Titillium+Web" rel="stylesheet">
    <link href="static/css/signup.css" rel="stylesheet" type="text/css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  </head>
  <body>
    <script>
    $(document).ready(function(){
        $("#loginbg").animate({opacity: '1'}, 1000);
        $("#wbg").animate({opacity: '0.9'}, 1700);
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
          <li><button class="libutton" onclick="location.href='/'">Login</button></li>
        </ol>
      </div>
    </div>
    <div class="content">
        <!--<div class="pic">
        <img id="logoimage" src="https://static.pexels.com/photos/326424/pexels-photo-326424.jpeg">
        </div>-->
      <div class="signup" align="center">
        <div class="loginheading"><h2>Sign Up</h2></div>
        <div class="inputarea" align="center" id="loginbg">
          <form action="/signupresult" method="POST" enctype="multipart/form-data" align="center">
            <input name="signupemail" type="email" class="loginemail" placeholder="EMAIL" required><br>
            <input name="signuppassword" type="password" class="loginpassword" placeholder="PASSWORD" id="password1" required><br>
            <input name="signuppasswordr" type="password" class="loginpassword" placeholder="PASSWORD CONFIRMATION" id="password2" required><br>
            <input type="file" name="pic" accept="image/*" required><br>
            <button type="submit" class="loginbutton" id="submitButton">Submit</button>
            <p id="status"></p>
          </form>
    <script>
        document.getElementById("submitButton").disabled = true;
        $(document).ready(function(){
          $("#password2").keyup(validate);
        });
        function validate(){
          var password1=$("#password1").val();
          var password2=$("#password2").val();
          if(password1!=password2){$("#status").text("Password do not match.");document.getElementById("submitButton").disabled = true;}
          else{$("#status").text("Seems good.");document.getElementById("submitButton").disabled = false;}
        }
    </script>

          <!--<div class="Username">
            <p>Username</p>
          </div>
          <div class="Password">
            <p>Password</p>
          </div>
          <button class="loginbutton" onclick="alert('LOGGING IN... PLEASE WAIT')">Login</button>
        </div>-->
        <div class="facebook">
          <p>-------OR------</p>
          <a href="/">Already have an account? Sign in.</a>
        </div>
          <div class="copyright">
            <p>© 2017 Jack Zhang</p>
          </div>
        </div>
      </div>
      <div class="whitebackground" id="wbg">
        <div class="section1" align="center">
          <!--<div class="section1h">-->
            <h2>Our story</h2>
          <!--</div>-->
          </div>
          <div class="section1img">
            <img src="https://static.pexels.com/photos/273204/pexels-photo-273204.jpeg">
          </div>
          <!--<div class="section1t">-->
            <p align="center">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In faucibus lobortis tellus, dapibus viverra risus maximus eget. Maecenas lobortis, felis eget malesuada facilisis, justo nisl venenatis nulla, in rhoncus elit arcu lobortis nisi. Donec vestibulum nisl ante, ut varius erat accumsan vitae. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu dictum dolor. Nullam finibus sem pulvinar.Aenean consectetur posuere ante, vel gravida nulla sagittis eu. Vivamus porta malesuada dolor, ac fermentum massa euismod a. Morbi posuere nulla ac libero dapibus vehicula. Donec scelerisque, purus a fringilla euismod, leo metus mattis dolor, a porta eros nibh non libero. In hac habitasse platea dictumst. In consectetur blandit tellus, et pretium velit placerat eu. Aenean gravida fermentum ipsum eget cursus. Sed ullamcorper mattis ultrices. Integer luctus eget lectus sed volutpat. Suspendisse erat urna, efficitur sit amet magna non, fringilla molestie velit. Duis quis neque nec purus viverra interdum. Fusce iaculis diam sed luctus gravida. Curabitur consequat feugiat iaculis.

            Nulla dictum in ante at aliquet. Quisque at facilisis metus. Nunc tempus, libero in euismod commodo, mi quam consectetur diam, non hendrerit erat lacus eget mi. Pellentesque condimentum libero sed ullamcorper pellentesque. Proin luctus quam varius tincidunt consectetur. Sed aliquet, ligula nec pretium aliquam, est neque euismod felis, in feugiat leo urna in mauris. Phasellus dapibus, arcu ac faucibus lobortis, lectus augue viverra risus, non consectetur leo velit tincidunt tellus. Suspendisse pretium diam blandit eleifend accumsan. Aliquam posuere diam sed est vulputate ultrices. Etiam orci nunc, viverra at turpis non, mattis vehicula mauris. Fusce consequat pellentesque porta.

            Nunc molestie tincidunt tincidunt. Donec neque mauris, facilisis vel hendrerit non, laoreet in nulla. Cras lacus enim, viverra ut purus non, dapibus molestie elit. Aenean ac quam vel velit feugiat consequat sit amet vel elit. Praesent id consectetur eros. Curabitur in aliquam eros. Cras at metus id mi accumsan viverra in eget magna. Morbi ac interdum ipsum. Maecenas dictum sagittis tortor, posuere sollicitudin urna rhoncus vel. Vestibulum cursus tincidunt ultricies. Duis venenatis non nibh vel convallis. Suspendisse libero erat, volutpat eu massa lacinia, imperdiet malesuada mauris.

            Donec malesuada, augue non sodales iaculis, odio urna maximus lectus, nec aliquam ipsum elit vel arcu. Fusce suscipit neque in ligula posuere malesuada. Sed id aliquet enim. Cras fringilla ex erat, vitae sodales ligula faucibus vel. Integer elit velit, cursus vitae orci eu, dignissim ultrices velit. Nullam sed ligula enim. Donec lacus, nec lacinia quam viverra id. Nullam non dui aliquet, blandit mauris sit amet, posuere nibh..</p>
          <!--</div>-->


        </div>
      </div>
    </div>

  </body>