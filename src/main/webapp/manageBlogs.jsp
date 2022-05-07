<%@ page import="com.oeps.onlineeventplanningsystem.model.Blog" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/styles/tailwind.css">
    <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css">

    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>


</head>

<body>

<div class="bg-red">
    <%--    header--%>
    <%@ include file="./components/header.jsp" %>
</div>




<section class="py-1 bg-blueGray-50">
    <div class="w-full xl:w-8/12 mb-12 xl:mb-0 px-4 mx-auto mt-24">
        <div class="relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-lg rounded ">

            <div class="block w-full overflow-x-auto">
                <table class="items-center bg-transparent w-full border-collapse ">
                    <thead>
                    <tr>
                        <th class="px-8 bg-blueGray-50 text-blueGray-500 align-middle border border-solid border-blueGray-100 py-3 text-l uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left">
                            Blog ID
                        </th>
                        <th class="px-8 bg-blueGray-50 text-blueGray-500 align-middle border border-solid border-blueGray-100 py-3 text-l uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left">
                            Blog Title
                        </th>
                        <th class="px-8 bg-blueGray-50 text-blueGray-500 align-middle border border-solid border-blueGray-100 py-3 text-l uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left">
                            Author
                        </th>
                        <th  class="px-8 bg-blueGray-50 text-blueGray-500 align-middle border border-solid border-blueGray-100 py-3 text-l uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left">
                            Description
                        </th>
                        <th  class="px-8 bg-blueGray-50 text-blueGray-500 align-middle border border-solid border-blueGray-100 py-3 text-l uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left" >
                            Edit or Delete
                        </th>
                    </tr>
                    </thead>

                    <tbody>

                    <% for(Blog blog : (List<Blog>)
                            request.getAttribute("blogL")) {%>
                    <tr>
                        <th class="border-t-0 px-6 align-middle border-l-0 border-r-0 text-l whitespace-nowrap p-4 text-left text-blueGray-700 ">
                            <%= blog.getBlogID()%>
                        </th>
                        <td class="border-t-0 px-6 align-middle border-l-0 border-r-0 text-l whitespace-nowrap p-4 ">
                            <%= blog.getBlogTitle()%>
                        </td>
                        <td class="border-t-0 px-6 align-center border-l-0 border-r-0 text-l whitespace-nowrap p-4">
                            <%=blog.getAuthor()%>

                        </td>
                        <td class="border-t-0 px-6 align-middle border-l-0 border-r-0 text-l whitespace-nowrap p-4">
                            <%=blog.getBlogDescription()%>

                        </td>
                        <td class="border-t-0 px-6 align-middle border-l-0 border-r-0 text-l whitespace-nowrap p-4">
                            <div style="float: left"><button type="button"  class="mr-3 text-sm bg-blue-500 hover:bg-blue-700 text-white py-1 px-2 rounded focus:outline-none focus:shadow-outline" style="width: 100px">Edit</button></div>
                            <div style="float: right"><button type="button" class="text-sm bg-red-500 hover:bg-red-700 text-white py-1 px-2 rounded focus:outline-none focus:shadow-outline" style="width: 100px">Delete</button><div>
                        </td>
                    </tr>
                    <%}%>
                    </tbody>

                </table>
            </div>
        </div>
    </div>

</section>


</body>

</html>