<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebRequestTest.aspx.cs" Inherits="chaptor12.WebRequestTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        var request = null;
        function completecallback(sender, eventargs) {
            //sender = new Sys.Net.WebRequestExecutor();
           
            if (sender.get_aborted()) {
                alert("Request aborted");
                return;
            }

            if (sender.get_timedOut) {
                alert("Request timed out");
                return;
            }

          
            var txt = sender.get_responseData();
            $get("info").innerHTML = txt;
        }

        function submitcallback() {
            var usernametbx = $get("usernametbx");
            var passwordtbx = $get("passwordtbx");
            var sb = new Sys.StringBuilder();
            sb.append("usernametbx");
            sb.append("=");
            sb.append(encodeURIComponent(usernametbx.value));
            sb.append("&");
            sb.append("passwordtbx");
            sb.append("=");
            sb.append(encodeURIComponent(passwordtbx.value));

            request = new Sys.Net.WebRequest();
            
            request.get_headers()["CustomClientClass_AsycPostback"] = true;
            request.get_headers()["Cache-Control"] = "no-cache";
            request.set_url(document.forms[0].action);
            request.set_body(sb.toString());
            request.set_timeout(90000);
            request.add_completed(completecallback);
            request.invoke();

        }

        function cancelcb() {
            request.get_executor().abort();
        }

        function invokingcallback(sender,args) {
            alert("invoking");
        }

        function pageLoad() {
            var submitbtn = $get("submitbtn");
            Sys.Net.WebRequestManager.add_invokingRequest(invokingcallback);
            $addHandler(submitbtn, "click", submitcallback);
            $addHandler($get("cancelbtn"), "click", cancelcb);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">

        </asp:ScriptManager>
        用户名：<input type="text" name="usernametbx" value="" id="usernametbx" />
        <br/>
        密  码：<input type="password" name="passwordtbx" value="" id="passwordtbx" />
        <br />
        <input type="button" name="name" value="提交" id="submitbtn" />
        <input type="button" name="cancel" value="取消" id="cancelbtn" />
    </div>

        <div id="info"></div>
    </form>
</body>
</html>
