<!DOCTYPE html>
<html>
<head>
    <title></title>
    <script src="https://cdn.tailwindcss.com"></script>

    <style>

        body {
            background-image: url("https://images.unsplash.com/photo-1519327232521-1ea2c736d34d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGpvdXJuYWxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60");
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


<div class="min-h-screen  py-6 flex flex-col justify-center sm:py-12">
    <div class="relative py-3 sm:max-w-xl sm:mx-auto">
        <div class="relative px-4 py-10  mx-8 md:mx-0 shadow rounded-3xl sm:p-10">
            <div class="max-w-md mx-auto">
                <div class="flex items-center space-x-5">
                    <div class="h-14 w-14 bg-yellow-200 rounded-full flex flex-shrink-0 justify-center items-center text-yellow-500 text-2xl font-mono">i</div>
                    <div class="block pl-2 font-bold text-2xl self-start text-black">
                        <h2 class="leading-relaxed">Create your blog</h2>
                        <p class="text-sm text-black font-normal leading-relaxed">Lorem ipsum, dolor sit amet consectetur adipisicing elit.</p>
                    </div>
                </div>

                <form action = "addNewBlog" method="GET">
                <div class="divide-y divide-gray-200">
                    <div class="py-8 text-base leading-6 space-y-4 text-black sm:text-lg sm:leading-7 font-bold">
                        <div class="flex flex-col">
                            <label class="leading-loose">Blog Title</label>
                            <input type="text" name="blogTitle"  class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600" placeholder="Blog Title"
                            required
                            minlength="4">
                        </div>
                        <div class="flex flex-col">
                            <label class="leading-loose">Author</label>
                            <input type="text" name="author" class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600" placeholder="Author"
                            required>
                        </div>
                        <div class="flex flex-col">
                            <label class="leading-loose">Blog Image</label>
                            <input type="text" name="blogImage" class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600" placeholder="Blog Image">
                        </div>

                        <div class="flex flex-col">
                            <label class="leading-loose">Blog Description</label>
                            <input type="text" name="blogDescription"  class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600" placeholder="Description"
                            required>
                        </div>

                        <div class="flex flex-col">
                            <label class="leading-loose">Blog Content</label>
                            <textarea name="blogContent"  class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600" placeholder="Blog Content" required</textarea>
                        </div>
                    </div>
                    <div class="pt-4 flex items-center space-x-4">
                        <button class="bg-blue-500 flex justify-center items-center w-full text-white px-4 py-3 rounded-md focus:outline-none hover:bg-blue-800">Create Blog</button>
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