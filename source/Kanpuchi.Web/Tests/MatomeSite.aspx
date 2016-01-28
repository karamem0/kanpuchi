﻿<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MatomeSite API テスト</title>
    <link rel="stylesheet" href="/Content/bootstrap.min.css">
    <script type="text/javascript" src="/Scripts/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="/Scripts/bootstrap.min.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="/Scripts/html5siv.min.js"></script>
    <script type="text/javascript" src="/Scripts/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="container">
        <h1>MatomeSite API テスト</h1>
        <form id="form" class="form-horizontal">
            <div class="form-group">
                <div class="col-sm-12 text-right">
                    <button type="button" id="button" class="btn btn-default">実行</button>
                </div>
            </div>
        </form>
        <div class="panel panel-default">
            <div id="console" class="panel-body"></div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $("#button").click(function () {
                $("#console").html(null);
                $.ajax({
                    type: "GET",
                    url: encodeURI("/api/matomesite?" + $("form").serialize()),
                    success: function (data, status, request) {
                        $("#console").html(
                            "status: " + request.status + "<br>" +
                            "body: " + request.responseText);
                    },
                    error: function (request, status, error) {
                        $("#console").html(
                            "status: " + request.status + "<br>" +
                            "body: " + request.responseText);
                    }
                });
            });
        });
    </script>
</body>
</html>
