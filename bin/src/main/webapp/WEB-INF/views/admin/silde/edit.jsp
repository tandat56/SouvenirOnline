<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="sildeURL" value="/quan-tri/silde/danh-sach"/>
<c:url var="editSildeURL" value="/quan-tri/silde/chinh-sua"/>
<c:url var="sildeAPI" value="/api/silde"/>
<html>
<head>
<title>Chỉnh sửa silde</title>
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
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Tên sản phẩm</label>
								<div class="col-sm-9">
									<form:input path="name" cssClass="col-xs-10 col-sm-5"/>
								</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right">Ảnh sản phẩm:</label>
							<div class="col-sm-4">
								<input type="file" id="uploadImage"/>
							</div>
							<div class="col-sm-5" style="margin-bottom: 10px">
								<c:if test="${not empty model.image}">
									<c:set var="image" value="/repository/${model.image}"/>
									<img src="${image}" id="viewImage" width="300px" height="300px">
								</c:if>
								<c:if test="${empty model.image}">
									<img src="<c:url value='/template/image/default.png'/>" id="viewImage" width="300px" height="300px">
								</c:if>
							</div>
							<br/>
						</div>




						<div class="form-group">
						  	<label for="shortDescription" class="col-sm-3 control-label no-padding-right">Nội dung:</label>
						  	<div class="col-sm-9">
						  		<form:textarea path="content" rows="5" cols="10" cssClass="form-control" id="shortDescription"/>
						  	</div>
						</div>
						<div class="form-group">
						  	<label for="content" class="col-sm-3 control-label no-padding-right">Chú thích:</label>
						  	<div class="col-sm-9">
						  		<form:textarea path="caption" rows="5" cols="10" cssClass="form-control" id="content"/>
						  	</div>
						</div>
						<form:hidden path="id" id="sildeId"/>
						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
											<c:if test="${not empty model.id}">
												<button class="btn btn-info" type="button" id="btnAddOrUpdateNew">
													<i class="ace-icon fa fa-check bigger-110"></i>
													Cập nhật silde
												</button>
											</c:if>
											<c:if test="${empty model.id}">
												<button class="btn btn-info" type="button" id="btnAddOrUpdateNew">
													<i class="ace-icon fa fa-check bigger-110"></i>
													Thêm silde
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
	    var id = $('#sildeId').val();
	    if (id == "") {
	    	addSilde(data);
	    } else {
	    	updateSilde(data);
	    }
	});
	
	function addSilde(data) {
		$.ajax({
            url: '${sildeAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${editSildeURL}?id="+result.id+"&message=insert_success";
            },
            error: function (error) {
            	window.location.href = "${sildeURL}?page=1&limit=10&message=error_system";
            }
        });
	}
	
	function updateSilde(data) {
		$.ajax({
            url: '${sildeAPI}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${editSildeURL}?id="+result.id+"&message=update_success";
            },
            error: function (error) {
            	window.location.href = "${editSildeURL}?id="+result.id+"&message=error_system";
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
