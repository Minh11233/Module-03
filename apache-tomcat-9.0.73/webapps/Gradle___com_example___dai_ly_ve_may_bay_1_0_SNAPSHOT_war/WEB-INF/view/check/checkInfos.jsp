<%--
  Created by IntelliJ IDEA.
  User: Quang Minh
  Date: 24-Apr-23
  Time: 9:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
    <style>
        html,
        body {
            background-color: #85b9dd;
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
        }

        * {
            position: relative;
        }

        .frame {
            width: 500px;
            height: auto;
            margin: 15% auto 0;
            position: absolute;
            width: 100%;
        }

        svg {
            max-width: 100%;
            height: auto;
            display: block;
        }

        /**
         * Paper Plane
         */
        /*Paper Plane: Container*/
        .plane-container {
            width: 200px;
            margin: 0px auto;
            z-index: 3;
        }
        /*Paper Plane: Image*/
        .plane {
            width: 100%;
            height: 60px;
        }

        /*Paper Plane: Animation*/
        .plane-container {
            -webkit-animation: paper-plane-scoping 2s alternate infinite;
            -moz-animation: paper-plane-scoping 2s alternate infinite;
            animation: paper-plane-scoping 2s alternate infinite;

            -webkit-animation-timing-function: linear;
            -moz-animation-timing-function: linear;
            animation-timing-function: linear;
        }

        @-webkit-keyframes paper-plane-scoping {
            0% {
                -webkit-transform: translateY(0px);
                -moz-transform: translateY(0px);
                transform: translateY(0px);
            }
            100% {
                -webkit-transform: translateY(100px);
                -moz-transform: translateY(100px);
                transform: translateY(100px);
            }
        }

        .plane {
            -webkit-animation-timing-function: ease-in-out;
            -moz-animation-timing-function: ease-in-out;
            animation-timing-function: ease-in-out;

            -webkit-animation: paper-plane-soaring 4s forwards infinite;
            -moz-animation: paper-plane-soaring 4s forwards infinite;
            animation: paper-plane-soaring 4s forwards infinite;
        }
        @-webkit-keyframes paper-plane-soaring {
            0% {
                -webkit-transform: rotate(0deg);
                -moz-transform: rotate(0deg);
                transform: rotate(0deg);
            }
            40% {
                -webkit-transform: rotate(15deg);
                -moz-transform: rotate(15deg);
                transform: rotate(15deg);
            }
            50% {
                -webkit-transform: rotate(15deg);
                -moz-transform: rotate(15deg);
                transform: rotate(15deg);
            }
            60% {
                -webkit-transform: rotate(-10deg);
                -moz-transform: rotate(-10deg);
                transform: rotate(-10deg);
            }
            70% {
                -webkit-transform: rotate(-10deg);
                -moz-transform: rotate(-10deg);
                transform: rotate(-10deg);
            }
            100% {
                -webkit-transform: rotate(0deg);
                -moz-transform: rotate(0deg);
                transform: rotate(0deg);
            }
        }

        /**
         * Clouds
         */
        .clouds {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            overflow: hidden;
            transform: translateZ(0);
        }

        .cloud {
            position: absolute;
            top: 20%;
            width: 300px;
            right: 0;
            opacity: 1;
        }

        .cloud.front {
            z-index: 9;
        }

        .cloud.distant {
            z-index: 1;
        }

        .cloud.background {
            z-index: 1;
        }

        /*Cloud Sizing*/
        .cloud.smaller {
            margin-right: 400px;
            width: 100px;
            margin-top: 50px;
        }

        .cloud.small {
            margin-right: 200px;
            width: 150px;
        }

        .cloud.big {
            width: 500px;
            margin-top: 50px;
            margin-right: 150px;
        }

        .cloud.massive {
            width: 600px;
            margin-top: 20px;
            margin-right: 0px;
        }


        /*Cloud: Animation*/
        .cloud {
            -webkit-animation-name: cloud-movement;
            -webkit-animation-timing-function: linear;
            -webkit-animation-direction: forwards;
            -webkit-animation-iteration-count: infinite;
            -webkit-animation-duration: 8s;

            -moz-animation-name: cloud-movement;
            -moz-animation-timing-function: linear;
            -moz-animation-direction: forwards;
            -moz-animation-iteration-count: infinite;
            -moz-animation-duration: 8s;

            animation-name: cloud-movement;
            animation-timing-function: linear;
            animation-direction: forwards;
            animation-iteration-count: infinite;
            animation-duration: 8s;
        }

        .slow {
            -webkit-animation-duration: 9.2s;
            -moz-animation-duration: 9.2s;
            animation-duration: 9.2s;
        }

        .slower {
            -webkit-animation-duration: 11.2s;
            -moz-animation-duration: 11.2s;
            animation-duration: 11.2s;
        }

        .slowest {
            -webkit-animation-duration: 13.5s;
            -moz-animation-duration: 13.5s;
            animation-duration: 13.5s;
        }

        .super-slow {
            -webkit-animation-duration: 20.5s;
            -moz-animation-duration: 20.5s;
            animation-duration: 20.5s;
        }

        @-webkit-keyframes cloud-movement {
            0% {
                opacity: 0.1;
                -webkit-transform: translateX(300px);
                -moz-transform: translateX(300px);
                transform: translateX(300px);
            }
            10% {

                opacity: 0.7;
            }
            90% {
                opacity: 0;
            }
            100% {
                opacity: 0;
                -webkit-transform: translateX(-1000px);
                -moz-transform: translateX(-1000px);
                transform: translateX(-1000px);
            }
        }

        #the-form {
            text-align: center;
            width: 50%;
            position: relative;
            top: 200px;
            left: 400px;
        }
    </style>
