<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link href="static/css/style.css" rel="stylesheet">
<link href="static/css/slide_style.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
    <meta charset="UTF-8">
    <title>Index</title>
</head>
<body background="resources/images/beatles2.jpg" >
<nav class="navbar navbar-expand-lg navbar-light bg-dark nav-div">
    <a class="navbar-brand" href="/welcome"><img src="resources/images/logo.jpg" width="150" height="70"/> </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/welcome">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/login">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/slideShow">Slideshow</a>
            </li>



        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>
<c:choose>
    <c:when test="${mode=='MODE_HOME1'}">
        <div class="container text-center">
            <div class="jumbotron jumb-div" >
                <h1 class="display-4">The Beatles</h1>
                <p class="lead">This is a fan page of The Beatles band , An english band which was formed in 1960 in Liverpool</p>
                <hr class="my-4">
            </div>
        </div>
        <div class="container text-center">
            <div class="alert-success">
                <h4>Hey Jude-The Beatles</h4>
            </div>
        </div>
        <div class="container">
            <iframe width="1000"
                    height="500"
                    src="https://www.youtube.com/embed/7qMls5yxP1w"
                    frameborder="0"
                    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen>
            </iframe>
            <h5 class="headline">Lyrics</h5>
            <p style="text-align: right">
            <pre >
            Hey Jude, don't make it bad
            Take a sad song and make it better
            Remember to let her into your heart
            Then you can start to make it better<span id="dots">...</span><span id="more">
            Hey Jude, don't be afraid
            You were made to go out and get her
            The minute you let her under your skin
            Then you begin to make it better
            And anytime you feel the pain
            Hey Jude, refrain
            Don't carry the world upon your shoulders
            For well you know that it's a fool
            Who plays it cool
            By making his world a little colder
            Na-na-na, na, na
            Na-na-na, na
            Hey Jude, don't let me down
            You have found her, now go and get her (let it out and let it in)
            Remember to let her into your heart (hey Jude)
            Then you can start to make it better
            So let it out and let it in
            Hey Jude, begin
            You're waiting for someone to perform with
            And don't you know that it's just you
            Hey Jude, you'll do
            The movement you need is on your shoulder
            Na-na-na, na, na
            Na-na-na, na, yeah
            Hey Jude, don't make it bad
            Take a sad song and make it better
            Remember to let her under your skin
            Then you'll begin to make it better
            Better better better better better, ah!
            Na, na, na, na-na-na na (yeah! Yeah, yeah, yeah, yeah, yeah, yeah)
            Na-na-na na, hey Jude
            Na, na, na, na-na-na na
            Na-na-na na, hey Jude
            Na, na, na, na-na-na na
            Na-na-na na, hey Jude
            Na, na, na, na-na-na na
            Na-na-na na, hey Jude (Jude Jude, Judy Judy Judy Judy, ow wow!)
            Na, na, na, na-na-na na (my, my, my)
            Na-na-na na, hey Jude (Jude, Jude, Jude, Jude, Jude)
            Na, na, na, na-na-na na (yeah, yeah, yeah)
            Na-na-na na, hey Jude (yeah, you know you can make it, Jude, Jude, you're not gonna break it)
            Na, na, na, na-na-na na (don't make it bad, Jude, take a sad song and make it better)
            Na-na-na na, hey Jude (oh Jude, Jude, hey Jude, wa!)
            Na, na, na, na-na-na na (oh Jude)
            Na-na-na na, hey Jude (hey, hey, hey, hey)
            Na, na, na, na-na-na na (hey, hey)
            Na-na-na na, hey Jude (now, Jude, Jude, Jude, Jude, Jude)
            Na, na, na, na-na-na na (Jude, yeah, yeah, yeah, yeah)
            Na-na-na na, hey Jude
            Na, na, na, na-na-na na
            Na-na-na na, hey Jude (na-na-na-na-na-na-na-na-na)
            Na, na, na, na-na-na na
            Na-na-na na, hey Jude
            Na, na, na, na-na-na na
            Na-na-na na, hey Jude
            Na, na, na, na-na-na na (yeah, make it, Jude)
            Na-na-na na, hey Jude (yeah yeah yeah yeah yeah! Yeah! Yeah! Yeah! Yeah!)
            Na, na, na, na-na-na na (yeah, yeah yeah, yeah! Yeah! Yeah!)
            Na-na-na na, hey Jude
            Na, na, na, na-na-na na
            Na-na-na na, hey Jude
            Na, na, na, na-na-na na
            Na-na-na na, hey Jude
            Na, na, na, na-na-na na
            Na-na-na na, hey Jude</span><button onclick="myFunction()" id="btnmore">Read more</button>
            </pre>

            </p>
        </div>
        <div class="container text-center">
            <div class="alert-success">
                <h4>Happy Together-The Beatles</h4>
            </div>
        </div>
        <div class="container ">
            <iframe width="1000"
                    height="500"
                    src="https://www.youtube.com/embed/LhhcHMkmyF8"
                    frameborder="0"
                    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen>
            </iframe>
            <h5 class="headline">Lyrics</h5>
            <p style="text-align: right">
            <pre >
            Imagine me and you, I do
            I think about you day and night, it's only right
            To think about the girl you love and hold her tight
            So happy together<span id="dots">...</span><span id="more">
            If I should call you up, invest a dime
            And you say you belong to me and ease my mind
            Imagine how the world could be, so very fine
            So happy together
            I can't see me lovin' nobody but you
            For all my life
            When you're with me, baby the skies'll be blue
            For all my life
            Me and you and you and me
            No matter how they toss the dice, it had to be
            The only one for me is you, and you for me
            So happy together
            I can't see me lovin' nobody but you
            For all my life
            When you're with me, baby the skies'll be blue
            For all my life
            Me and you and you and me
            No matter how they toss the dice, it had to be
            The only one for me is you, and you for …</span><button onclick="myFunction()" id="btnmore">Read more</button>
            </pre>

            </p>
        </div>
        <div class="container text-center">
            <div class="alert-success">
                <h4>Let It Be-The Beatles</h4>
            </div>
        </div>
        <div class="container">
            <iframe width="1000"
                    height="500"
                    src="https://www.youtube.com/embed/6d5ST3tbPIU"
                    frameborder="0"
                    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen
            >
            </iframe>
            <h5 class="headline">Lyrics</h5>
            <p style="text-align: right">
            <pre >
            When I find myself in times of trouble, Mother Mary comes to me
            Speaking words of wisdom, let it be
            And in my hour of darkness she is standing right in front of me
            Speaking words of wisdom, let it be<span id="dots">...</span><span id="more">
            Let it be, let it be, let it be, let it be
            Whisper words of wisdom, let it be
            And when the broken-hearted people living in the world agree
            There will be an answer, let it be
            For though they may be parted, there is still a chance that they will see
            There will be an answer, let it be
            Let it be, let it be, let it be, let it be
            Yeah, there will be an answer, let it be
            Let it be, let it be, let it be, let it be
            Whisper words of wisdom, let it be
            Let it be, let it be, let it be, yeah, let it be
            Whisper words of wisdom, let it be
            And when the night is cloudy there is still a light that shines on me
            Shine until tomorrow, let it be
            I wake up to the sound of music, Mother Mary comes to me
            Speaking words of wisdom, let it be
            Let it be, let it be, let it be, yeah, let it be
            There will be an answer, let it be
            Let it be, let it be, let it be, yeah, let it be
            There will be an answer, let it be
            Let it be, let it be, let it be, yeah, let it be
            Whisper words of wisdom, let it be</span><button onclick="myFunction()" id="btnmore">Read more</button>
            </pre>

            </p>
        </div>


        </div>
    </c:when>
    <c:when test="${mode=='MODE_SLIDESHOW'}">
        <!-- Slideshow container -->
        <div class="slideshow-container">

            <!-- Full-width images with number and caption text -->
            <div class="mySlides fade">
                <div class="numbertext">1 / 3</div>
                <img src="resources/images/image1.jpg" style="width:100%;height:50%">
                <div class="text">One</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">2 / 3</div>
                <img src="resources/images/image2.jpg" style="width:100%;height:50%">
                <div class="text"> Two</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">3 / 3</div>
                <img src="resources/images/image3.jpeg" style="width:100%;height:50%">
                <div class="text"> Three</div>
            </div>
            <div class="mySlides fade">
                <div class="numbertext">3 / 3</div>
                <img src="resources/images/image4.jpeg" style="width:100%;height:50%">
                <div class="text">Four</div>
            </div>
            <div class="mySlides fade">
                <div class="numbertext">3 / 3</div>
                <img src="resources/images/image5.jpg" style="width:100%;height:50%">
                <div class="text">Five</div>
            </div>

            <!-- Next and previous buttons -->
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <br>

        <!-- The dots/circles -->
        <div style="text-align:center">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
            <span class="dot" onclick="currentSlide(4)"></span>
            <span class="dot" onclick="currentSlide(5)"></span>
        </div>
    </c:when>
</c:choose>
<script>
    function myFunction() {
        var dots=document.getElementById("dots");
        var more=document.getElementById("more");
        var btnmore=document.getElementById("btnmore");

        if(dots.style.display=="none"){
            more.style.display="none";
            btnmore.innerHTML="Read more";
            dots.style.display="inline";
        }else{
            more.style.display="inline";
            btnmore.innerHTML="Read less";
            dots.style.display="none";
        }


    }
</script>
<script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {slideIndex = 1}
        slides[slideIndex-1].style.display = "block";
        setTimeout(showSlides, 3000); // Change image every 2 seconds
    }

</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
</body>
</html>