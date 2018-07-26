<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  
  
  
  <link rel="stylesheet" href="css/party.css">
      
      <style>
        #bjp{
            background: url(source/bjp.jpeg);
            height: 180px;
            width: 275px;
            border: none;
            color: rgba(0,0,0,0)
        }
        #cong{
            background: url(source/cong.png);
            height: 180px;
            width: 275px;
            border: none;
            color: rgba(0,0,0,0)
            
        }
      </style>
  
</head>

<body>
  <body class="align">
  <div class="grid">

      <form action="controler.jsp" method="post">

      <header class="login__header">
        <h3 class="login__title">parties</h3>
      </header>

      <div class="login__body">

        <div class="form__field">
            <input type="submit" value="bjp" name="bjp"id="bjp">
        </div>
        <br><br><br>
        <div class="form__field">
            <input type="submit" value="cong" name="cong" id="cong">
        </div>

      </div>

    </form>
      <%
       String aadhar = (String)session.getAttribute("aadhar");
       //out.println(aadhar);
      session.setAttribute("aadhar",aadhar);
      
      String voterid = (String)session.getAttribute("voterid");
       //out.println(proofname);
      session.setAttribute("voterid",voterid);
      
      %>

</body>
  
  
</body>
</html>
