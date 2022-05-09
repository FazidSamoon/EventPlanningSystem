<%@ page import="com.oeps.onlineeventplanningsystem.model.Blog" %>
<%@ page import="java.util.List" %>
<%@ page import="com.oeps.onlineeventplanningsystem.model.User" %>

<!DOCTYPE html>
<html>
    <title></title>
    <script src="https://cdn.tailwindcss.com"></script>

<style>
    body {
        background-image: url("https://images.unsplash.com/photo-1619863182792-ff9b20a5f886?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Ymx1ZSUyMGJhY2tncm91bmRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60");
        background-repeat: no-repeat;
        background-size: cover;
    }

    #style1{
        padding-left: 50px;
        padding-top: 10px;
        padding-bottom: 10px;
        border-radius: 10px;
    }

    #style2{
        padding: 5px;
        display: inline-block;
        float: right;
    }

    #style3{
        float: right;
        margin-left: 10px;
        margin-right: 10px;
    }
    #style4{
        float: right;
        margin-left: 10px;
        margin-right: 10px;
    }
    #style5{
        margin: 0px;
    }
    * {box-sizing: border-box;}
    .mySlides {display: none;}
    img {vertical-align: middle;}

    /* Slideshow container */
    .slideshow-container {
        max-width: 1000px;
        position: relative;
        margin: auto;
    }

    /* Caption text */
    .text {
        color: #f2f2f2;
        font-size: 15px;
        padding: 8px 12px;
        position: absolute;
        bottom: 8px;
        width: 100%;
        text-align: center;
    }

    /* Number text (1/3 etc) */
    .numbertext {
        color: #f2f2f2;
        font-size: 12px;
        padding: 8px 12px;
        position: absolute;
        top: 0;
    }

    /* The dots/bullets/indicators */
    .dot {
        height: 15px;
        width: 15px;
        margin: 0 2px;
        background-color: #bbb;
        border-radius: 50%;
        display: inline-block;
        transition: background-color 0.6s ease;
    }

    .active {
        background-color: #717171;
    }

    /* Fading animation */
    .fade {
        animation-name: fade;
        animation-duration: 1.5s;
    }

    @keyframes fade {
        from {opacity: .4}
        to {opacity: 1}
    }

    /* On smaller screens, decrease text size */
    @media only screen and (max-width: 300px) {
        .text {font-size: 11px}
    }



</style>


</head>