</head>
<body>
<div class="frame">
    <div class="plane-container">
        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
             width="1131.53px" height="379.304px" viewBox="0 0 1131.53 379.304" enable-background="new 0 0 1131.53 379.304"
             xml:space="preserve" class="plane">
<%--<polygon fill="#D8D8D8" points="72.008,0 274.113,140.173 274.113,301.804 390.796,221.102 601.682,367.302 1131.53,0.223  "/>--%>
            <%--                <polygon fill="#C4C4C3" points="1131.53,0.223 274.113,140.173 274.113,301.804 390.796,221.102   "/>--%>
</svg></a>

    </div>
</div>
<div class="clouds">

    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="762px"
         height="331px" viewBox="0 0 762 331" enable-background="new 0 0 762 331" xml:space="preserve" class="cloud big front slowest">
<path fill="#FFFFFF" d="M715.394,228h-16.595c0.79-5.219,1.201-10.562,1.201-16c0-58.542-47.458-106-106-106
c-8.198,0-16.178,0.932-23.841,2.693C548.279,45.434,488.199,0,417.5,0c-84.827,0-154.374,65.401-160.98,148.529
C245.15,143.684,232.639,141,219.5,141c-49.667,0-90.381,38.315-94.204,87H46.607C20.866,228,0,251.058,0,279.5
S20.866,331,46.607,331h668.787C741.133,331,762,307.942,762,279.5S741.133,228,715.394,228z"/>
</svg>
    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="762px"
         height="331px" viewBox="0 0 762 331" enable-background="new 0 0 762 331" xml:space="preserve" class="cloud distant smaller">
<path fill="#FFFFFF" d="M715.394,228h-16.595c0.79-5.219,1.201-10.562,1.201-16c0-58.542-47.458-106-106-106
c-8.198,0-16.178,0.932-23.841,2.693C548.279,45.434,488.199,0,417.5,0c-84.827,0-154.374,65.401-160.98,148.529
C245.15,143.684,232.639,141,219.5,141c-49.667,0-90.381,38.315-94.204,87H46.607C20.866,228,0,251.058,0,279.5
S20.866,331,46.607,331h668.787C741.133,331,762,307.942,762,279.5S741.133,228,715.394,228z"/>
</svg>

    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="762px"
         height="331px" viewBox="0 0 762 331" enable-background="new 0 0 762 331" xml:space="preserve" class="cloud small slow">
