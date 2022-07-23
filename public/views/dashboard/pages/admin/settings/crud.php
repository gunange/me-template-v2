<?php if ($this->setPage == "add"): ?>
	<!-- UP -->
	<form class="modal-content" method="POST">
		<div class="modal-header">
			<pre class="modal-title fs-6 text-purple"><i class="bi bi-node-plus-fill"></i> Add</pre>
		</div>
		<div class="modal-body">
			<div class="row">
				<div class="col-md-12 mb-3">
					<label class="form-label">Nama User</label>
					<input class="form-control form-control-sm" type="text" placeholder="Nama Lengkap" name="nama" required autocomplete="off">
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Tutup</button>
			<button type="submit" class="btn btn-sm bg-purple text-white" name="add">Submit</button>
		</div>
	</form>
<?php elseif ($this->setPage == "up"): ?>
	<!-- UP -->
	<form class="modal-content" method="POST">
		<div class="modal-header">
			<pre class="modal-title fs-6 text-purple"><i class="bi bi-vector-pen"></i> Update</pre>
		</div>
		<div class="modal-body">
			
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Tutup</button>
			<button type="submit" class="btn btn-sm bg-purple text-white" name="up" value="<?= $this->data['id'] ?>">Update</button>
		</div>
	</form>

<?php elseif ($this->setPage == "del"): ?>
	<!-- DEL -->
	<form class="modal-content" method="POST">
		<div class="modal-header">
			<pre class="modal-title fs-6 text-red"><i class="bi bi-trash-fill"></i> Delete</pre>
		</div>
		<div class="modal-body">
			<p class="fs-6">Apakah anda akan menghapus <span class="text-red-400"><?= $this->data['nama'] ?></span> ?</p>

		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Tutup</button>
			<button type="submit" class="btn btn-sm btn-primary" name="del" value="<?= $this->data['id_login'] ?>" >Hapus</button>
		</div>
	</form>

<?php elseif ($this->setPage == "Pdf"): ?>
	<!-- PDF -->
	<form class="modal-content" method="POST">
		<div class="modal-header">
			<pre class="modal-title fs-6 text-red"><i class="bi bi-trash-fill"></i> Delete</pre>
		</div>
		<div class="modal-body">
			
			<iframe  width="100%" height=500px" frameborder="0" src="<?= $this->gLink ?>PdfExample"></iframe>

		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Tutup</button>
		</div>
	</form>

<?php elseif ($this->setPage == "upAkun"): ?>
	<!-- UPDATE AKUN -->
	<form class="modal-content" method="POST">
		<div class="modal-header">
			<pre class="modal-title fs-6 text-cyan"><i class="bi bi-person-bounding-box"></i> Akun</pre>
		</div>
		<div class="modal-body">
			<div class="row">
				<div class="col-md-12 mb-3">
					<label>Username</label>
					<input type="text" class="form-control form-control-sm" name="username" placeholder="Username Anda" value="<?= $this->data['username'] ?>" autocomplete="off">
				</div>
				<div class="col-md-12 mb-3">
					<div class="form-check form-switch">
						<input class="form-check-input cursor-pointer" type="checkbox" id="enable_password" onclick="enablePassword(this,'password');">
						<label class="form-check-label cursor-pointer" for="enable_password">Ganti Password?</label>
					</div>
					<input type="password" class="form-control form-control-sm" id="password" placeholder="Password" name="password" required disabled autocomplete="off">
				</div>
			</div>

		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Tutup</button>
			<button type="submit" class="btn btn-sm btn-primary" name="upAkun" value="<?= $this->data['id_login'] ?>" >Update</button>
		</div>
	</form>

<?php else: ?>
	<div class="modal-content">
		<div class="modal-header">
			<pre class="modal-title fs-6 text-red-400"><i class="bi bi-exclamation-square-fill"></i> Oops</pre>
		</div>
		<div class="modal-body text-center text-red-300 fs-6">
			<p>Anda tidak dapat mengakses halaman ini</p>
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Tutup</button>
		</div>
	</div>
	<?php endif; ?>