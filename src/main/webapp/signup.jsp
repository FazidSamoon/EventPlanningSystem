

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
    <!-- <div
      class="min-h-screen flex flex-col items-center justify-center "
    >
      <div
        class="
          flex flex-col
          bg-gray-600
          shadow-md
          px-4
          sm:px-6
          md:px-8
          lg:px-10
          py-8
          rounded-3xl
          w-50
          max-w-md
          
        "
      >
        <div class="font-medium self-center text-xl sm:text-3xl text-gray-800">
          Join us Now
        </div>
        <div class="mt-4 self-center text-xl sm:text-sm text-gray-800">
          Enter your credentials to get access account
        </div>

        <div class="mt-10">
          <form action="#">
            <div class="flex flex-col mb-5">
              <label
                for="email"
                class="mb-1 text-xs tracking-wide text-gray-600"
                >Name:</label
              >
              <div class="relative">
                <div
                  class="
                    inline-flex
                    items-center
                    justify-center
                    absolute
                    left-0
                    top-0
                    h-full
                    w-10
                    text-gray-400
                    
                  "
                >
                  <i class="fas fa-user text-blue-500"></i>
                </div>

                <input
                  id="email"
                  type="email"
                  name="email"
                  class="
                    text-sm
                    placeholder-gray-500
                    pl-10
                    pr-4
                    rounded-2xl
                    border border-gray-400
                    w-full
                    py-2
                    focus:outline-none focus:border-blue-400
                  "
                  placeholder="Enter your name"
                />
              </div>
            </div>
            <div class="flex flex-col mb-5">
              <label
                for="email"
                class="mb-1 text-xs tracking-wide text-gray-600"
                >E-Mail Address:</label
              >
              <div class="relative">
                <div
                  class="
                    inline-flex
                    items-center
                    justify-center
                    absolute
                    left-0
                    top-0
                    h-full
                    w-10
                    text-gray-400
                  "
                >
                  <i class="fas fa-at text-blue-500"></i>
                </div>

                <input
                  id="email"
                  type="email"
                  name="email"
                  class="
                    text-sm
                    placeholder-gray-500
                    pl-10
                    pr-4
                    rounded-2xl
                    border border-gray-400
                    w-full
                    py-2
                    focus:outline-none focus:border-blue-400
                  "
                  placeholder="Enter your email"
                />
              </div>
            </div>
            <div class="flex flex-col mb-6">
              <label
                for="password"
                class="mb-1 text-xs sm:text-sm tracking-wide text-gray-600"
                >Password:</label
              >
              <div class="relative">
                <div
                  class="
                    inline-flex
                    items-center
                    justify-center
                    absolute
                    left-0
                    top-0
                    h-full
                    w-10
                    text-gray-400
                  "
                >
                  <span>
                    <i class="fas fa-lock text-blue-500"></i>
                  </span>
                </div>

                <input
                  id="password"
                  type="password"
                  name="password"
                  class="
                    text-sm
                    placeholder-gray-500
                    pl-10
                    pr-4
                    rounded-2xl
                    border border-gray-400
                    w-full
                    py-2
                    focus:outline-none focus:border-blue-400
                  "
                  placeholder="Enter your password"
                />
              </div>
            </div>

            <div class="flex w-full">
              <button
                type="submit"
                class="
                  flex
                  mt-2
                  items-center
                  justify-center
                  focus:outline-none
                  text-white text-sm
                  sm:text-base
                  bg-blue-500
                  hover:bg-blue-600
                  rounded-2xl
                  py-2
                  w-full
                  transition
                  duration-150
                  ease-in
                "
              >
                <span class="mr-2 uppercase">Sign Up</span>
                <span>
                  <svg
                    class="h-6 w-6"
                    fill="none"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      d="M13 9l3 3m0 0l-3 3m3-3H8m13 0a9 9 0 11-18 0 9 9 0 0118 0z"
                    />
                  </svg>
                </span>
              </button>
            </div>
          </form>
        </div>
      </div>
      <div class="flex justify-center items-center mt-6">
        <a
          href="#"
          target="_blank"
          class="
            inline-flex
            items-center
            text-gray-700
            font-medium
            text-xs text-center
          "
        >
          <span class="ml-2"
            >You have an account?
            <a
              href="#"
              class="text-xs ml-2 text-blue-500 font-semibold"
              >Login here</a
            ></span
          >
        </a>
      </div>
    </div> -->







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

