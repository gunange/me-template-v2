<ul>
	<li class="header-menu">
		<span>Home</span>
	</li>
	<li>
		<a href="#">
			<i class="bi bi-grid"></i>
			<span>Dashboard</span>
		</a>
	</li>
	<li class="header-menu">
		<span>Sistem</span>
	</li>
	<li>
		<a href="<?= $this->gLink ?>ExamplePDF">
			<i class="bi bi-grid"></i>
			<span>Example PDF</span>
		</a>
	</li>
	<li>
		<a href="<?= $this->gLink ?>ExampleView">
			<i class="bi bi-grid"></i>
			<span>Example CRUD</span>
		</a>
	</li>
	

	<li>
		<a href="#!" class="sidebar-link">
			<i class="bi bi-grid"></i>
			<span>Menu 3</span>
			<span class="badge badge-pill">100</span>
		</a>
		<div class="sidebar-submenu collapse">
			<ul>
				<li>
					<a href="#">Submenu 1
						<span class="badge badge-pill badge-dark">10</span>
					</a>
				</li>
				<li>
					<a href="#">Submenu 2
						<span class="badge badge-pill badge-dark">7</span>
					</a>
				</li>
			</ul>
		</div>
	</li>

	<li>
		<a href="#!" class="sidebar-link">
			<i class="bi bi-grid"></i>
			<span>Menu 3</span>
			<span class="badge badge-pill dark">0</span>
		</a>
		<div class="sidebar-submenu collapse">
			<ul>
				<li>
					<a href="#">Submenu 1
						<span class="badge badge-pill badge-dark">10</span>
					</a>
				</li>
				<li>
					<a href="#">Submenu 2
						<span class="badge badge-pill badge-dark">7</span>
					</a>
				</li>
			</ul>
		</div>
	</li>
	<li class="header-menu">
		<span>Pengaturan</span>
	</li>
	<li>
		<a href="#" onclick="openModalShow('#modal-center', '<?= $this->gLink ?>AccountSetting/<?= $this->model->getLink() ?>')">
			<i class="bi bi-grid"></i>
			<span>Akun</span>
		</a>
	</li>
	
	</ul>