<%-- 
    Document   : update
    Created on : Jul 27, 2019, 1:47:55 PM
    Author     : User
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title> sign_up </title>
	
	<link rel="stylesheet" type="text/css" href="style.css" media="all" />
        
        
        <script type="text/javascript">

            function validation() {

                var bloodgroup = document.requestform.blood_group.value;
                var Email = document.requestform.email.value;
                var Phone = document.requestform.phnNum.value;
                var address = document.requestform.HAddress.value;

                if (bloodgroup == "") {
                    alert("Please Enter Blood Group");
                    document.requestform.blood_group.focus();
                    return false;
                } else if (Email == "") {
                    alert("Please Enter Email");
                    document.requestform.email.focus();
                    return false;
                } else if (Phone == "") {
                    alert("Please Enter Phone");
                    document.requestform.phone.focus();
                    return false;
                } else if (address == "") {
                    alert("Please Enter Address");
                    document.requestform.HAddress.focus();
                    return false;
                } else if (address != "" && bloodgroup == "" && bloodgroup == "" && bloodgroup == "") {
                    alert("You miss any one input");
                    document.requestform.HAddress.focus();
                    return false;
                }

            }


            function validation1() {

                var search = document.searchform.search.value;

                if (search != "A+" && search != "A-" && search != "B+" && search != "B-" && search != "AB+" && search != "AB-" && search != "O+" && search != "O-" &&
                        search != "a+" && search != "a-" && search != "b+" && search != "b-" && search != "ab+" && search != "ab-" && search != "o+" && search != "o-") {
                    alert("Please Enter Blood Group");
                    document.searchform.search.focus();
                    return false;
                }
            }


        </script>
	
