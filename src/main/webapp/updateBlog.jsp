<%@ page import="com.oeps.onlineeventplanningsystem.model.Blog" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <script src="https://cdn.tailwindcss.com"></script>

    <style>

 body {
     background-image: url("https://media.istockphoto.com/photos/home-office-desk-table-with-coffee-cup-bouquet-of-spring-flowers-lily-picture-id1310455436?b=1&k=20&m=1310455436&s=170667a&w=0&h=chdh2N8T_Gk7D2-dOcUTT_YjS4B4eKNl98cgSK6nuzg=");
     background-repeat: no-repeat;
     background-size: cover;
 }

 textarea{
     height: 200px;
 }
     </style>
</head>

<body>

<div class="bg-red">
    <%--    header--%>
    <%@ include file="./components/header.jsp" %>
</div>
<br>

<div class="min-h-screen  py-6 flex flex-col justify-center sm:py-12"  >
    <div class="relative py-3 sm:max-w-xl sm:mx-auto" >
        <div class="relative px-4 py-10 bg-blue-80 mx-8 md:mx-0 shadow rounded-3xl sm:p-10"  >
            <div class="max-w-md mx-auto" >
                <div class="flex items-center space-x-5">
                    <div class="h-14 w-14 bg-yellow-200 rounded-full flex flex-shrink-0 justify-center items-center text-yellow-500 text-2xl font-mono">i</div>
                    <div class="block pl-2 font-bold text-2xl self-start text-black">
                        <h1 class="leading-relaxed">Update your blog</h1>
                        <p class="text-sm text-black font-normal leading-relaxed">Lorem ipsum, dolor sit amet consectetur adipisicing elit.</p>
                    </div>
                </div>

                <%
                    Blog blog= (Blog) request.getAttribute("blogC");
                %>

                <form action = "newUpdatedBlog/<%=blog.getBlogID()%>" method="post">


                <div class="divide-y divide-gray-200">
                    <div class="py-8 text-base font-bold leading-6 space-y-4 text-black sm:text-lg sm:leading-7">


                        <div class="flex flex-col">
                            <label class="leading-loose">Blog Title</label>
                            <input type="text" name="blogTitle" value="<%=blog.getBlogTitle()%>" class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-700" placeholder="Blog title">
                        </div>

                        <div class="flex flex-col">
                            <label class="leading-loose">Author</label>
                            <input type="text" name="author" value="<%=blog.getAuthor()%>" class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600" placeholder="Author">
                        </div>

                        <div class="flex flex-col">
                            <label class="leading-loose">Blog Image</label>
                            <input type="text" name="blogImage" value="<%=blog.getBlogImage()%>" class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600" placeholder="blogImage">
                        </div>

                        <div class="flex flex-col">
                            <label class="leading-loose">Blog Description</label>
                            <input type="text" name="blogDescription" value="<%=blog.getBlogDescription()%>" class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600" placeholder="Blog description">
                        </div>

                        <div class="flex flex-col">
                            <label class="leading-loose">Blog Content</label>
                            <textarea name="blogContent" value="<%=blog.getBlogContent()%>" class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600" placeholder="Blog Content"></textarea>
                        </div>

                    </div>
                    <div class="pt-4 flex items-center space-x-4">
                        <button class="bg-blue-500 flex justify-center items-center w-full text-white px-4 py-3 rounded-md focus:outline-none hover:bg-blue-800" type="submit">Update Blog</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>



<%@ include file="./components/footer.jsp" %>

</body>

</html>