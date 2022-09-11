<!-- HTML for static distribution bundle build -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>code</title>
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Source+Code+Pro:300,600|Titillium+Web:400,600,700"
        rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple">
    <link rel="icon" type="image/png" href="{{ swagger_lume_asset('favicon-32x32.png') }}" sizes="32x32" />
    <link rel="icon" type="image/png" href="{{ swagger_lume_asset('favicon-16x16.png') }}" sizes="16x16" />
    <style>
        html {
            box-sizing: border-box;
            overflow: -moz-scrollbars-vertical;
            overflow-y: scroll;
        }

        *,
        *:before,
        *:after {
            box-sizing: inherit;
        }

        .code {
            margin:20px;
            padding: 20px;

        }

        .code title-code {
            color:grey;
            display: block;
            font-family: 'Tangerine', serif;
            font-size: 48px;
            text-shadow: 4px 4px 4px #aaa;
            padding-bottom:10px;
        }

        .code value-code {
            font-family: 'Tangerine', serif;
            font-size: 38px;
        }

        body {
            margin: 0;
            background: #fafafa;
        }
    </style>
</head>

<body>
    <div class="code">
        <title-code>new code</title-code>
        <value-code><?php echo $code; ?></value-code>
    </div>

</body>

</html>
