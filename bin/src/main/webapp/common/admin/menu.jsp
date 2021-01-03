<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="sidebar" class="sidebar                  responsive                    ace-save-state">
    <script type="text/javascript">
        try{ace.settings.loadState('sidebar')}catch(e){}
    </script>
    <div class="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large">
            <button class="btn btn-success">
                <i class="ace-icon fa fa-signal"></i>
            </button>

            <button class="btn btn-info">
                <i class="ace-icon fa fa-pencil"></i>
            </button>

            <button class="btn btn-warning">
                <i class="ace-icon fa fa-users"></i>
            </button>

            <button class="btn btn-danger">
                <i class="ace-icon fa fa-cogs"></i>
            </button>
        </div>
        <div class="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>
        </div>
    </div>
    <ul class="nav nav-list">
        <li>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"></span>
                Sản phẩm 
                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>
            <ul class="submenu">
                <li>
                    <a href="<c:url value='/quan-tri/san-pham/danh-sach?page=1&limit=10'/>">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Danh sách All
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
            <ul class="submenu">
                <li>
                    <a href="<c:url value='/quan-tri/san-pham/san-pham-noi-bat?page=1&limit=10'/>">
                        <i class="menu-icon fa fa-caret-right"></i>
                        QLSP nổi bật
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
            <ul class="submenu">
                <li>
                    <a href="<c:url value='/quan-tri/san-pham/san-pham-moi?page=1&limit=10'/>">
                        <i class="menu-icon fa fa-caret-right"></i>
                        QLSP mới
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>

        <li >
            <a href="#" class="dropdown-toggle">
             <i class="menu-icon fa fa-list"></i>    
                <span class="menu-text"></span>
                Bài viết
                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>
            <ul class="submenu">
                <li>
                    <a href="<c:url value='/quan-tri/bai-viet/danh-sach?page=1&limit=10'/>">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Danh sách
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>

        
        <li>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"></span>
                Silde
                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>
            <ul class="submenu">
                <li>
                    <a href="<c:url value='/quan-tri/silde/danh-sach?page=1&limit=10'/>">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Sildes
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>



        
        <li >
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"></span>
                Kho hàng
                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>
            <ul class="submenu">
                <li>
                    <a href="<c:url value='/quan-tri/kho-hang/ao/danh-sach?page=1&limit=10'/>">
                    <i class="menu-icon fa fa-caret-right"></i>
                        Kho Áo
                    </a>
                    <b class="arrow"></b>
                </li>            
                <li>
                <a href="<c:url value='/quan-tri/kho-hang/balo/danh-sach?page=1&limit=10'/>">
                    <i class="menu-icon fa fa-caret-right"></i>
                       Kho Balo
                </a>
                <b class="arrow"></b>
                </li>
            </ul>
        </li>
    </ul>
    <div class="sidebar-toggle sidebar-collapse">
        <i class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
</div>