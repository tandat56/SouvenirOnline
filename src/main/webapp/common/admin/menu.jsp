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
            <a href="<c:url value='/quan-tri/nguoi-dung/danh-sach?page=1&limit=10'/>" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"></span>
                Quản lý USER
                <b class="arrow fa fa-angle-down"></b>
            </a>
        </li>
        <li>
            <a href="<c:url value='/quan-tri/the-loai-san-pham/danh-sach?page=1&limit=10'/>" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"></span>
                Quản lý thể loại SP
                <b class="arrow fa fa-angle-down"></b>
            </a>
        </li>

        <li>
            <a href="<c:url value='/quan-tri/san-pham/danh-sach?page=1&limit=10'/>" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"></span>
                Danh sách sản phẩm
                <b class="arrow fa fa-angle-down"></b>
            </a>
        </li>

        <li>
            <a href="<c:url value='/quan-tri/san-pham/san-pham-noi-bat?page=1&limit=10'/>" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"></span>
                Sản phẩm nổi bật
                <b class="arrow fa fa-angle-down"></b>
            </a>
        </li>

        <li>
            <a href="<c:url value='/quan-tri/san-pham/san-pham-moi?page=1&limit=10'/>" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"></span>
                Sản phẩm mới
                <b class="arrow fa fa-angle-down"></b>
            </a>
        </li>
        <li>
            <a href="<c:url value='/quan-tri/hoa-don/danh-sach?page=1&limit=10'/>" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"></span>
                Quản lý hóa đơn
                <b class="arrow fa fa-angle-down"></b>
            </a>
        </li>
        <li>
            <a href="<c:url value='/quan-tri/the-loai-bai-viet/danh-sach?page=1&limit=10'/>" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"></span>
                Quản lý thể loại BV
                <b class="arrow fa fa-angle-down"></b>
            </a>
        </li>

        <li>
            <a href="<c:url value='/quan-tri/bai-viet/danh-sach?page=1&limit=10'/>" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"></span>
               Quản lý bài viết
                <b class="arrow fa fa-angle-down"></b>
            </a>
        </li>
        <li>
        <a href="<c:url value='/quan-tri/silde/danh-sach?page=1&limit=10'/>" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"></span>
                Quản lý Silde
                <b class="arrow fa fa-angle-down"></b>
            </a>
        </li>

    </ul>
    <div class="sidebar-toggle sidebar-collapse">
        <i class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
</div>