<body>

        <div class="bg-red">
            <%--    header--%>
            <%@ include file="./components/header.jsp" %>
        </div>
        <br>
        <br>

      <div class="w-full  p-12">

          <div class="w-full px-4">
              <div class="text-center mx-auto mb-12 lg:mb-20 max-w-[510px]">

                  <h2
                          class="
                  font-bold
                  text-3xl
                  sm:text-4xl
                  md:text-[40px]
                  text-gray-900
                  mb-4
                  "
                  >
                      Our Latest Blogs
                  </h2>
                  <p class="text-base text-body-color">
                      There are many variations of passages of Lorem Ipsum available
                      but the majority have suffered alteration in some form.
                  </p>
              </div>
          </div>






          <div class="slideshow-container">

              <div class="mySlides fade">
                  <div class="numbertext">1 / 3</div>
                  <img src="https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" style="width:100% ; height:400px">
                  <div class="text">Caption Text</div>
              </div>

              <div class="mySlides fade">
                  <div class="numbertext">2 / 3</div>
                  <img src="https://images.unsplash.com/photo-1530103862676-de8c9debad1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" style="width:100%  ; height:400px">
                  <div class="text">Caption Two</div>
              </div>

              <div class="mySlides fade">
                  <div class="numbertext">3 / 3</div>
                  <img src="https://images.unsplash.com/photo-1527529482837-4698179dc6ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" style="width:100%  ; height:400px">
                  <div class="text">Caption Three</div>
              </div>

          </div>
          <br>

          <div style="text-align:center">
              <span class="dot"></span>
              <span class="dot"></span>
              <span class="dot"></span>
          </div>

          <script>
              let slideIndex = 0;
              showSlides();

              function showSlides() {
                  let i;
                  let slides = document.getElementsByClassName("mySlides");
                  let dots = document.getElementsByClassName("dot");
                  for (i = 0; i < slides.length; i++) {
                      slides[i].style.display = "none";
                  }
                  slideIndex++;
                  if (slideIndex > slides.length) {slideIndex = 1}
                  for (i = 0; i < dots.length; i++) {
                      dots[i].className = dots[i].className.replace(" active", "");
                  }
                  slides[slideIndex-1].style.display = "block";
                  dots[slideIndex-1].className += " active";
                  setTimeout(showSlides, 3000); // Change image every 2 seconds
              }
          </script>




          <div id="style2">

              <a href = "addBlog">
                  <button id="style3" class="flex-shrink-0 px-4 py-2 text-base font-semibold text-white bg-blue-700 rounded-lg shadow-md hover:bg-green-700 focus:outline-none focus:ring-2 focus:ring-purple-500 focus:ring-offset-2 focus:ring-offset-purple-200" type="submit">
                      Post your Blog
                  </button>
              </a>
              <%
                  if (session.getAttribute("userSession") != null) {
              %>

                  <%
                      if (((User)session.getAttribute("userSession")).getRole().equals("ADMIN")) {
                  %>
                      <a href = "manageBlogs">
                          <button id="style4" class="flex-shrink-0 px-4 py-2 text-base font-semibold text-white bg-blue-700 rounded-lg shadow-md hover:bg-green-700 focus:outline-none focus:ring-2 focus:ring-purple-500 focus:ring-offset-2 focus:ring-offset-purple-200" type="submit">
                              Manage all Blogs
                          </button>
                      </a>
                  <%
                      }
                  %>
              <%
                  }
              %>

          </div>
        </div>





        <!-- component -->
        <div class="w-full my-12">


            <% for(Blog blogn : (List<Blog>)
                    request.getAttribute("blogM")) {%>

            <div class="max-w-5xl mx-auto px-6 sm:px-6 lg:px-8">
                <div class="bg-white w-full shadow rounded p-8">

                    <div class="grid grid-cols-1 gap-8 mt-6">
                        <div class="flex flex-col md:flex-row">
                            <div class="w-full md:w-6/12 rounded overflow-hidden">
                                <img class="object w-full h-auto" src="<%=blogn.getBlogImage()%>" alt="">
                            </div>
                            <div class="w-full md:w-6/12 mt-4 md:mt-0 md:ml-4">
                                <h1 class="text-xl font-bold leading-tight text-gray-800"><%= blogn.getBlogTitle()%></h1>
                                <h2 class="leading-normal font-semibold pt-2">Author: <%=blogn.getAuthor()%></h2>
                                <p class="leading-normal pt-2"><%=blogn.getBlogDescription()%></p>
                                <a class="leading-normal pt-2 hover:underline text-blue-600" href="readBlog/<%=blogn.getBlogID()%>">Read more...</a>
                                <br>
                                <br>

                                <%
                                    if (session.getAttribute("userSession") != null) {
                                %>

                                        <%
                                            if(blogn.getUserName().equals(((User)session.getAttribute("userSession")).getUsername())){
                                        %>

                                <div style="float: left">
                                    <a href="updateBlog/<%=blogn.getBlogID()%>">
                                        <button class="p-1 pl-5 pr-5 bg-red-400 text-gray-100 text-s rounded-lg focus:border-4 border-red-500 hover:bg-red-700">Edit</button>
                                    </a>
                                    <a href="deleteBlog/<%=blogn.getBlogID()%>">
                                        <button class="p-1 pl-5 pr-5 bg-green-400 text-gray-100 text-s rounded-lg focus:border-4 border-green-600 hover:bg-green-700">Delete</button>
                                    </a>
                                </div>

                                <%
                                    }
                                %>


                                <%}%>

                            </div>

                        </div>

                    </div>
                </div>
            </div>

            <%}%>
        </div>
        </div>





<%@ include file="./components/footer.jsp" %>

</body>

</html>