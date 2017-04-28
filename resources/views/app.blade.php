<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- TypeKit fonts -->
        <script src="https://use.typekit.net/wqg3fwg.js"></script>
        <script>try{Typekit.load({ async: true });}catch(e){}</script>

        <!-- Styles -->
        <style>
          
        </style>
    </head>
    <body>
      <!-- Loads entire app -->
      <div id="app"></div>
    </body>
    <footer>
      <script>
        window.Laravel = {!! json_encode([
            'csrfToken' => csrf_token(),
        ]) !!};
      </script>
      <link rel="stylesheet" href="{{ mix('css/app.css') }}">
      <script src="{{ mix('js/app.js') }}"></script>
    </footer>
</html>
