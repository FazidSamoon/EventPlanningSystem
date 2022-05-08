<%@ page import="com.oeps.onlineeventplanningsystem.model.Blog" %>
<!DOCTYPE html>
<html>

<head>
    <title></title>
    <script src="https://cdn.tailwindcss.com"></script>

    <style>
        .pt-\[17\%\] {
            padding-top: 17%;
        }
        .mt-\[-10\%\] {
            margin-top: -10%;
        }
        .pt-\[56\.25\%\] {
            padding-top: 56.25%;
        }
    </style>

</head>

<body>

<div class="bg-red">
    <%--    header--%>
    <%@ include file="./components/header.jsp" %>
</div>



<!-- component -->



<main class="relative container mx-auto bg-blue-300 px-4">
    <div class="relative -mx-4 top-0 pt-[17%] overflow-hidden">
        <img class="absolute inset-0 object-cover object-top w-full h-full filter blur" src="https://images.unsplash.com/photo-1514525253161-7a46d19cd819?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y29uY2VydCUyMHBvc3RlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1200&q=80" alt="" />
    </div>

    <%
        Blog blog = (Blog) request.getAttribute("blogR");
    %>
    <div class="mt-[-10%] w-1/2 mx-auto">
        <div class="relative pt-[56.25%] overflow-hidden rounded-2xl">
            <img class="w-full h-full absolute inset-0 object-cover" src="<%=blog.getBlogImage()%>" alt="" />
        </div>
    </div>



    <article class="max-w-prose mx-auto py-8">
        <h1 class="text-2xl font-bold"><%=blog.getBlogTitle()%></h1>
        <h2 class="mt-2 text-l text-gray-900 font-bold">Author: <%=blog.getAuthor()%></h2>

        <p class="mt-6">About: <%=blog.getBlogDescription()%></p>
        <p class="mt-4"><%=blog.getBlogContent()%></p>

    </article>
</main>





<%@ include file="./components/footer.jsp" %>

</body>

</html>