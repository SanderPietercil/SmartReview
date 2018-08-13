
	</div>
	<br><hr>
	<div class="container">
		<a href="#top">back to the top</a>
	</div>
	<div class="footer-copyright text-center py-3">© 2018 Copyright:
    <a href="http://localhost:8888/SmartReview/"> SmartReview.com</a>
    <br><br>
  </div>
</body>
</html>
<script>
	$(".nav a").on("click", function(){
		$(".nav").find(".active").removeClass("active");
		$(this).parent().addClass("active");
});
</script>