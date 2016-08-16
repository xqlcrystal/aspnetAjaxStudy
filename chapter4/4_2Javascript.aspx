<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_2Javascript.aspx.cs" Inherits="chapter4._4_2Javascript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <script type="text/javascript">
        function employee(firstname,lastname) {
            this._firstname = firstname;
            this._lastname = lastname;
        }

        employee.prototype = {
            get_firstname: function () {
                return this._firstname;
            },
            set_firstname: function (value) {
                this._firstname = value;
            },
            get_lastname: function () {
                return this._lastname;
            },

            set_lastname: function (value) {
                this._lastname = value;
            }
        }

        window.onload = function () {
            var emp = new employee("chen", "fei");
            alert(emp.get_lastname());

            emp.set_lastname("hejz");
            alert(emp.get_lastname());
        }

    </script>
    </div>
    </form>
</body>
</html>
