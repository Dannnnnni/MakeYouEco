<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="index.jsp"><img
			src="product-image/logo.png" alt="Logo" style="max-height: 80px;"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="#">Shop</a></li>
			</ul>

			<form class="mx-auto w-50">
				<div class="input-group">
					<input class="form-control rounded-0" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success rounded-0" type="submit">Cerca</button>
				</div>
			</form>
			<div class="navbar-nav">
				<a class="nav-link" href="cart.jsp"><i
					class="fas fa-shopping-cart"></i><span
					class="badge badge-pill badge-primary">${cart_list.size()}</span></a>
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="login.jsp">Accesso</a></li>
				</ul>
			</div>
		</div>
	</div>
</nav>