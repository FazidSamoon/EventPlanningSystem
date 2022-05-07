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

     <!--   <div class="w-full bg-white p-12">
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
            </div>
            <%}%>
        </div>-->








        <!-- component -->

        <% for(Blog blogn : (List<Blog>)
                request.getAttribute("blogM")) {%>

        <div class="overflow-x-hidden bg-gray-100">

            <div class="px-6 py-8">
                <div class="container flex justify-between mx-auto">
                    <div class="w-full lg:w-8/12">
                        <div class="flex items-center justify-between">
                            <h1 class="text-xl font-bold text-gray-700 md:text-2xl">Our Blogs</h1>
                        </div>
                        <div class="mt-6">
                            <div class="max-w-4xl px-10 py-6 mx-auto bg-white rounded-lg shadow-md">

                                <div class="mt-2"><h2 class="text-2xl font-bold text-gray-700 hover:underline">
                                    <%= blogn.getBlogTitle()%></h2>
                                    <h4 class="mt-2 text-gray-600"><%=blogn.getAuthor()%></h4>
                                    <p class="mt-2 text-gray-600"><%=blogn.getBlogDescription()%></p>
                                </div>
                                <div class="flex items-center justify-between mt-4"><a href="#"
                                                                                       class="text-blue-500 hover:underline">Read more</a>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="hidden w-4/12 -mx-8 lg:block">
                        <div class="px-8">
                            <h1 class="mb-4 text-xl font-bold text-gray-700">Authors</h1>
                            <div class="flex flex-col max-w-sm px-6 py-4 mx-auto bg-white rounded-lg shadow-md">
                                <ul class="-mx-4">
                                    <li class="flex items-center">
                                        <p class="mx-1 font-bold text-gray-700 hover:underline"><%=blogn.getAuthor()%><span
                                                class="text-sm font-light text-gray-700"></span></p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="px-8 mt-10">
                            <h1 class="mb-4 text-xl font-bold text-gray-700">Titles</h1>
                            <div class="flex flex-col max-w-sm px-4 py-6 mx-auto bg-white rounded-lg shadow-md">
                                <ul>
                                    <li class="mx-1 font-bold text-gray-700 hover:text-gray-600 hover:underline"><%= blogn.getBlogTitle()%></li>
                                </ul>
                            </div>
                        </div>

                        <div class="px-8 mt-10">
                            <h1 class="mb-4 text-xl font-bold text-gray-700">Recent Post</h1>
                            <div class="flex flex-col max-w-sm px-8 py-6 mx-auto bg-white rounded-lg shadow-md">
                                <div class="flex items-center justify-center"><a href="#"
                                                                                 class="px-2 py-1 text-sm text-green-100 bg-gray-600 rounded hover:bg-gray-500">Post your Blog</a>
                                </div>
                                <br>
                                <div class="flex items-center justify-center"><a href="#"
                                                                                 class="px-2 py-1 text-sm text-green-100 bg-gray-600 rounded hover:bg-gray-500">Update your Blog</a>
                                </div>
                                <br>
                                <div class="flex items-center justify-center"><a href="#"
                                                                                 class="px-2 py-1 text-sm text-green-100 bg-gray-600 rounded hover:bg-gray-500">Delete your Blog</a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%}%>
        <br>





<%@ include file="./components/footer.jsp" %>

</body>

</html>