<!DOCTYPE html>
<html>
    <head>
        <title>Laravel</title>

        <link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" type="text/css">

        <style>
            html, body {
                height: 100%;
            }

            body {
                margin: 0;
                padding: 0;
                width: 100%;
                display: table;
                font-weight: 100;
                font-family: 'Lato';
            }

            .container {
                text-align: center;
                display: table-cell;
                vertical-align: middle;
            }

            .content {
                text-align: center;
                display: inline-block;
            }

            .title {
                font-size: 35px;
            }
        </style>
        <link rel="stylesheet" href="{{ URL::asset('public/css/main.css') }}" />
    </head>
    <body>
        <div class="container">
            <div class="content">
                <div class="title hightlight">Laravel 5 in {{ $theLocation }} on  {{ date('M d, Y') }}.</div>
                @if ($theWeather) <!-- ($theWeather == 'sunny') -->
                    <p>It's a {{ $theWeather }} day.</p>
                @else
                    <p>No forecast available.</p>
                @endif

                <p>Don't miss:</p>
                <ul style="text-align: left">
                    @foreach ($theLandmarks as $landmark)
                        @unless($landmark == 'Brooklyn Heights')
                            <li>{{ $landmark }}</li>
                        @endunless
                    @endforeach
                </ul>
            </div>
        </div>
    </body>
</html>
