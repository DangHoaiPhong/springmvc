<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<script src="<c:url value="/assets/admin/js/jquery.min.js" />"></script>
    <script src="<c:url value="/assets/admin/js/popper.min.js" />"></script>
    <script src="<c:url value="/assets/admin/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/assets/admin/js/main.js" />"></script>
    <script src="<c:url value="/assets/admin/js/Chart.bundle.min.js" />"></script>
    <script src="<c:url value="/assets/admin/js/dashboard.js" />"></script>
    <script src="<c:url value="/assets/admin/js/widgets.js" />"></script>
    <script src="<c:url value="/assets/admin/js/jquery.vmap.min.js" />"></script>
    <script src="<c:url value="/assets/admin/js/jquery.vmap.sampledata.js" />"></script>
    <script src="<c:url value="/assets/admin/js/jquery.vmap.world.js" />"></script>
    <script>
        (function($) {
            "use strict";

            jQuery('#vmap').vectorMap({
                map: 'world_en',
                backgroundColor: null,
                color: '#ffffff',
                hoverOpacity: 0.7,
                selectedColor: '#1de9b6',
                enableZoom: true,
                showTooltip: true,
                values: sample_data,
                scaleColors: ['#1de9b6', '#03a9f5'],
                normalizeFunction: 'polynomial'
            });
        })(jQuery);
    </script>
