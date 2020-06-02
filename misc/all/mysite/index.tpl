<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <!--<meta http-equip="refresh" content="2" url=index.tpl>-->
    <!--<meta http-equiv="refresh" content="2;url=/"/>-->
    <title>Jack Zhang's Awesome Website</title>
    <link href="https://fonts.googleapis.com/css?family=Oswald|Raleway|Titillium+Web" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="static/css/index.css" rel="stylesheet" type="text/css" />
    <link rel="icon" href="https://lh3.googleusercontent.com/-7gCiGi8Ad4Y/UjUouoUwiOI/AAAAAAAAAAs/kVzfO0ooh8chhOFRA0FCmiTyT660MBG4gCEwYBhgL/w280-h280-p/952ee778-137e-411d-b237-42fe82deaae8">
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
          <li><button class="libutton" onclick="location.href='/signup'">Signup</button></li>
        </ol>
      </div>
    </div>
    <div class="content">
      <div class="login" align="center">
        <div class="loginheading"><h2>Login</h2></div>
        <div class="inputarea" id="loginbg">
          <form action="/login" method="POST">
            <input name="loginemail" type="email" class="loginemail" placeholder="EMAIL" required><br>
            <input name="loginpassword" type="password" class="loginpassword" placeholder="PASSWORD" required><br>
            <button type="submit" class="loginbutton">Submit</button>
          </form>


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
          <a href="/signup">Sign up a new account</a>
        </div>
          <div class="copyright">
            <p>© 2017 - 2019 Jack Zhang</p>
            <p>Login to see my photos</p>
          </div>
        </div>
      </div>
      <div class="whitebackground" id="wbg">
        <div class="section1" align="center">
          <!--<div class="section1h">-->
            <h2>Jack Jingyu Zhang</h2>
          <!--</div>-->
          </div>
          <div class="section1img">
            <img src="https://drive.google.com/uc?id=16RD_Q__5npy5edsA3mHp1gkjfU11XeEQ">
          </div>
            <p align="center">
            Hi to the respectful audience of my personal website! My name is Jack. In Pinyin, it’s Jingyu Zhang. I was born and raised in Beijing and currently a high school senior. This website serves as my personal website that reveals my interests and aspirations.
            </p>
            <p align="center">
            Born in a family composed of 50% teachers and 50% engineers, I’ve been natural at learning and solving problems. Maths and sciences are not my nightmare, but things that keeps me awake at night. As a result of genuine passion for academics and curiosity for this amazing world, I self-studied the idea of calculus (not directly studying textbooks) in 9th grade and proved the Newton-Leibniz Formula by induction. Moreover, driven by the desire to mater this discipline, Eric, Tom, and I - the academic squad - stood still for hours arguing about natural logarithm base and derivatives every day by the intersection at which we go separate ways. Those are just two of the countless examples that showcase my passion for learning, not to mention I’m a self-made cars expert, a Duolinguo-taught Español speaker, and a homemade chemistry lab researcher.
            </p>
            <p align="center">
            In my free time, I like to leisurely hang out with my friend. Pool gaming and bowling are our favorite. As a natural detective, I also like to be leader of our squad to solve the puzzles in Escape the Room. When I am alone, I become a music enthusiast. Trumpet playing is a must. Besides Jazz, I love Electronic music. Being an avid fan of the Chainsmokers and Martin Garrix, I try my best to open up FL studio and do some DJing and remixing to create my own music. If I still have time, I will try to satisfy my thirst for knowledge as much as possible, whether it is reading books from the Master Algorithm to the Lover, practicing Spanish with Jet Li, the wanderer cat of the yard who never judges my pronunciation, or tweaking website like what I am doing right now.
            </p>
            <p align="center">
            I am a freshman at the Johns Hopkins University, and you might wonder why a Chinese boy who was born and raised in China wants to study in the US. For me, it is not only an adventure for myself, but also a completion of the journey of exploration for my family. My grandparents were born in a small remote village in Hebei province. When they were my age, they saw the development of northeastern China and the opportunities that comes with it. A courageous decision brought them to Harbin, where their life has improved and my dad was born. My dad, although born in a much better condition compared to my grandparents, wasn’t satisfied with it. He used his college time to be in Xian and eventually came to Beijing with my mom. Now at the same age, I am on the verge of my lifelong important decision. I want to see the WHOLE world. Therefore, the answer seems obvious. I will go out and strive for a place internationally to expand the existence of me and my family in the world.
          </p>
        </div>
      </div>
    </div>

  </body>
</html>