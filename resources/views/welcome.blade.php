<html>
	<head>
		<meta>
		<title>@yield('title') | Aventura Embalsa</title>

		<link rel="stylesheet" href="{{ asset('plugins/bootstrap4/css/bootstrap.css')}}">	
		<link rel="stylesheet" href="{{ asset('plugins/chosen/chosen.css')}}">
		<link rel="stylesheet" href="{{ asset('plugins/trumbowyg/dist/ui/trumbowyg.css')}}">
	</head>
	<body>
		@include('nav')
		@include('flash::message')
		<br>
		<section>
			<div class="container">
				@yield('content')				
			</div>
		</section>
		<script src="{{asset('plugins/jquery/jquery.js')}}"></script>
		<script src="{{asset('plugins/bootstrap4/js/bootstrap.js')}}"></script>
		<script src="{{asset('plugins/chosen/chosen.jquery.js')}}"></script>
		<script src="{{asset('plugins/trumbowyg/dist/trumbowyg.js')}}"></script>
		<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
		@yield('js')
	</body>

</html>