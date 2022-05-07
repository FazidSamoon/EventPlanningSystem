<%@ page import="com.oeps.onlineeventplanningsystem.model.Blog" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <title></title>
    <script src="https://cdn.tailwindcss.com"></script>


</head>

<body >

        <div class="bg-red">
            <%--    header--%>
            <%@ include file="./components/header.jsp" %>
        </div>
        <br>
        <br>

      <div class="w-full bg-white p-12">
            <div class="header flex items-end justify-between mb-12">
                <div class="title">
                    <p class="text-4xl font-bold text-gray-800 mb-4">
                        Latest Blogs
                    </p>
                    <p class="text-2xl font-light text-gray-400">
                        All blogs are verified by 2 experts and valdiate by the CTO
                    </p>
                </div>
                <div class="text-end">
                    <form class="flex flex-col md:flex-row w-3/4 md:w-full max-w-sm md:space-x-3 space-y-3 md:space-y-0 justify-center">
                        <div class=" relative ">
                            <input type="text" id="&quot;form-subscribe-Search" class=" rounded-lg border-transparent flex-1 appearance-none border border-gray-300 w-full py-2 px-4 bg-white text-gray-700 placeholder-gray-400 shadow-sm text-base focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" placeholder="Enter a title"/>
                        </div>
                        <button class="flex-shrink-0 px-4 py-2 text-base font-semibold text-white bg-purple-600 rounded-lg shadow-md hover:bg-purple-700 focus:outline-none focus:ring-2 focus:ring-purple-500 focus:ring-offset-2 focus:ring-offset-purple-200" type="submit">
                            Search
                        </button>
                    </form>
                </div>
            </div>
        </div>


        <div class="px-10 my-4 py-6 rounded shadow-xl bg-white w-4/5 mx-auto">

           <% for(Blog blogn : (List<Blog>)
                    request.getAttribute("blogM")) {%>

            <div class="mt-2">
                <h1 class="text-2xl text-gray-700 font-bold hover:text-gray-600" >
                    <%= blogn.getBlogTitle()%>
                </h1>

                <p class="mt-2 text-gray-600  font-bold">
                    Author: <%=blogn.getAuthor()%>
                </p>

                <p class="mt-2 text-gray-600">
                    <%=blogn.getBlogDescription()%>
                </p>
            </div>
            <div class="flex justify-between items-center mt-4">
                <a class="text-blue-600 hover:underline" href="#">Visit Article</a>

                <a href="updateBlog/<%=blogn.getBlogID()%>">
                    <button class="bg-blue-600 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-full">
                        edit
                    </button>
                </a>

            </div>
            <%}%>
        </div>








        <!-- component -->





<%@ include file="./components/footer.jsp" %>

</body>

</html>