<path fill="#FFFFFF" d="M715.394,228h-16.595c0.79-5.219,1.201-10.562,1.201-16c0-58.542-47.458-106-106-106
c-8.198,0-16.178,0.932-23.841,2.693C548.279,45.434,488.199,0,417.5,0c-84.827,0-154.374,65.401-160.98,148.529
C245.15,143.684,232.639,141,219.5,141c-49.667,0-90.381,38.315-94.204,87H46.607C20.866,228,0,251.058,0,279.5
S20.866,331,46.607,331h668.787C741.133,331,762,307.942,762,279.5S741.133,228,715.394,228z"/>
</svg>

    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="762px"
         height="331px" viewBox="0 0 762 331" enable-background="new 0 0 762 331" xml:space="preserve" class="cloud distant super-slow massive">
<path fill="#FFFFFF" d="M715.394,228h-16.595c0.79-5.219,1.201-10.562,1.201-16c0-58.542-47.458-106-106-106
c-8.198,0-16.178,0.932-23.841,2.693C548.279,45.434,488.199,0,417.5,0c-84.827,0-154.374,65.401-160.98,148.529
C245.15,143.684,232.639,141,219.5,141c-49.667,0-90.381,38.315-94.204,87H46.607C20.866,228,0,251.058,0,279.5
S20.866,331,46.607,331h668.787C741.133,331,762,307.942,762,279.5S741.133,228,715.394,228z"/>
</svg>

    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="762px"
         height="331px" viewBox="0 0 762 331" enable-background="new 0 0 762 331" xml:space="preserve" class="cloud slower">
<path fill="#FFFFFF" d="M715.394,228h-16.595c0.79-5.219,1.201-10.562,1.201-16c0-58.542-47.458-106-106-106
c-8.198,0-16.178,0.932-23.841,2.693C548.279,45.434,488.199,0,417.5,0c-84.827,0-154.374,65.401-160.98,148.529
C245.15,143.684,232.639,141,219.5,141c-49.667,0-90.381,38.315-94.204,87H46.607C20.866,228,0,251.058,0,279.5
S20.866,331,46.607,331h668.787C741.133,331,762,307.942,762,279.5S741.133,228,715.394,228z"/>
</svg>

</div>
<form>
    <h3>VUI LÒNG KIỂM TRA THẬT KỸ THÔNG TIN</h3>
    <fieldset>
        <legend>Thông tin chuyến bay</legend>
        Tên máy bay: ${sessionScope.get('airline')}<br>
        Đi từ:       ${sessionScope.get('depart')}<br>
        Đến:          ${sessionScope.get('dest')}<br>
        Ngày bay:     ${sessionScope.get('date')}<br>
        Chỗ Ngồi:     ${sessionScope.get('position')}<br>
        Khoang:       ${sessionScope.get('seat')}<br>
        Giờ khởi hàng: ${sessionScope.get('flightTime')}<br>
        Giá vé:       ${sessionScope.get('price')}<br>
        <button formmethod="post" formaction="/updateFlight">Cập nhật thông tin chuyến bay</button>
    </fieldset>
    <fieldset>
        <legend>Thông tin cá nhân</legend>
        Họ và tên:      ${sessionScope.get('name')}<br>
        Giới tính:      ${sessionScope.get('gender')}<br>
        Địa chỉ:        ${sessionScope.get('address')}<br>
        Số điện thoại:  ${sessionScope.get('phonenumber')}<br>
        Email:          ${sessionScope.get('email')}<br>
        <button formmethod="post" formaction="/checkInfosAfterUpdateCustomerInfos">Cập nhật thông tin cá nhân</button>
    </fieldset>
    <button formmethod="post" formaction="/ticket">XÁC NHẬN</button>
</form>
</body>
</html>
