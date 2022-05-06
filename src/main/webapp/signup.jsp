

    <!-- component -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
      integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
      crossorigin="anonymous"
    />
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body{
            background-image: url("https://undsgn.com/wp-content/uploads/2018/04/ltotbngnzzu-uai-1350x759.jpg");
            background-size: cover;
            background-repeat: no-repeat;


        }
       
    </style>
    <title>Login Page</title>
  </head>
  <body style="background-image: url('https://undsgn.com/wp-content/uploads/2018/04/ltotbngnzzu-uai-1350x759.jpg');">
    <div class="flex p-1 py-12  place-content-center">
        <div class="max-w-lg overflow-hidden border border-gray-200 rounded-lg bg-black/50">
            <h1 class="text-4xl font-mono text-center text-white uppercase">SignUp</h1>
            <form class="w-full max-w-lg" action="signup" method="post">
                <div class="p-10 pb-6">
                    <div class="flex flex-wrap mb-6 -mx-3">
                        <div class="w-full px-3 mb-6 md:w-1/2 md:mb-0">
                            <label class="block mb-2 text-xs font-bold tracking-wide text-white uppercase"
                                for="grid-first-name">
                                User name
                            </label>
                            <input
                                class="block w-full px-4 py-3 mb-3 leading-tight text-white bg-transparent border border-gray-200 rounded appearance-none focus:outline-none "
                                name="userName" id="grid-first-name" type="text" placeholder="Jane">
                        </div>
                        <div class="w-full px-3 md:w-1/2">
                            <label class="block mb-2 text-xs font-bold tracking-wide text-white uppercase"
                                for="grid-last-name">
                                Name
                            </label>
                            <input
                                class="block w-full px-4 py-3 leading-tight  text-white bg-transparent border border-gray-200 rounded appearance-none focus:outline-none  focus:border-gray-500"
                                id="grid-last-name" name="name" type="text" placeholder="Doe">
                        </div>
                    </div>
                    <div class="flex flex-wrap -mx-3">
                        <div class="w-full px-3 mb-6">
                            <label class="block mb-2 text-xs font-bold tracking-wide text-white uppercase"
                                for="grid-email">
                                Email
                            </label>
                            <input
                                class="block w-full px-4 py-3 mb-3 leading-tight text-white bg-transparent border border-gray-200 rounded appearance-none focus:outline-none  focus:border-gray-500"
                                id="grid-email" name="email" type="email" placeholder="janedoe@example.com">
                        </div>
                        <div class="w-full px-3 mb-6">
                            <label class="block mb-2 text-xs font-bold tracking-wide text-white uppercase"
                                for="grid-password">
                                Password
                            </label>
                            <input
                                class="block w-full px-4 py-3 mb-3 leading-tight text-white bg-transparent border border-gray-200 rounded appearance-none focus:outline-none  focus:border-gray-500"
                                id="grid-password" name="password" type="password" placeholder="***********">
                        </div>
                        <div class="w-full px-3 mb-6">
                            <label class="block mb-2 text-xs font-bold tracking-wide text-white uppercase"
                                for="grid-phoneNumber">
                                Phone number
                            </label>
                            <input
                                class="block w-full px-4 py-3 mb-3 leading-tight text-white bg-transparent border border-gray-200 rounded appearance-none focus:outline-none  focus:border-gray-500"
                                id="grid-phoneNumber" name="phoneNumber" type="text" placeholder="+91 XXX XXX XXXX">
                        </div>
                    </div>
    
                    <label>
                        <span class="block mb-2 text-xs font-bold tracking-wide text-white uppercase">Address</span>
                        <textarea
                            class="block w-full px-4 py-3 mt-1 mb-3 text-white bg-transparent border border-gray-200 rounded form-textarea focus:outline-none"
                            rows="4" placeholder="" name="address"></textarea>
                    </label>
    
                    
                <div class="flex items-center justify-between p-5 text-center bg-transparent">
                    <div class="relative flex flex-col items-start mr-1 text-sm">
                        <span class="mr-1 text-white">Already have an account?</span>
                        <a href="#_" class="block font-medium text-indigo-600 underline">Login Here</a>
                    </div>
                    <button type="submit"
                        class="inline-flex items-center px-6 py-3 text-base font-medium leading-6 text-white transition duration-150 ease-in-out bg-indigo-600 border border-transparent rounded-md hover:bg-indigo-500 focus:outline-none focus:border-indigo-700 focus:shadow-outline-indigo active:bg-indigo-700">
                        Register Now
                    </button>
                </div>
            </form>
        </div>
    </div>
    
  </body>
</html>

