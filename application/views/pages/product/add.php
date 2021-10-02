<div class="container">
	<div class="row mt-4">
		<div class="col">
			<h2 class="text-center" style="color:white;">Add News</h2>
		</div>
	</div>

	<div class="row bg-light p-3 mt-4">
		<div class="col">

			<?= form_open_multipart(base_url('product/add')) ?>
				<div class="form-group row">
					<label for="name" class="col-sm-2 col-form-label font-weight-bold">Title Name</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="name">
						<?= form_error('name', '<small class="form-text text-danger">', '</small>') ?>
					</div>
				</div> 
				<div class="row">
					<div class="col-5 offset-2">
						<div class="form-group">
							<label class="font-weight-bold">Edition</label>
							<select class="form-control" name="edition">
								<option value="news" selected>News</option>
								<option value="event">Event</option>
							</select>
						</div>
					</div>
					<div class="col-5">
						<div class="form-group">
							<label class="font-weight-bold">Date</label>
							<input class="form-control" name="date" value="<?php echo date("Y-m-d");?>">
							<?= form_error('date', '<small class="form-text text-danger">', '</small>') ?>
						</div>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 col-form-label font-weight-bold">Description</label>
					<div class="col-sm-10">
						<textarea class="form-control" id="summernote" name="description" rows="3"></textarea>
						<?= form_error('description', '<small class="form-text text-danger">', '</small>') ?>
					</div>
				</div>	
				<div class="form-group row">
					<label class="col-sm-2 col-form-label font-weight-bold">Address</label>
					<div class="col-sm-10">
						<input class="form-control" id="summernote2" name="address" rows="3">
						<?= form_error('address', '<small class="form-text text-danger">', '</small>') ?>
					</div>
				</div>
				<div class="form-group row">
					<label for="" class="col-sm-2 col-form-label font-weight-bold">Image</label>
					<br>
					<div class="col-sm-10">
						<input name="image" type="file" class="form-control-file">
						<?php if($this->session->flashdata('image_error')) :  ?>
							<small class="form-text text-danger">
								<?= $this->session->flashdata('image_error') ?>
							</small>
						<?php endif ?>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<a href="<?= base_url('product') ?>" class="btn btn-secondary btn-sm">
							<i class="fa fa-arrow-left mr-1"></i>
							Back
						</a>
						<button type="submit" class="btn btn-info btn-sm float-right">
							<i class="fa fa-save mr-2"></i>
							Save
						</button>
					</div>
				</div>
			<?= form_close() ?>			
		</div>
	</div>
</div>

