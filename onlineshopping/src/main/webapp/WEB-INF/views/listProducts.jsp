<div class="container">

	<div class="row">

		<!-- Column to display sidebar -->
		<div class="col-lg-3">
			<%@include file="./shared/sidebar.jsp"%>

		</div>
		<!-- To dispaly the actual products -->
		<div class="col-lg-9">
			<!-- Added Breadcrumb Component -->
			<div class="row">

				<div class="col-lg-12">
					<c:if test="${userClickAllProducts == true}">
						<script>
							window.categoryId = '';
						</script>
						<ol class="breadcrumb">

							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">All Products</li>
						</ol>
					</c:if>

					<c:if test="${userClickCategoryProducts == true}">
						<script>
							window.categoryId = '${category.id}';
						</script>
						<ol class="breadcrumb">

							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">Category</li>
							<li class="active">${category.name}</li>
						</ol>
					</c:if>

				</div>


			</div>

			<div class="row">
				<div class="col-12">
					<table id="productListTable"
						class="table table-striped table-bordered">
						<thead>
							<tr>
								<th></th>
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty. Available</th>
								<th></th>

							</tr>
						</thead>

						<tfoot>
							<tr>
								<th></th>
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty. Available</th>
								<th></th>

							</tr>


						</tfoot>



					</table>

				</div>


			</div>

		</div>


	</div>


</div>