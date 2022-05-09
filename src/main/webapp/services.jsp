<%@ page import="com.oeps.onlineeventplanningsystem.model.Services" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="https://cdn.tailgrids.com/tailgrids-fallback.css" />
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-[#4a76a8]">

<%--    header--%>
<%@ include file="./components/header.jsp" %>



<!-- ====== Services Section Start -->
<section class="pt-20 lg:pt-[120px] pb-12 lg:pb-[90px] bg-[#4a76a8]">
    <div class="container">
        <div class="flex flex-wrap -mx-4">
            <div class="w-full px-4">
                <div class="text-center mx-auto mb-12 lg:mb-20 max-w-[510px]">
               <span class="font-semibold text-lg text-white mb-2 block">
               Our Services
               </span>
                    <h2
                            class="
                  font-bold
                  text-3xl
                  sm:text-4xl
                  md:text-[40px]
                  text-dark
                  mb-4
                  "
                    >
                        What We Offer
                    </h2>
                    <p class="text-base text-gray-100">
                        There are many variations of passages of Lorem Ipsum available
                        but the majority have suffered alteration in some form.
                    </p>
                </div>
            </div>
        </div>

        <%
            for (Services service : (List<Services>)
                    request.getAttribute("servicesList")) {
        %>

        <div class="flex items-center justify-center">

        
        <!-- component -->
        <div class="max-w-md w-full lg:flex  ">
            <div class="h-48 lg:h-auto lg:w-48 flex-none bg-cover rounded-t lg:rounded-t-none lg:rounded-l text-center overflow-hidden" style="background-image: url('<%=service.getServiceImage()%>')" title="Woman holding a mug">
            </div>
            <div class="border-r border-b border-l border-grey-light lg:border-l-0 lg:border-t lg:border-grey-light bg-white rounded-b lg:rounded-b-none lg:rounded-r p-4 flex flex-col justify-between leading-normal">
                <div class="mb-8">

                    <div class="text-black font-bold text-xl mb-2"><%=service.getServiceName()%></div>
                    <p class="text-grey-darker text-base"><%=service.getServiceDescription()%></p>
                </div>
                <div class="flex items-center">

                    <div class="text-sm">
                        <p class="text-black leading-none"><%=service.getServiceCreatedBy()%></p>
                        <p class="text-grey-dark">Aug 18</p>
                    </div>
                </div>
            </div>
        </div>

        <%
            }
        %>
    </div>
    </div>
</section>
<!-- ====== Services Section End -->



<%@ include file="./components/footer.jsp" %>

</body>

</html>