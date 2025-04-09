<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>
<body>
<%
def myList1=[1,3,5,7,9,11]
%>
<div>This is taglib gsp file from action</div>
<g:emoticon list="${myList1}" happy="true">Hi John</g:emoticon>
<g:fruit list="${fruitList}" ></g:fruit>

%{--<g:emoticon happy="true">Hi John</g:emoticon>--}%
</body>
</html>
