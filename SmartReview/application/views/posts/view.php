<h2><?php echo $post['title']; ?></h2>

<small class="post-date">Posted On <?php echo $post['created_at']; ?></small><br><br>
<div class="col-md-3">
	<img class="post-thumb" src="<?php echo site_url(); ?>/assets/images/posts/<?php echo $post['post_image']; ?>">
</div>

<div class="review-body col-md-9">
	<?php echo $post['body']; ?>
</div>

<hr>
<?php if($this->session->userdata('logged_in')) : ?>
	<a class="btn btn-default edit-btn pull-left" href="<?php echo base_url(); ?>posts/edit/<?php echo $post['slug']; ?>">Edit</a>
	<?php echo form_open('/posts/delete/'.$post['id']); ?>

	<input type="submit" value="Delete" class="btn btn-danger delete-btn">
<?php endif; ?>
</form>

<hr>

<h3>Comments</h3>
<!-- Display comments -->
<?php if($comments) : ?>
	<?php foreach($comments as $comment) : ?>
		<div class="well">
			<h5><?php echo $comment['body']; ?> [by <strong><?php echo $comment['name']; ?></strong>]</h5>
		</div>
	<?php endforeach; ?>
<?php else : ?>
	<p>Be the first to comment to this review!</p>
<?php endif; ?>

<hr>

<h3>Add Comment</h3>
<?php echo validation_errors(); ?>
<?php echo form_open('comments/create/'.$post['id']); ?>
	<div class="form-group">
		<label>Name</label>
		<input type="text" name="name" class="form-control">
	</div>
	<div class="form-group">
		<label>Email</label>
		<input type="text" name="email" class="form-control">
	</div>
	<div class="form-group">
		<label>Message</label>
		<textarea type="text" name="body" class="form-control"></textarea>
	</div>
	<input type="hidden" name="slug" value="<?php echo $post['slug']; ?>">
	<button type="submit" class="btn btn-primary">Submit Comment</button>
</form>