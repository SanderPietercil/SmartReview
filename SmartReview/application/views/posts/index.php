<h2><?php echo $title ?></h2>
<hr>
<?php foreach ($posts as $post) : ?>
	<div class="container marketing">
		<div class="row featurette">
			<div class="row">
				<div class="col-md-3">
					<h3 class="featurette-heading index-title"><?php echo $post['title']; ?></h3>
					<img class="post-thumb" src="<?php echo site_url(); ?>/assets/images/posts/<?php echo $post['post_image']; ?>">
				</div>
				<div class="col-md-9">
					<br><br>
					<small>Posted On <?php echo $post['created_at']; ?> in <strong><?php echo $post['name']; ?></strong>
						</small><br>
						<p class="lead"><?php echo word_limiter($post['body'], 155); ?></p>
						<br><br>
						<p><a class="btn btn-default read-more-btn" href="<?php echo site_url('/posts/'.$post['slug']); ?>">Read More</a></p>
						<hr>
				</div>
			</div>
		</div>
	</div>
<?php endforeach; ?>
<div class="pagination-links">
	<?php echo $this->pagination->create_links(); ?>
</div>