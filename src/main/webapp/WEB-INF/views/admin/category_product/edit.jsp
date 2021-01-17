cc<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="blogURL" value="/quan-tri/the-loai-san-pham/danh-sach"/>
<c:url var="editBlogURL" value="/quan-tri/the-loai-san-pham/chinh-sua"/>
<c:url var="blogAPI" value="/api/category-product"/>
<html>
<head>
<title>Chỉnh sửa thể loại SP</title>
</head>
<body>
<div class="main-content">
	<div class="main-content-inner">
		<div class="breadcrumbs" id="breadcrumbs">
			<script type="text/javascript">
				try {
					ace.settings.check('breadcrumbs', 'fixed')
				} catch (e) {
				}
			</script>

			<ul class="breadcrumb">
				<li><i class="ace-icon fa fa-home home-icon"></i> <a href="<c:url value='/trang-chu'/>">Trang chủ</a>
				</li>

				<li><a href="#">Forms</a></li>
				<li class="active">Form Elements</li>
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
					<form:form class="form-horizontal" role="form" id="formSubmit" modelAttribute="model">
						<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Tên thể loại sản phẩm</label>
								<div class="col-sm-9">
									<form:input path="name" cssClass="col-xs-10 col-sm-5"/>
								</div>
						</div>

						<div class="form-group">
						  	<label for="shortDescription" class="col-sm-3 control-label no-padding-right">Code thể loại sản phẩm:</label>
						  	<div class="col-sm-9">
						  		<form:input path="code" rows="5" cols="5" cssClass="form-control" id="shortDescription"/>
						  	</div>
						</div>
						<form:hidden path="id" id="blogId"/>
						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
											<c:if test="${not empty model.id}">
												<button class="btn btn-info" type="button" id="btnAddOrUpdateNew">
													<i class="ace-icon fa fa-check bigger-110"></i>
													Cập nhật thể loại sản phẩm
												</button>
											</c:if>
											<c:if test="${empty model.id}">
												<button class="btn btn-info" type="button" id="btnAddOrUpdateNew">
													<i class="ace-icon fa fa-check bigger-110"></i>
													Thêm thể loại sản phẩm
												</button>
											</c:if>

											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Hủy
											</button>
							</div>		
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>	

<script>
	var photoBase64 = '';
    var photoName = '';
	
	$('#btnAddOrUpdateNew').click(function (e) {
	    e.preventDefault();
	    var data = {};
	    var formData = $('#formSubmit').serializeArray();
	    $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
		if (photoBase64 != '') {
             data['photoBase64'] = photoBase64;
             data['photoName'] = photoName;
         }
	    var id = $('#blogId').val();
	    if (id == "") {
	    	addNew(data);
	    } else {
	    	updateNew(data);
	    }
	});
	
	function addNew(data) {
		$.ajax({
            url: '${blogAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${editBlogURL}?id="+result.id+"&message=insert_success";
            },
            error: function (error) {
            	window.location.href = "${blogURL}?page=1&limit=10&message=error_system";
            }
        });
	}
	
	function updateNew(data) {
		$.ajax({
            url: '${blogAPI}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${editBlogURL}?id="+result.id+"&message=update_success";
            },
            error: function (error) {
            	window.location.href = "${editBlogURL}?id="+result.id+"&message=error_system";
            }
        });
	}
	$('#uploadImage').change(function (event) {
        var reader = new FileReader();
        var file = $(this)[0].files[0];
        reader.onload = function(e){
            photoBase64 = e.target.result;
            photoName = file.name;
        };
        reader.readAsDataURL(file);
        openImage(this, "viewImage");
    });

    function openImage(input, imageView) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#' +imageView).attr('src', reader.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
</body>
</html>
