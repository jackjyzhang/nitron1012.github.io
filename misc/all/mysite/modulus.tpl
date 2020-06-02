<!DOCTYPE html>
<html>
  <head>
    <title>ISSN Tool</title>
    <style>
        .box{
            width:100%;
            height:25px;
            border:2px solid blue;
            padding:20px;
        }
    </style>
  </head>
  <body>
    <div class="box" align="center">
        <form action="/modulus" method="POST">
          <input type="number" name="issn" placeholder="7 digits ISSN" max="9999999" required="">
          <button type="submit">Submit</button>
        </form>
    </div>
  </body>
</html>