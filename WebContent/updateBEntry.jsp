<%-- 
    Document   : boyEnter
    Created on : 13 Sep, 2015, 11:26:39 PM
    Author     : makrand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="0;boyoptn.html">
        <title>UPDATE</title>
        <%@page import="java.util.List"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="com.mongodb.*" %>
    </head>
    <body>
        <%String gSet = request.getParameter("myid");
        MongoClient m=new MongoClient("localhost",27017);
        DB db=m.getDB("Hostel_Management");
        DBCollection coll = null;        
         coll=db.getCollection("Boys_Details");
        
        
            String data[] =new String[16];
            data[0]=request.getParameter("myid");
            data[1]=request.getParameter("Name");
            data[2]=request.getParameter("DoB");
            data[3]=request.getParameter("BG");
            data[4]=request.getParameter("Add");
            data[5]=request.getParameter("MobS");
            data[6]=request.getParameter("MobP");
            data[7]=request.getParameter("fee");
            data[8]=request.getParameter("due");
            data[9]=request.getParameter("paydate");
            data[10]=request.getParameter("wing");
            data[11]=request.getParameter("floor");
            data[12]=request.getParameter("room");
            data[13]=request.getParameter("bed");
            data[14]=request.getParameter("damage");
            data[15]=request.getParameter("penalty");
            
            /*
            data[5]=data[5].toString();
            data[6]=data[6].toString();
           */
            String key[]={"ID","Name","DOB","Blood_Group","Address","Mobile_self","Parent_mobile_number","Fees_Paid","Fees_Due","DateOfPayment","Wing_No","Floor_No","Room_No","Bed_No","Damage","Penalty"};
            BasicDBObject doc = new BasicDBObject();
            for(int i=0;i<key.length;i++)
            {
                doc.append(key[i], data[i]);
            }
            coll.insert(doc);
                       
            %>
            <script>
                alert("SUCCESSFULLY UPDATED");
            </script>
    </body>
    <!--<a href="boyoptn.html"> <button> <h2>GO BACK</h2>  </button>  </a>-->
</html>
