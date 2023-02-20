<html>
<head>
    <title>Custom DEV Page</title>
    <style>
        h1 {
            text-align: center;
            width: 100%;
        }

        fluent-button {
            padding-left: 15px;
            padding-right: 15px;
        }

        #anchoredHeader {
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            justify-content: center;
            z-index: 1;
            background-color: aquamarine;
            max-height: 175px
        }

        #pageContent {
            position: relative;
            top: 175px;
        }

        /*align default font with the rest of SPO*/
        body {
            font-family: 'Segoe UI'
        }
    </style>
    <!--brains of the operation, listed below:
        - jQuery - cause it makes life easier
        - FluentUI - for MS style UI elements
    -->
    <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <script type="module" src="https://unpkg.com/@fluentui/web-components"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/x2js/1.2.0/xml2json.min.js"></script>
    <script type="text/javascript">
        //set some variables for easy modification
        var navigationInformation = [
            {"URL" : "https://www.google.com", "Name" : "Google"},
            {"URL" : "https://www.facebook.com", "Name" : "Facebook"},
            {"URL" : "https://www.youtube.com", "Name" : "Youtube"}
        ];

        var xmlInformation = null;
        var xmlObject = null;


        //script function to run when page is rendered
        $(document).ready(function() {
            //populate navigation
            navigationInformation.forEach(element => {
                //example: <fluent-button appearance="accent" onclick="window.location.href='https://www.google.com'">Google</fluent-button>
                $("#navigation-bar").append("<fluent-button appearance=\"accent\" onclick=\"window.open('" + element.URL +"', '_blank')\">" + element.Name +"</fluent-button>");
            });
        });

        function testaction() {
            console.log("test success");
        }
    </script>
    <noscript>Javascript is not enabled. Guess you're getting the basic version of the site then</noscript>
</head>
<body>
    <div id="anchoredHeader">
        <h1>Rondogs Top Secret Site</h1>
        <fluent-horizontal-scroll>
            <div id="navigation-bar"></div>
        </fluent-horizontal-scroll>
    </div>
    <div id="pageContent">


        <fluent-card style="--card-width: 350px; --card-height: 3500px;">
            <h2>Test Card for Scroll</h2>
            <fluent-button id="button" appearance="accent" onclick="testaction()">Click Me</fluent-button>
            <p id="testinformation"></p>
        </fluent-card>
    </div>

</body>
</html>