</head>
<body>
		
		
		<!--Header part-->
	
	<div class="headerpart">
	
		 <div class="container">
		 
		 <div class="headerleftpart">
				<p> <strong> Blood for Life </strong></p>
				
		 </div>
		 
		 <div class="headerrightpart">
				
				<form name="searchform"  action="search.jsp" method="post">
                        <input type="hidden" name="searchpage" value="search">
                        <input  id="a1" type="text" name="search" placeholder="Search for Blood.."/>
                        <button  id="a2" onclick="return validation1();" value="searchbutton"> Search  </button>

                    </form>	
		 </div>
		 </div>
	</div>
	
	
	
	<!--Menuber-->
	
	<div class="menubar">
	<div class="container">
		
		<div class="menubarpart1"></div>
		
		<div class="menubarpart2">
			<ul>
			<li><a  href="index.jsp">  Home </a></li>
                        <li><a href="about.jsp"> About</a></li>
                            <%
                                String emaildata = (String) session.getAttribute("userEmail");
                                //String personname = (String) session.getAttribute("personname");
                                if (emaildata != null) {
                            %>
                        <li><a href="feedback.jsp"> Feedback </a></li>
                        <li><a href="prof.jsp">Profile</a></li>                            
                            <%
                            } else {
                            %>
                        <li><a href="sign_up.jsp"> Sign Up </a></li>
                        <li><a href="log_in.jsp"> Log In </a>
                            <%
                                }
                            %>
                        <li><a href="contacts.jsp"> Contacts </a></li>
			
			</ul>
		</div>
		
		
		
		<div class="menubarpart3"></div>
			
		</div>
	</div>
	
	
	<!--Imasgeber-->
	
	
	
	
	<!-- Create Profile-->
	
	
	<div class="login">
		<div class="container">
		
		<div class="loginpart">
		
                    <h1 class="createtext"> Update Your Profile </h1> 
                    <center>
                    <%
                       try{
                           String editerror = session.getAttribute("editerror").toString();
                           out.print(editerror);
                           session.removeAttribute("editerror");
                       }catch(Exception e){}
                   
                   %>
                   </center>
                    <br><br>
                        <form action="update1.jsp" method="post">
			 <input type="hidden" name="update1" value="Update1">
                         
			<label for="l3"> <h3> Enter Your Email </h3> </label>
			<input id="l3" type="email" name="email" placeholder="@gmail.com" /><br />
                        
			<label for="l4"><h3>New Phone Number</h3></label>
			<input id="l4" type="tel" name="phone" placeholder="+880"/><br />
                        
			<label for="l3"> <h3> New Address </h3> </label>
			<input id="l3" type="text" name="address" placeholder="Address" /><br />
			
                        <label for="15"><h3>Last Date of Blood Donate</h3></label>
			<input id="15" type="date" name="lastdate" placeholder="calendar"/><br /> <br /><br />
                        <center>
                        <button id="logout" >Submit</button>
			</center>

			</form>
				
				
			</div>
			</div>
		</div>


	
	
	<!--Downber-->

        <div class="downber">
            <div class="container">


                <div class="downberpart1">
                    <h2> Search Blood Donor </h2>

                    <a href="donor_lista1.jsp"><input id="sbd" type="button" value="A+"></a> 
                    <a href="donor_lista2.jsp"><input id="sbd" type="button" value="A-"></a>  <br />
                    <a href="donor_listb1.jsp"><input id="sbd" type="button" value="B+"></a> 
                    <a href="donor_listb2.jsp"><input id="sbd" type="button" value="B-"></a> <br />
                    <a href="donor_listab1.jsp"><input id="sbd" type="button" value="AB+"></a> 
                    <a href="donor_listab2.jsp"><input id="sbd" type="button" value="AB-"></a> <br />
                    <a href="donor_listo1.jsp"><input id="sbd" type="button" value="O+"></a> 
                    <a href="donor_listo2.jsp"><input id="sbd" type="button" value="O-"></a> 

                </div>

                <div class="downberpart2">
                    <h2>Request List</h2>

                    <center>
                        <table border="3">
                            <tr style="background-color: blueviolet; color:aliceblue; font-weight: bold;">

                                <td>Blood Group</td>
                                <td>Phone</td>
                                <td>Email</td>
                                <td>Hospital Address</td>
                            </tr>



                            <%  Connection conn1 = null;
                                Statement st1 = null;
                                ResultSet rs1 = null;

                                try {

                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donation?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");

                                    st1 = conn1.createStatement();

                                    String sql100 = "SELECT bloodGroup,email,phnNum,HAdress from customer";
                                    rs1 = st1.executeQuery(sql100);

                                    while (rs1.next()) {
                            %>

                            <tr>
                                <td><%= rs1.getString(1)%></td>
                                <td><%= rs1.getString(2)%></td>
                                <td><%= rs1.getString(3)%></td> 
                                <td><%= rs1.getString(4)%></td> 

                            </tr>    

                            <%
                                    }

                                } catch (Exception ex) {
                                }

                            %>

                        </table>
                        <br><br><br>
                        <a href="request_list.jsp"> <button id="r6"type="submit"> See More </button> </a>

                    </center>
                </div>



                <div class="downberpart3">
                    <h2>Request For Blood</h2>



                    <form name="requestform" action="process.jsp" method="post">
                        <input type="hidden" name="page" value="Share"> 
                        <label for="r1"> <h3> Blood Group </h3></label>

                        <select name="blood_group" id="r1">
                            <option value=""> Select Blood Group </option>
                            <option value="A+"> A+ </option>
                            <option value="A-"> A- </option>
                            <option value="B+"> B+ </option>
                            <option value="B-"> B- </option>
                            <option value="AB+"> AB+ </option>
                            <option value="AB-"> AB- </option>
                            <option value="O+"> O+ </option>
                            <option value="O-"> O- </option>

                        </select>

                        <label for="r2"> <h3> Email </h3> </label>
                        <input id="r2" type="Email" name="email" placeholder="@gmail.com" />

                        <label for="r3"> <h3> Phone Number </h3> </label>
                        <input id="r3" type="tel" name="phnNum" placeholder="+880"/>

                        <label for="r5"> <h3> Hospital Address </h3></label>
                        <input id="r5" type="text" name="HAddress" placeholder="Address" />
                        <br><br><br>

                        <button id="r6" onclick="return validation();" value="request" type="submit"> Share </button>

                    </form>
                </div>

            </div>
        </div>

        <div class="fixedicon clear">
            <a href="https://www.facebook.com"><img src="https://i.imgur.com/b5rgxIf.png" title="source: imgur.com" alt="Facebook"/></a>
            <a href="https://plus.google.com/"><img src="https://i.imgur.com/YcOZUlz.png" title="source: imgur.com"  alt="Google plus"/></a>
            <a href="https://www.instagram.com/?hl=en"><img src="https://i.imgur.com/It3rWle.jpg" title="source: imgur.com"  alt="instagram"/></a>
            <a href="https://www.linkedin.com"><img src="https://i.imgur.com/cJRj1kK.png" title="source: imgur.com"  alt="inkedin"/></a>

        </div>
</body>
</html>
			
			
