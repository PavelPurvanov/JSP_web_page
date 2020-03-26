<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.User"%>

    <html>
    
<head>
	<title>Upr 5</title>
	<link rel="stylesheet" href="style/main.css">
</head>

<body>
	<header class="header"></header>
	
	<jsp:useBean id = "users" class = "model.User" scope="session">
	
	<jsp:setProperty name = "users" property = "object"/>
	

    </jsp:useBean>
	
	<main class="main">
		<div class="shell">
			<div class="profile">
				<img class="profile-image" src="images/user.jpg" />

				<div class="profile-info">
					<h2 class="heading">Профилна информация</h2>
					<span class="text">
					
					<%
						User user1 = (User)request.getAttribute("object");
						out.print("Име: " + user1.getFirstName());			
					%>
					
					</span>
					<span class="text">
						
						<%
						User user2 = (User)request.getAttribute("object");
						out.print("Работа: " + user2.getJob());			
						%>

					</span>
					<span class="text">Описание: </span>
					<span class="text profile-text">
					Студент в Технически Университет- Варна. Изучава Софтуерни и Интернет технологии. Има познания в следните езици за 
					програмиране: C++, C#, JAVA, Python, HTML, CSS. Владее английски език на техническо ниво.
					</span>
				</div>
			</div>
			
			<h1 class="heading centered">Умения</h1>
			<div class="info-box">
				<div class="pro-skills">
					<h2 class="heading centered">Професионални</h2>
						<span class="text">JAVA</span>
					 	<div class="bar bar-java"></div>
					 	<span class="text">HTML</span>
					 	<div class="bar bar-html"></div>
					 	<span class="text">CSS</span>
					 	<div class="bar bar-css"></div>
					 	<span class="text">JavaScript</span>
					 	<div class="bar bar-js"></div>
				</div>
				<div class="pers-skills">
					<h2 class="heading centered">Личностни</h2>
						<span class="text">Комуникативност</span>
					 	<div class="bar bar-commun"></div>
					 	<span class="text">Екиптна работа</span>
					 	<div class="bar bar-team"></div>
					 	<span class="text">Креативност</span>
					 	<div class="bar bar-create"></div>
				</div>
			</div>

			<h1 class="heading centered contact-heading">Конакти</h1>
			<div class="info-box">
				<div class="contact-box">
					<span class="text">Имейл</span>
                    <a href="abv.bg" class="contact-text">
                    <%
						User user3 = (User)request.getAttribute("object");
						out.print(user3.getEmail());			
						%>
                    </a>
				</div>

				<div class="contact-box">
					<span class="text">Град</span>
					<span class="contact-text">
						<%
						User user4 = (User)request.getAttribute("object");
						out.print(user4.getCity());			
						%>
						</span>
				</div>

				<div class="contact-box">
					<span class="text">Телефон</span>
					<span class="contact-text">
						<%
						User user5 = (User)request.getAttribute("object");
						out.print(user5.getPhone());			
						%>	
					</span>
				</div>

				<div class="contact-box">
					<span class="text">Улица</span>
					<span class="contact-text">
					<%
						User user6 = (User)request.getAttribute("object");
						out.print(user6.getStreet());			
						%>
						</span>
				</div>
			</div>
		</div>
	</main>
	
	<footer class="footer"></footer>
</body>

</html>