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
						<ol class="breadcrumb">

							<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
							<li class="breadcrumb-item active">All Products</li>
						</ol>
					</c:if>
					
					<c:if test="${userClickCategoryProducts == true}">
						<ol class="breadcrumb">

							<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
							<li class="breadcrumb-item">Category</li>
							<li class="breadcrumb-item active">${category.name}</li>
						</ol>
					</c:if>

				</div>


			</div>



		</div>


	</div>


</div>