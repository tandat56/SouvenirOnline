<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url var="orderAPI" value="/api/order"/>
<c:url var="orderURL" value="/quan-tri/hoa-don/danh-sach"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Danh sách bài viết</title>
	</head>

	<body>
		<div class="main-content">
		<form action="<c:url value='/quan-tri/hoa-don/danh-sach'/>" id="formSubmit" method="get">
			
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="<c:url value='/trang-chu'/>">Trang chủ</a>
							</li>
						</ul>
						<!-- /.breadcrumb -->
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<c:if test="${not empty message}">
									<div class="alert alert-${alert}">
			  							${message}
									</div>
								</c:if>
								<div class="widget-box table-filter">
									<div class="table-btn-controls">
										<div class="pull-right tableTools-container">
											<div class="dt-buttons btn-overlap btn-group">
												<button id="btnDelete" type="button" onclick="warningBeforeDelete()"
														class="dt-button buttons-html5 btn btn-white btn-primary btn-bold" data-toggle="tooltip" title='Xóa bài viết'>
																<span>
																	<i class="fa fa-trash-o bigger-110 pink"></i>
																</span>
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th><input type="checkbox" id="checkAll"></th>
														<th>Name</th>
														<th>Tổng tiền</th>
														<th>Địa chỉ</th>
														<th>Email</th>
														<th>Điện thoại</th>
														<th>Số lượng</th>
														<th>Người tạo</th>
														<th>Ngày tạo</th>
														<th class="text-center">Xem hóa đơn chi tiết</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="item" items="${model.listResult}">
														<tr>
															<td class="text-center"><input type="checkbox" id="checkbox_${item.id}" value="${item.id}"></td>
															<td  class="text-center">${item.name}</td>
															<td  class="text-center">${item.total}</td>
															<td>${item.address}</td>
															<td >${item.email}</td>
															<td class="text-center">${item.phone}</td>
															<td class="text-center">${item.quanty}</td>
															<td class="text-center">${item.createdBy}</td>
															<td class="text-center">${item.createdDate}</td>
															<td class="text-center">
																<c:url var="updateOrderURL" value="/quan-tri/hoa-don-chi-tiet/danh-sach">
																	<c:param name="id" value="${item.id}"/>															
																</c:url>																
																<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
																   title="Hóa đơn chi tiết" href='${updateOrderURL}'><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
																</a>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<ul class="pagination" id="pagination"></ul>
											<input type="hidden" value="" id="page" name="page"/>
											<input type="hidden" value="" id="limit" name="limit"/>		
									     									
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
		</form>
		</div>
		<!-- /.main-content -->
		<script>
			var totalPages = ${model.totalPage};
			var currentPage = ${model.page};
			$(function () {
		        window.pagObj = $('#pagination').twbsPagination({
		            totalPages: totalPages,
		            visiblePages: 10,
		            startPage: currentPage,
		            onPageClick: function (event, page) {
		            	if (currentPage !== page) {
		            		$('#limit').val(10);
							$('#page').val(page);
							$('#formSubmit').submit();
						}
		            }
		        });
		    });
			
			function warningBeforeDelete() {
					swal({
					  title: "Xác nhận xóa",
					  text: "Bạn có chắc chắn muốn xóa hay không",
					  type: "warning",
					  showCancelButton: true,
					  confirmButtonClass: "btn-success",
					  cancelButtonClass: "btn-danger",
					  confirmButtonText: "Xác nhận",
					  cancelButtonText: "Hủy bỏ",
					}).then(function(isConfirm) {
					  if (isConfirm) {
							var ids = $('tbody input[type=checkbox]:checked').map(function () {
					            return $(this).val();
					        }).get();
							deleteBlog(ids);
					  }
					});
			} 
			function deleteBlog(data) {
		        $.ajax({
		            url: '${orderAPI}',
		            type: 'DELETE',
		            contentType: 'application/json',
		            data: JSON.stringify(data),
		            success: function (result) {
		                window.location.href = "${orderURL}?page=1&limit=10&message=delete_success";
		            },
		            error: function (error) {
		            	window.location.href = "${orderURL}?page=1&limit=10&message=error_system";
		            }
		        });
		    }
		</script>
	</body>
	</html>