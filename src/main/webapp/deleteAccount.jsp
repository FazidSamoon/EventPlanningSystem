<!DOCTYPE html>
<html>
    <head>
        <title>Delete Account</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="bg-[#4a76a8]">
        <div class="bg-red">
            <%--    header--%>
            <%@ include file="./components/header.jsp" %>
        </div>

        <!-- component -->
<!-- Create by joker banny -->
<div class="mt-10 mb-8  flex justify-center items-center">
	<div class="lg:w-2/5 md:w-1/2 w-2/3">
		<form action="/deleteAccount/${userSession.getUserID()}" method="post" class="bg-white p-10 rounded-lg shadow-lg min-w-full">
			
			<div>
				<label class="text-gray-800 font-semibold block my-3 text-md" for="username">Username</label>
				<input class="w-full bg-gray-100 px-4 py-2 rounded-lg focus:outline-none" type="text" name="username" id="username" placeholder="username" />
            </div>
			<div>
				<label class="text-gray-800 font-semibold block my-3 text-md" for="password">Password</label>
				<input class="w-full bg-gray-100 px-4 py-2 rounded-lg focus:outline-none" type="text" name="password" id="password" placeholder="password" />
            </div>
			<button type="submit" class="w-full mt-6 bg-red-700 rounded-lg px-4 py-2 text-lg text-white tracking-wide font-semibold font-sans">Delete My Account</button>
							
		</form>
	</div>
</div>


        <%@ include file="./components/footer.jsp" %>
    </body>
</html>