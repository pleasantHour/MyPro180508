<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@ include file="/layouts/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>猫宁商城</title>

</head>
<body>
	<!-- 轮播top菜单导航引入 -->
	<jsp:include page="/jsp/site_header.jsp" />
	<!-- 轮播top菜单导航引入 -->

	<!--     轮播begin       -->
	<div class="home-hero-container container-fluid">
		<div class="home-hero">
			<div class="home-hero-slider">
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="box">
							<ul class="ull">
								<li><a href="${indexCarouselImg.href}"
									title="${indexCarouselImg.title}" target="_blank"> <img
										src="${ctximg }/images/advert/20170224/1471798318820.jpg"
										alt="${indexCarouselImg.title }"></a>
								</li>
								<li><a href="${indexCarouselImg.href}"
									title="${indexCarouselImg.title}" target="_blank"> <img
										src="${ctximg }/images/advert/20170224/1471798364441.jpg"
										alt="${indexCarouselImg.title }"></a>
								</li>
								<li><a href="${indexCarouselImg.href}"
									title="${indexCarouselImg.title}" target="_blank"> <img
										src="${ctximg }/images/advert/20170224/1471798388806.jpg"
										alt="${indexCarouselImg.title }"></a>
								</li>
								<li><a href="${indexCarouselImg.href}"
									title="${indexCarouselImg.title}" target="_blank"> <img
										src="${ctximg }/images/advert/20170224/1471798568000.jpg"
										alt="${indexCarouselImg.title }"></a>
								</li>
								<li><a href="${indexCarouselImg.href}"
									title="${indexCarouselImg.title}" target="_blank"> <img
										src="${ctximg }/images/advert/20170224/1471798587469.jpg"
										alt="${indexCarouselImg.title }"></a>
								</li>
								<li><a href="${indexCarouselImg.href}"
									title="${indexCarouselImg.title}" target="_blank"> <img
										src="${ctximg }/images/advert/20170224/1471798587971.jpg"
										alt="${indexCarouselImg.title }"></a>
								</li>
							</ul>
							<ol class="oll">
							</ol>
							<span class="left btnL glyphicon glyphicon-menu-right"></span> <span
								class="right btnL glyphicon glyphicon-menu-left"></span>
						</div>
					</div>
				</div>
			</div>
			
		</div>
		
	</div>
	<!--     轮播end         -->

	
	<myfooter> 
	</myfooter>
</body>
</html>