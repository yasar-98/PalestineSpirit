<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
    
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="financial success, On Top of the World, financial success, financial success, About us, Adventure, Cities">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Home</title>
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/Home.css" media="screen">
    <script class="u-script" type="text/javascript" src="js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.19.1, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lily+Script+One:400">
    
    
    
    
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Site1",
		"sameAs": []
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-overlap u-overlap-transparent"><header class="u-align-center-xs u-clearfix u-header u-header" id="sec-4f75"><div class="u-clearfix u-sheet u-sheet-1">
        <form action="#" method="get" class="u-border-0 u-border-white u-radius-24 u-search u-search-right u-search-1" style="margin-right: 40px;">
         
        </form>
        

        <nav class="u-align-left u-menu u-menu-dropdown u-nav-spacing-25 u-offcanvas u-menu-1">
          <div class="menu-collapse">
            <a class="u-button-style u-nav-link" href="#" style="padding: 4px 0px; font-size: calc(1em + 8px);">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 302 302" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-7b92"></use></svg>
              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-7b92" x="0px" y="0px" viewBox="0 0 302 302" style="enable-background:new 0 0 302 302;" xml:space="preserve" class="u-svg-content"><g><rect y="36" width="302" height="30"></rect><rect y="236" width="302" height="30"></rect><rect y="136" width="302" height="30"></rect>
</g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg>
            </a>
          </div>
				<c:choose>
					<c:when test="${ role == 1 }">
						<div class="u-custom-menu u-nav-container">
							<ul class="u-nav u-spacing-2 u-unstyled u-nav-1">
								<li class="u-nav-item"><a
									class="u-border-2 u-border-active-white u-border-hover-white u-button-style u-nav-link u-text-active-white u-text-hover-white u-text-white"
									href="/" style="padding: 10px 20px;">Home</a></li>
								<li class="u-nav-item"><a
									class="u-border-2 u-border-active-white u-border-hover-white u-button-style u-nav-link u-text-active-white u-text-hover-white u-text-white"
									href="/userlist" style="padding: 10px 20px;">user list</a></li>
								<li class="u-nav-item"><a
									class="u-border-2 u-border-active-white u-border-hover-white u-button-style u-nav-link u-text-active-white u-text-hover-white u-text-white"
									href="/createsite" style="padding: 10px 20px;">Sites</a></li>
							</ul></div>
					</c:when>
					<c:when test="${ role == 2 }">
						<div class="u-custom-menu u-nav-container">
							<ul class="u-nav u-spacing-2 u-unstyled u-nav-1">
								<li class="u-nav-item"><a
									class="u-border-2 u-border-active-white u-border-hover-white u-button-style u-nav-link u-text-active-white u-text-hover-white u-text-white"
									href="/" style="padding: 10px 20px;">Home</a></li>
								<li class="u-nav-item"><a
									class="u-border-2 u-border-active-white u-border-hover-white u-button-style u-nav-link u-text-active-white u-text-hover-white u-text-white"
									href="/trips" style="padding: 10px 20px;">TIRPS</a></li>
							</ul></div>
					</c:when>
					<c:when test="${ role == 3 || role == 4}">
						<div class="u-custom-menu u-nav-container">
							<ul class="u-nav u-spacing-2 u-unstyled u-nav-1">
								<li class="u-nav-item"><a
									class="u-border-2 u-border-active-white u-border-hover-white u-button-style u-nav-link u-text-active-white u-text-hover-white u-text-white"
									href="/" style="padding: 10px 20px;">Home</a></li>
								<li class="u-nav-item"><a
									class="u-border-2 u-border-active-white u-border-hover-white u-button-style u-nav-link u-text-active-white u-text-hover-white u-text-white"
									href="/tours" style="padding: 10px 20px;">Tours</a></li>
							</ul></div>
					</c:when>

				</c:choose>
          
          <div class="u-custom-menu u-nav-container-collapse">
            
            <div class="u-align-center u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html" style="padding: 10px 20px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Tours.html" style="padding: 10px 20px;">Tours</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Contact.html" style="padding: 10px 20px;">Contact</a>
</li></ul>
              </div>
              
            </div> 
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>

        </nav>

        <a href="/"><h6 class="u-custom-font u-text u-text-white u-text-1">Palestine Spirit</h6></a>
						<c:choose>
					<c:when test="${ role == 1 || role == 2 || role == 3}">
					        <a href="/logout"><button type="button" class="btn btn-primary btn-sm" style="position: absolute; right: -80; top: 38%;">logout <c:out value="${ user.username }"></c:out></button></a></div>
					
					</c:when>
					<c:otherwise>
        <a href="/sign"><button type="button" class="btn btn-primary btn-sm" style="position: absolute; right: -80; top: 38%;">Login/Register</button></a></div>
    					   </c:otherwise> </c:choose>
    
    </header>
    <section class="u-align-center u-clearfix u-section-1" id="carousel_4ddd">
      <img class="u-image u-image-1" src="images/default-image.jpg" data-image-width="2000" data-image-height="1333">
      <div id="carousel-bd35" data-interval="5000" data-u-ride="carousel" class="u-carousel u-expanded-width u-slider u-slider-1">
        <ol class="u-absolute-hcenter u-carousel-indicators u-carousel-indicators-1">
          <li data-u-target="#carousel-bd35" class="u-active u-active-grey-25 u-shape-circle u-white" data-u-slide-to="0" style="width: 10px; height: 10px;"></li>
          <li data-u-target="#carousel-bd35" class="u-active-grey-25 u-shape-circle u-white" data-u-slide-to="1" style="width: 10px; height: 10px;"></li>
          <li data-u-target="#carousel-bd35" class="u-active-grey-25 u-shape-circle u-white" data-u-slide-to="2" style="width: 10px; height: 10px;"></li>
          <li data-u-target="#carousel-bd35" class="u-active-grey-25 u-shape-circle u-white" data-u-slide-to="3" style="width: 10px; height: 10px;"></li>
        </ol>
        <div class="u-carousel-inner" role="listbox">
          <div class="u-active u-carousel-item u-container-style u-expanded-width u-image u-shading u-slide u-image-2" data-image-width="1280" data-image-height="854">
            <div class="u-container-layout u-container-layout-1">
              <div class="u-align-center u-container-style u-group u-shape-rectangle u-group-1" data-animation-name="fadeIn" data-animation-duration="1000" data-animation-delay="1000" data-animation-direction="Up">
                <div class="u-container-layout u-valign-top u-container-layout-2">
                  <h2 class="u-align-center u-text u-text-body-alt-color u-text-1">Bethlehem</h2>
                </div>
              </div>
            </div>
          </div>
          <div class="u-align-center u-carousel-item u-container-style u-image u-shading u-slide u-image-3" data-image-width="1280" data-image-height="720">
            <div class="u-container-layout u-valign-middle u-container-layout-3">
              <div class="u-container-style u-group u-shape-rectangle u-group-2" data-animation-name="fadeIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="Up">
                <div class="u-container-layout u-valign-top u-container-layout-4">
                  <h2 class="u-align-center u-text u-text-body-alt-color u-text-3">On Top of the World</h2>
                </div>
              </div>
            </div>
          </div>
          <div class="u-carousel-item u-container-style u-expanded-width u-image u-shading u-slide u-image-4" data-image-width="1600" data-image-height="1067">
            <div class="u-container-layout u-container-layout-5">
              <div class="u-align-center u-container-style u-group u-shape-rectangle u-group-3" data-animation-name="fadeIn" data-animation-duration="1000" data-animation-delay="1000" data-animation-direction="Up">
                <div class="u-container-layout u-valign-top u-container-layout-6">
                  <h2 class="u-align-center u-text u-text-body-alt-color u-text-5">Bethlehem</h2>
                </div>
              </div>
            </div>
          </div>
          <div class="u-carousel-item u-container-style u-expanded-width u-image u-shading u-slide u-image-5" data-image-width="960" data-image-height="544">
            <div class="u-container-layout u-container-layout-7">
              <div class="u-align-center u-container-style u-group u-shape-rectangle u-group-4" data-animation-name="fadeIn" data-animation-duration="1000" data-animation-delay="1000" data-animation-direction="Up">
                <div class="u-container-layout u-valign-top u-container-layout-8">
                  <h2 class="u-align-center u-text u-text-body-alt-color u-text-7">Jericho</h2>
                </div>
              </div>
            </div>
          </div>
        </div>
        <a class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-spacing-12 u-text-body-alt-color u-carousel-control-1" href="#carousel-bd35" role="button" data-u-slide="prev">
          <span aria-hidden="true">
            <svg viewBox="0 0 8 8"><path d="M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z"></path></svg>
          </span>
          <span class="sr-only">
            <svg viewBox="0 0 8 8"><path d="M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z"></path></svg>
          </span>
        </a>
        <a class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-spacing-12 u-text-body-alt-color u-carousel-control-2" href="#carousel-bd35" role="button" data-u-slide="next">
          <span aria-hidden="true">
            <svg viewBox="0 0 8 8"><path d="M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z"></path></svg>
          </span>
          <span class="sr-only">
            <svg viewBox="0 0 8 8"><path d="M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z"></path></svg>
          </span>
        </a>
        
      </div>
    </section>
    <section class="u-align-center u-clearfix u-section-2" id="sec-f2e5">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <h1 class="u-text u-text-1">About us</h1>
        <p class="u-text u-text-2">A Palestinian site that links tour guides in Palestine with visitors in order to stimulate tourism in Palestine in the easiest possible way and at a low cost. <br>
          The idea for the site came after tourism was affected by several factors, the most important of which are the Corona virus and the Israeli occupation.</p>
      </div>
    </section>
    <section class="u-clearfix u-white u-section-3" id="carousel_fc26">
      <div class="u-clearfix u-sheet u-sheet-1">
        <img src="images/7d00f41ea051740564f26d37fe44fb1a.jpeg" alt="" class="u-expanded-height-xs u-image u-image-default u-image-1" imgwidth="1980" imgheight="1638">
        <img class="u-absolute-hcenter u-expanded-height-lg u-expanded-height-md u-expanded-height-sm u-expanded-height-xl u-hidden-xs u-image u-image-2" src="images/8e61c5167b16b5dfc1d6e55479a01bb7.png" imgwidth="1980" imgheight="1200">
        <div class="u-container-style u-group u-shape-rectangle u-similar-fill u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <img src="images/7b75aee5633c9dc9e1407ce835892bdb.png" alt="" class="u-image u-image-contain u-image-default u-image-3" imgwidth="392" imgheight="518">
            <h4 class="u-align-center u-text u-text-white u-text-1">it's time for great</h4>
            <h1 class="u-align-center u-custom-font u-expanded-width-md u-text u-text-white u-text-2">Adventure</h1>
            <a href="/sign" class="u-border-2 u-border-white u-btn u-button-style u-custom u-btn-1">start now</a>
          </div>
        </div>
        
      </div>
    </section>
    <section class="u-clearfix u-white u-section-4" id="carousel_13f5" style="margin-bottom: -400px;">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-disable-padding u-expanded-width u-gutter-30 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-align-center u-container-style u-layout-cell u-left-cell u-similar-fill u-size-15 u-size-30-md u-layout-cell-1">
                <div class="u-container-layout u-valign-top u-container-layout-1"><span class="u-icon u-icon-circle u-text-palette-1-base u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 392.362 392.362"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-eb1e"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-eb1e" x="0px" y="0px" viewBox="0 0 392.362 392.362" style="enable-background:new 0 0 392.362 392.362;" xml:space="preserve" class="u-svg-content"><g><g><path d="M74.832,334.417c-0.125-0.112-0.254-0.219-0.388-0.321c-4-3.32-8-6.88-11.68-10.56c-2.338-2.313-6.102-2.313-8.44,0    c-2.34,2.343-2.34,6.137,0,8.48c4,4,8,7.72,12.48,11.32c2.463,2.217,6.257,2.017,8.474-0.446    C77.494,340.427,77.295,336.634,74.832,334.417z"></path>
</g>
</g><g><g><path d="M12.038,156.534c-3.128-1.093-6.55,0.558-7.643,3.686c-0.162,0.464-0.267,0.947-0.311,1.436    c-1.2,5.48-2.12,11.04-2.8,16.6c-0.428,3.252,1.834,6.245,5.08,6.72h0.76c3.037,0.002,5.596-2.265,5.96-5.28    c0.64-5.2,1.52-10.44,2.64-15.52C16.817,161.048,15.166,157.626,12.038,156.534z"></path>
</g>
</g><g><g><path d="M45.004,302.616c-3.08-4.24-6-8.64-8.68-13.12c-1.694-2.848-5.376-3.784-8.224-2.09c-0.005,0.003-0.011,0.006-0.016,0.01    c-2.848,1.694-3.784,5.376-2.09,8.224c0.003,0.005,0.006,0.011,0.01,0.016c2.88,4.8,6,9.52,9.32,14.04    c2.047,2.606,5.819,3.058,8.425,1.011C46.228,308.759,46.777,305.224,45.004,302.616z"></path>
</g>
</g><g><g><path d="M24.084,264.776c-1.92-4.84-3.68-9.84-5.16-14.88c-0.923-3.182-4.252-5.014-7.434-4.091    c-0.056,0.016-0.111,0.033-0.166,0.051c-3.149,0.962-4.934,4.283-4,7.44c1.6,5.36,3.44,10.72,5.52,16    c1.248,3.104,4.776,4.608,7.88,3.36S25.332,267.88,24.084,264.776z"></path>
</g>
</g><g><g><path d="M27.664,115.396c-2.96-1.491-6.569-0.3-8.06,2.66c-2.52,5-4.84,10.16-6.88,15.4c-1.203,3.07,0.298,6.536,3.36,7.76    c3.081,1.22,6.568-0.288,7.788-3.369c0.004-0.01,0.008-0.021,0.012-0.031c1.92-4.88,4-9.72,6.44-14.36    C31.815,120.496,30.624,116.888,27.664,115.396z"></path>
</g>
</g><g><g><path d="M13.286,223.033c-0.001-0.005-0.001-0.011-0.002-0.016c-0.64-5.2-1.08-10.48-1.28-15.68    c-0.121-3.314-2.906-5.901-6.22-5.78c-3.314,0.121-5.901,2.906-5.78,6.22c0,5.6,0.64,11.24,1.36,16.8    c0.41,2.908,2.865,5.091,5.8,5.16h0.92C11.372,229.322,13.701,226.32,13.286,223.033z"></path>
</g>
</g><g><g><path d="M172.464,22.876c-0.32-3.314-3.266-5.74-6.58-5.42c-5.56,0.56-11.16,1.36-16.68,2.44c-3.314,0.309-5.749,3.246-5.44,6.56    c0.309,3.314,3.246,5.749,6.56,5.44l-0.04-0.16h1.16c5.16-1,10.4-1.76,15.6-2.28C170.358,29.136,172.784,26.19,172.464,22.876z"></path>
</g>
</g><g><g><path d="M53.724,79.096c-2.496-2.209-6.311-1.976-8.52,0.52c-3.68,4.2-7.2,8.64-10.48,13.2c-1.944,2.683-1.345,6.435,1.339,8.379    c1.019,0.738,2.243,1.137,3.501,1.141v0.08c1.931,0.007,3.747-0.916,4.88-2.48c3.08-4.24,6.36-8.4,9.8-12.32    C56.453,85.12,56.22,81.306,53.724,79.096z"></path>
</g>
</g><g><g><path d="M212.004,18.456c-5.52-0.84-11.16-1.44-16.76-1.76c-3.314-0.199-6.161,2.326-6.36,5.64    c-0.199,3.314,2.326,6.161,5.64,6.36c5.28,0.4,10.52,0.96,15.68,1.76h0.92c3.314,0.243,6.197-2.246,6.44-5.56    C217.807,21.583,215.318,18.699,212.004,18.456z"></path>
</g>
</g><g><g><path d="M87.799,50.507c-1.877-2.549-5.411-3.202-8.075-1.491c-4.6,3.16-9.12,6.6-13.44,10.16c-2.552,2.121-2.901,5.908-0.78,8.46    c2.121,2.552,5.908,2.901,8.46,0.78c4-3.36,8.24-6.56,12.56-9.52C89.193,56.932,89.763,53.176,87.799,50.507z"></path>
</g>
</g><g><g><g><path d="M107.924,45.656c-0.02,0-0.039-0.004-0.059-0.004c-0.021,0-0.041,0.004-0.061,0.004H107.924z"></path><path d="M129.081,31.602c-0.877-3.195-4.179-5.075-7.375-4.197c-0.281,0.077-0.556,0.175-0.823,0.292     c-5.24,1.92-10.48,4-15.52,6.52c-3.005,1.398-4.307,4.967-2.909,7.971c0.98,2.107,3.09,3.453,5.41,3.465     c0.866-0.017,1.719-0.218,2.499-0.596c4.72-2.24,9.6-4.28,14.52-6.08C128.08,38.099,129.959,34.797,129.081,31.602z"></path>
</g>
</g>
</g><g><g><path d="M201.624,378.676c-0.21-3.314-3.066-5.83-6.38-5.62c-5.24,0.4-10.52,0.52-15.76,0.36c-3.314-0.088-6.072,2.526-6.16,5.84    s2.526,6.072,5.84,6.16h5.08c4,0,8,0,11.76-0.36C199.318,384.847,201.834,381.99,201.624,378.676z"></path>
</g>
</g><g><g><path d="M358.664,239.676c-3.214-0.817-6.483,1.126-7.3,4.34c-1.28,5.08-2.84,10.12-4.6,15.04c-1.043,3.09,0.573,6.448,3.64,7.56    c3.119,1.119,6.555-0.503,7.674-3.622c0.002-0.006,0.004-0.012,0.006-0.018c1.88-5.28,3.52-10.68,4.92-16    C363.822,243.762,361.878,240.494,358.664,239.676z"></path>
</g>
</g><g><g><path d="M366.324,170.976c-0.92-5.52-2.08-11.08-3.48-16.48c-0.958-3.172-4.307-4.967-7.479-4.008    c-3.007,0.908-4.804,3.982-4.121,7.048c1.32,5.04,2.4,10.24,3.28,15.4c0.517,2.827,2.966,4.89,5.84,4.92h1    C364.633,177.325,366.853,174.246,366.324,170.976z"></path>
</g>
</g><g><g><path d="M391.825,102.109c-0.282-0.613-0.668-1.172-1.141-1.652l-10.6-11.04c-1.518-1.516-3.749-2.07-5.8-1.44l-19.12,5.8    l-22.4-23.76l50.28-28c2.93-1.349,4.211-4.818,2.861-7.747c-0.282-0.613-0.668-1.172-1.141-1.652l-14.12-14.12    c-1.539-1.479-3.763-2.001-5.8-1.36l-63.72,19.28l-21.44-22.76c-5.464-6.318-14.359-8.429-22.08-5.24h-0.36    c-5.821,2.396-10.444,7.019-12.84,12.84c-0.604,1.52-1.033,3.103-1.28,4.72l-2.44-0.84c-3.159-1.016-6.544,0.721-7.56,3.88    c-1.016,3.159,0.721,6.544,3.88,7.56c3.08,1,6.16,2.12,9.24,3.28c0.927,1.45,2.014,2.792,3.24,4l22.6,21.44l-6.48,21.4    c-63.378-45.209-151.405-30.48-196.614,32.898S38.51,271,101.888,316.209c63.378,45.209,151.405,30.48,196.614-32.898    c36.052-50.541,34.794-118.718-3.098-167.894l10.24-18.48l23.76,22.4l-5.72,18.92c-0.689,2.079-0.147,4.369,1.4,5.92    c0,0,11.72,11.6,12,12c2.771,1.606,6.32,0.662,7.927-2.109c0.025-0.043,0.05-0.087,0.073-0.131l15.64-28.68l28.24-15.4    C391.894,108.507,393.175,105.038,391.825,102.109z M93.164,110.016c24.115-24.104,56.824-37.631,90.92-37.6    c2.667,0,5.333,0.08,8,0.24c22.68,20.92,16,40,0.8,57.2c-8.97,9.513-18.593,18.388-28.8,26.56c-14.76,12.56-28.52,24.28-33.72,36    c-6.16,13.92-1.64,26.52,23.24,37.52c12.44,5.52,19.2,9.8,21.84,13.04c0.039,0.047,0.077,0.08,0.116,0.109    c-0.082,0.025-0.165,0.052-0.276,0.091c-6.024,2.294-12.436,3.394-18.88,3.24c-30.16,1.28-51.64-18-68.32-32.92    c-12-10.68-21.96-19.56-32.32-19.64C57.476,162.257,70.795,132.401,93.164,110.016z M313.124,201.136h0.04    c-0.018,55.75-35.857,105.176-88.84,122.52c-1.488-9.375,0.246-18.978,4.92-27.24c6.338-10.179,14.47-19.123,24-26.4    c36.92-30.8,39-48,40.6-61.24c1-8.36,1.76-14.6,18.28-23.68C312.787,190.417,313.121,195.774,313.124,201.136z M305.684,157.856    c1.788,5.036,3.257,10.18,4.4,15.4c-25.16,12.8-26.28,21.92-27.8,34.36c-1.36,11.2-3.12,25.84-36.48,53.68    c-10.685,8.175-19.77,18.25-26.8,29.72c-6.129,10.834-8.253,23.478-6,35.72c-69.389,15.862-138.498-27.53-154.36-96.918    c-1.814-7.936-2.872-16.026-3.16-24.162c6.36,0,14.6,7.56,24.72,16.56c18.32,16.36,41.76,37.24,76.68,36    c8.228,0.142,16.397-1.41,24-4.56c3.205-1.417,5.631-4.164,6.64-7.52c0.852-3.743-0.229-7.664-2.88-10.44    c-3.76-4.6-12-10.04-26.16-16.36c-16.92-7.48-20.6-14.76-17.28-22.2c4-9.36,16.88-20,30.56-32c10.66-8.615,20.698-17.971,30.04-28    c16.72-19.04,25.32-39.8,8.32-62.52c18.893,3.862,36.669,11.944,52,23.64l-9.2,30.36c-0.679,2.08-0.139,4.365,1.4,5.92    c0,0,14.92,14.8,15.4,15.08c2.771,1.606,6.32,0.662,7.927-2.109c0.025-0.043,0.049-0.087,0.073-0.131l11.64-21.04    C296.235,136.038,301.727,146.646,305.684,157.856z M359.324,113.176l-5.16,2.56c-1.155,0.573-2.085,1.516-2.64,2.68l-2.56,5.2    l-9.96,18l-2.92-3.2l5.8-19.16c0.676-2.245-0.066-4.675-1.88-6.16l-31.56-29.72c-2.285-2.245-5.957-2.212-8.202,0.073    c-0.054,0.055-0.106,0.11-0.158,0.167c-0.4,0.44-28.8,51.6-28.8,51.6l-6.2-6.2l19.36-63.8c0.694-2.257-0.05-4.709-1.88-6.2    l-25.12-23.64c-2.78-2.355-3.704-6.246-2.28-9.6c1.276-2.906,3.606-5.221,6.52-6.48h0.2c3.313-1.279,7.072-0.315,9.36,2.4    l24,25.36c1.507,1.618,3.803,2.239,5.92,1.6l64-19.32l6.2,6.2l-50.8,27.92c-2.812,1.534-3.848,5.058-2.313,7.869    c0.024,0.044,0.048,0.087,0.073,0.131c0.24,0.44,30.84,33,30.84,33c1.516,1.604,3.811,2.209,5.92,1.56l19.24-5.8l3,3    L359.324,113.176z"></path>
</g>
</g><g><g><path d="M343.87,281.844c-0.087-0.051-0.176-0.101-0.266-0.147c-2.867-1.499-6.406-0.455-8,2.36c-2.52,4.6-5.28,9.12-8.24,13.44    c-1.911,2.717-1.257,6.469,1.46,8.38c2.717,1.911,6.469,1.257,8.38-1.46c3.12-4.64,6.08-9.48,8.8-14.36    C347.683,287.199,346.727,283.522,343.87,281.844z"></path>
</g>
</g><g><g><path d="M362.844,194.256c-3.313-0.045-6.036,2.604-6.082,5.917c-0.001,0.081-0.001,0.162,0.002,0.243v0.68    c0,5.24-0.24,10.52-0.72,15.76c-0.3,3.3,2.131,6.219,5.431,6.519c0.003,0,0.006,0.001,0.009,0.001h0.56    c3.165,0.03,5.808-2.404,6.04-5.56c0.52-5.56,0.76-11.2,0.76-16.8v-0.8C368.822,196.918,366.142,194.256,362.844,194.256z"></path>
</g>
</g><g><g><path d="M152.164,370.416c-5.2-0.88-10.36-2-15.36-3.52c-3.126-1.099-6.551,0.544-7.651,3.67s0.544,6.551,3.67,7.651    c0.229,0.081,0.464,0.147,0.701,0.2c5.36,1.52,10.88,2.84,16.4,4h1.12c3.314,0.309,6.251-2.126,6.56-5.44    C157.913,373.663,155.478,370.726,152.164,370.416z"></path>
</g>
</g><g><g><path d="M245.001,368.593c-1.085-2.946-4.258-4.558-7.277-3.696v0.16c-4.96,1.64-10.08,3.04-15.16,4    c-3.236,0.729-5.269,3.944-4.54,7.18c0.729,3.236,3.944,5.269,7.18,4.54c5.44-1.24,10.92-2.76,16.24-4.48    C244.554,375.151,246.146,371.702,245.001,368.593z"></path>
</g>
</g><g><g><path d="M111.004,357.336c-4.76-2.36-9.44-4.92-13.96-7.48c-2.861-1.679-6.541-0.721-8.22,2.14    c-1.679,2.861-0.721,6.541,2.14,8.22c4.84,2.84,9.84,5.48,14.92,8c3.004,1.414,6.586,0.124,8-2.88    C115.298,362.332,114.009,358.75,111.004,357.336z"></path>
</g>
</g><g><g><path d="M318.379,318.74c-2.404-2.195-6.121-2.073-8.375,0.277h0.04c-3.6,4-7.4,7.52-11.28,11c-2.474,2.209-2.689,6.006-0.48,8.48    c2.209,2.474,6.006,2.689,8.48,0.48c4-3.72,8.24-7.68,12-11.76C320.999,324.769,320.826,320.974,318.379,318.74z"></path>
</g>
</g><g><g><path d="M285.275,348.668c-1.7-2.844-5.384-3.771-8.229-2.071c-0.096,0.057-0.19,0.117-0.282,0.18v-0.16c-4.4,2.8-9,5.44-13.64,8    c-2.949,1.513-4.113,5.131-2.6,8.08c1.513,2.949,5.131,4.113,8.08,2.6c4.96-2.56,9.88-5.4,14.6-8.4    C286.048,355.196,286.976,351.512,285.275,348.668z"></path>
</g>
</g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg></span>
                  <h4 class="u-text u-text-1">Holiday Types</h4>
                  <p class="u-text u-text-font u-text-grey-dark-1 u-text-2"></p>
                  <div class="u-border-2 u-border-palette-1-base u-line u-line-horizontal u-line-1"></div>
                </div>
              </div>
              <div class="u-align-center u-container-style u-layout-cell u-similar-fill u-size-15 u-size-30-md u-layout-cell-2">
                <div class="u-container-layout u-valign-top u-container-layout-2"><span class="u-icon u-icon-circle u-text-palette-1-base u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-d4fc"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-d4fc" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" class="u-svg-content"><g><g><path d="M512,205.608v-22.109c0-31.706-25.794-57.5-57.5-57.5h-22.109c-5.159,0-9.752,2.613-12.46,6.64h-18.985    c-2.707-4.027-7.294-6.64-12.446-6.64h-30c-5.178,0-9.751,2.638-12.448,6.64H338.5c0-4.142-3.358-7.499-7.5-7.499    c-4.136,0-7.5-3.364-7.5-7.5c0-8.384-3.385-16.413-9.221-22.298c0.05-0.608,0.082-1.221,0.082-1.842    c0-12.406-10.094-22.5-22.5-22.5H220.14c-12.406,0-22.5,10.094-22.5,22.5c0,0.621,0.032,1.234,0.082,1.842    c-5.836,5.885-9.221,13.915-9.221,22.298c0,4.136-3.364,7.5-7.5,7.5c-4.142,0-7.5,3.357-7.5,7.499h-7.554    c-2.707-4.027-7.294-6.64-12.446-6.64h-30c-5.178,0-9.751,2.638-12.448,6.64H92.068c-2.708-4.027-7.3-6.64-12.459-6.64H57.5    c-31.706,0-57.5,25.794-57.5,57.5v22.109c0,5.297,2.79,9.996,7,12.668v130.446c-4.211,2.673-7,7.371-7,12.667v22.11    c0,31.706,25.794,57.5,57.5,57.5h22.109c5.16,0,9.752-2.613,12.46-6.64h18.984c2.707,4.027,7.294,6.64,12.446,6.64h30    c5.152,0,9.74-2.613,12.446-6.64h180.108c2.707,4.027,7.294,6.64,12.446,6.64h30c5.178,0,9.751-2.638,12.448-6.64h18.984    c2.708,4.027,7.3,6.64,12.459,6.64h22.11c31.706,0,57.5-25.794,57.5-57.5V361.39c0-5.297-2.79-9.996-7-12.668V218.276    C509.211,215.603,512,210.905,512,205.608z M14.996,205.616c0.024-0.002,0.04-0.005,0.004-0.007v-22.11    c0-23.435,19.065-42.5,42.5-42.5l22.118-0.006c-3.483,33.961-30.661,61.138-64.621,64.623H14.996z M57.5,425.999    c-23.435,0-42.5-19.065-42.5-42.5l0.082-22.108c33.919,3.521,61.052,30.677,64.535,64.607L57.5,425.999z M153.456,425.999    l-29.911,0.011c-0.025-5.804-0.054-48.91-0.05-210.882c0-4.142-3.357-7.5-7.5-7.5c-4.142,0-7.5,3.358-7.5,7.5    c-0.003,141.158,0.012,188.296,0.045,204.231H93.842C87.841,382.581,58.714,353.36,22,347.218V219.779    c36.719-6.152,65.836-35.365,71.841-72.141H108.5l-0.002,37.489c0,4.142,3.357,7.5,7.5,7.5c4.142,0,7.5-3.357,7.5-7.5    l0.002-44.128l29.954-0.003C153.533,157.184,153.534,410.895,153.456,425.999z M220.14,85.999h71.721c4.136,0,7.5,3.364,7.5,7.5    c0,0.759-0.115,1.491-0.326,2.182c-0.014,0.042-0.027,0.083-0.041,0.125c-0.976,3.01-3.802,5.193-7.133,5.193H220.14    c-3.331,0-6.158-2.184-7.133-5.193c-0.014-0.042-0.026-0.083-0.041-0.125c-0.211-0.691-0.326-1.423-0.326-2.182    C212.64,89.364,216.004,85.999,220.14,85.999z M203.5,117.64c0-2.605,0.592-5.099,1.694-7.341c3.977,3.542,9.213,5.7,14.945,5.7    h71.721c5.732,0,10.968-2.158,14.945-5.7c1.102,2.242,1.694,4.735,1.694,7.341c0,5.758,2.177,11.015,5.747,14.999H197.753    C201.323,128.655,203.5,123.397,203.5,117.64z M388.5,425.999l-29.957,0.011c-0.052-9.385-0.049-111.13-0.047-160.879    c0-4.142-3.357-7.5-7.5-7.5c-4.142,0-7.5,3.357-7.5,7.5c-0.004,102.927,0.006,140.397,0.036,154.229H168.44    c0.099-41.998,0.099-229.726,0-271.721H343.5l-0.003,87.492c0,4.142,3.357,7.5,7.5,7.5c4.142,0,7.5-3.357,7.5-7.5l0.003-94.132    l29.955-0.007C388.506,152.283,388.512,295.057,388.5,425.999z M432.383,140.993l0.008,0.006H454.5    c23.435,0,42.5,19.065,42.5,42.5l-0.082,22.108c-33.921-3.521-61.056-30.682-64.535-64.613    C432.383,140.993,432.383,140.993,432.383,140.993z M418.158,419.359H403.5c0.017-194.167-0.005-253.43-0.043-271.721h14.702    c6,36.777,35.126,65.997,71.841,72.141v127.44C453.276,353.371,424.157,382.588,418.158,419.359z M497,361.389v22.11    c0,23.435-19.065,42.5-42.5,42.5l-22.117,0.005c3.482-33.961,30.659-61.138,64.62-64.622c0,0,0.002,0,0.003,0    C496.982,361.384,496.965,361.387,497,361.389z"></path>
</g>
</g><g><g><path d="M329.719,326.87c-0.515-1.921-1.772-3.559-3.494-4.554l-54.155-31.267c-3.589-2.071-8.175-0.843-10.245,2.745    l-20.845,36.104c-0.995,1.723-1.265,3.77-0.749,5.691c0.515,1.921,1.771,3.56,3.494,4.554l54.155,31.267    c1.182,0.682,2.471,1.006,3.743,1.006c2.592,0,5.113-1.345,6.502-3.751l20.845-36.104    C329.965,330.838,330.235,328.791,329.719,326.87z M298.885,354.67l-41.165-23.767l13.345-23.113l41.165,23.767L298.885,354.67z"></path>
</g>
</g><g><g><path d="M305.438,244.75l-30-51.962c-0.994-1.723-2.633-2.979-4.554-3.494c-1.918-0.516-3.967-0.246-5.691,0.749l-77.942,45    c-3.587,2.071-4.816,6.658-2.745,10.245l30,51.962c1.389,2.406,3.91,3.751,6.502,3.751c1.272,0,2.563-0.324,3.743-1.006    l23.652-13.655c3.587-2.071,4.817-6.658,2.745-10.245c-2.07-3.588-6.659-4.815-10.245-2.745l-17.157,9.905l-22.5-38.972    l64.952-37.5l22.5,38.972l-21.769,12.567c-3.587,2.071-4.816,6.658-2.745,10.245c2.07,3.588,6.659,4.814,10.245,2.745    l28.264-16.317c1.723-0.994,2.979-2.633,3.494-4.554C306.702,248.519,306.433,246.472,305.438,244.75z"></path>
</g>
</g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg></span>
                  <h4 class="u-text u-text-3">Travel Guides</h4>
                  <p class="u-text u-text-font u-text-grey-dark-1 u-text-4"></p>
                  <div class="u-border-2 u-border-palette-1-base u-line u-line-horizontal u-line-2"></div>
                </div>
              </div>
              <div class="u-align-center u-container-style u-layout-cell u-similar-fill u-size-15 u-size-30-md u-layout-cell-3">
                <div class="u-container-layout u-valign-top u-container-layout-3"><span class="u-icon u-icon-circle u-text-palette-1-base u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-717f"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-717f" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" class="u-svg-content"><g><g><path d="M503.983,448.935h-12.148l-41.897-83.794c-1.954-3.909-6.848-5.539-10.756-3.585c-3.907,1.953-5.538,6.848-3.585,10.755    l38.312,76.624h-213.49l60.484-120.969l6.387,6.387c3.088,3.087,8.251,3.087,11.338,0l11.433-11.434l11.433,11.434    c3.132,3.131,8.207,3.131,11.338,0l11.433-11.434l11.433,11.434c3.089,3.088,8.249,3.088,11.338,0l6.388-6.387l11.06,22.119    c1.98,3.96,6.794,5.567,10.756,3.585c3.959-1.98,5.565-6.795,3.585-10.755l-64.491-128.98c-2.897-5.793-11.444-5.793-14.34,0    l-9.932,19.863l-35.644-71.288c-0.006-0.012-0.012-0.023-0.018-0.035L263.167,60.014c-2.897-5.793-11.444-5.793-14.34,0    L197.599,162.47c-0.009,0.017-0.017,0.034-0.026,0.051l-69.841,139.686l-9.932-19.864c-2.897-5.793-11.444-5.793-14.34,0    L20.165,448.935H8.017c-4.428,0-8.017,3.589-8.017,8.017s3.588,8.017,8.017,8.017h478.848c0.007,0,0.015,0.001,0.022,0.001    c0.01,0,0.018-0.001,0.028-0.001h17.068c4.428,0,8.017-3.589,8.017-8.017S508.412,448.935,503.983,448.935z M367.165,235.446    l38.703,77.404l-4.498,4.498l-11.433-11.434c-3.132-3.131-8.207-3.131-11.338,0l-11.434,11.434l-11.433-11.434    c-3.132-3.131-8.207-3.131-11.338,0l-11.434,11.433l-4.498-4.498L367.165,235.446z M256,81.525l41.553,83.104l-7.349,7.349    l-11.433-11.434c-3.132-3.131-8.207-3.131-11.338,0L256,171.978l-11.433-11.434c-3.132-3.131-8.207-3.131-11.338,0l-11.434,11.434    l-7.348-7.349L256,81.525z M110.63,303.855l35.852,71.703l-1.647,1.647l-11.433-11.434c-3.132-3.131-8.207-3.131-11.338,0    l-11.434,11.434l-11.433-11.434c-3.132-3.131-8.207-3.131-11.338,0l-11.434,11.433l-1.647-1.647L110.63,303.855z M38.09,448.935    l29.131-58.26l3.537,3.537c3.088,3.087,8.251,3.087,11.338,0l11.433-11.434l11.433,11.434c3.132,3.131,8.207,3.131,11.338,0    l11.433-11.434l11.433,11.434c3.089,3.088,8.249,3.088,11.338,0l3.537-3.537l29.131,58.26H38.09z M201.093,448.935    l-64.401-128.802l70.196-140.386l9.237,9.237c3.132,3.131,8.207,3.131,11.338,0l11.433-11.434l11.433,11.434    c3.132,3.131,8.207,3.131,11.338,0L273.1,177.55l11.433,11.434c3.089,3.088,8.249,3.088,11.338,0l9.237-9.237l35.808,71.616    c0.059,0.118,0.128,0.226,0.191,0.339l-98.616,197.233H201.093z"></path>
</g>
</g><g><g><path d="M469.779,81.235c-0.18,0-0.359,0.001-0.539,0.004c0.003-0.18,0.004-0.358,0.004-0.539c0-18.566-15.105-33.67-33.67-33.67    c-18.566,0-33.67,15.105-33.67,33.67c0,0.18,0.001,0.359,0.004,0.539c-0.18-0.002-0.359-0.004-0.539-0.004    c-18.566,0-33.67,15.104-33.67,33.67s15.105,33.67,33.67,33.67h68.409c18.566,0,33.67-15.105,33.67-33.67    S488.344,81.235,469.779,81.235z M469.779,132.542H401.37c-9.725,0-17.637-7.912-17.637-17.637s7.912-17.637,17.637-17.637    c2.659,0,5.213,0.576,7.59,1.712c3.065,1.465,6.722,0.839,9.126-1.564c2.403-2.403,3.029-6.06,1.564-9.126    c-1.136-2.377-1.712-4.93-1.712-7.59c0-9.725,7.912-17.637,17.637-17.637s17.637,7.912,17.637,17.637    c0,2.659-0.576,5.213-1.712,7.59c-1.465,3.066-0.839,6.723,1.564,9.126c2.404,2.404,6.062,3.029,9.126,1.564    c2.377-1.136,4.93-1.712,7.59-1.712c9.725,0,17.637,7.912,17.637,17.637S479.504,132.542,469.779,132.542z"></path>
</g>
</g><g><g><path d="M110.092,158.2c0.003-0.18,0.004-0.358,0.004-0.539c0-18.566-15.104-33.67-33.67-33.67s-33.67,15.104-33.67,33.67    c0,0.18,0.001,0.359,0.004,0.539c-0.18-0.002-0.359-0.004-0.539-0.004c-18.566,0-33.67,15.104-33.67,33.67    s15.105,33.67,33.67,33.67h68.409c18.566,0,33.67-15.105,33.67-33.67C144.302,173.121,128.888,157.941,110.092,158.2z     M110.63,209.503H42.221c-9.725,0-17.637-7.912-17.637-17.637s7.912-17.637,17.637-17.637c2.659,0,5.213,0.576,7.59,1.712    c3.065,1.467,6.721,0.839,9.126-1.564c2.403-2.403,3.029-6.06,1.564-9.126c-1.136-2.377-1.712-4.93-1.712-7.59    c0-9.725,7.912-17.637,17.637-17.637s17.637,7.912,17.637,17.637c0,2.659-0.576,5.213-1.712,7.59    c-1.451,3.034-0.813,6.75,1.564,9.126c2.376,2.375,6.093,3.015,9.126,1.564c2.377-1.136,4.93-1.712,7.59-1.712    c9.725,0,17.637,7.912,17.637,17.637S120.355,209.503,110.63,209.503z"></path>
</g>
</g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg></span>
                  <h4 class="u-text u-text-5">Extreme Tours</h4>
                  <p class="u-text u-text-font u-text-grey-dark-1 u-text-6"></p>
                  <div class="u-border-2 u-border-palette-1-base u-line u-line-horizontal u-line-3"></div>
                </div>
              </div>
              <div class="u-align-center u-container-style u-layout-cell u-right-cell u-similar-fill u-size-15 u-size-30-md u-layout-cell-4">
                <div class="u-container-layout u-valign-top u-container-layout-4"><span class="u-icon u-icon-circle u-text-palette-1-base u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 471.386 471.386"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-6661"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-6661" x="0px" y="0px" viewBox="0 0 471.386 471.386" style="enable-background:new 0 0 471.386 471.386;" xml:space="preserve" class="u-svg-content"><g><path d="M445.769,456.386h-80.993v-15.368c0-35.193-9.385-62.355-27.894-80.732c-21.145-20.993-47.152-23.22-53.152-23.447   c57.697-29.512,97.285-89.571,97.285-158.705c0-72.449-43.478-134.928-105.711-162.732c-0.5-0.29-1.024-0.523-1.566-0.687   C252.01,5.258,228.051,0,202.883,0C104.66,0,24.751,79.91,24.751,178.133c0,69.347,39.836,129.559,97.821,158.972   c-9.635,0.973-31.311,5.171-49.448,23.18c-18.509,18.377-27.893,45.54-27.893,80.732v15.368H24.273c-4.143,0-7.5,3.358-7.5,7.5   c0,4.142,3.357,7.5,7.5,7.5h421.496c4.143,0,7.5-3.358,7.5-7.5C453.269,459.744,449.911,456.386,445.769,456.386z M202.883,341.266   c-7.73,0-15.333-0.553-22.78-1.598v-10.82c7.174,1.836,14.973,3.118,23.472,3.668c0.162,0.01,0.323,0.016,0.485,0.016h1.887   c0.162,0,0.323-0.005,0.485-0.016c8.499-0.551,16.298-1.832,23.472-3.668v10.167C221.111,340.488,212.087,341.266,202.883,341.266z    M205.673,119.124c-0.204,0-0.404,0.015-0.604,0.03c-0.199-0.016-0.399-0.03-0.604-0.03c-34.138,0-44.753-6.248-46.313-7.314   c-1.608-2.124-3.725-2.523-6.434-2.134c-8.124,1.171-16.222,5.772-23.531,11.618c0.36-0.585,0.729-1.17,1.105-1.756   c16.804-26.092,42.038-40.434,75.012-42.63h1.395c32.767,2.184,57.904,16.371,74.713,42.169c0.436,0.669,0.858,1.338,1.272,2.005   c-7.239-5.744-15.239-10.248-23.266-11.406c-2.707-0.391-4.826,0.01-6.434,2.134C250.426,112.876,239.811,119.124,205.673,119.124z    M113.785,160.157c0.021-0.09,0.05-0.179,0.068-0.27c3.007-5.747,21.724-30.126,37.3-34.76c2.046,1.203,4.984,2.58,9.137,3.888   c10.76,3.39,25.622,5.109,44.176,5.109c0.204,0,0.404-0.015,0.604-0.03c0.199,0.016,0.399,0.03,0.604,0.03   c18.554,0,33.417-1.719,44.177-5.109c4.151-1.308,7.09-2.685,9.136-3.888c15.48,4.604,34.053,28.701,37.235,34.642v76.691   c-0.529,3.061-3.936,20.472-15.509,38.442c-16.804,26.092-42.038,40.434-75.012,42.63h-1.395   c-32.767-2.184-57.904-16.371-74.713-42.169c-11.735-18.011-15.267-35.842-15.808-38.914V160.157z M39.751,178.133   C39.751,88.181,112.932,15,202.883,15c19.403,0,38.023,3.412,55.3,9.657l-14.337,14.337c-2.929,2.929-2.929,7.678,0,10.606   c1.465,1.464,3.385,2.197,5.304,2.197c1.919,0,3.839-0.732,5.304-2.197l18.681-18.681c2.994,1.435,5.935,2.963,8.825,4.572   l-15.706,15.707c-2.929,2.929-2.929,7.678,0.001,10.607c1.464,1.464,3.384,2.196,5.303,2.196c1.919,0,3.839-0.733,5.304-2.197   l18.193-18.195c42.821,29.432,70.961,78.75,70.961,134.523c0,75.427-51.459,139.052-121.111,157.636v-10.686   c0-0.397-0.04-0.783-0.1-1.163c24.057-9.941,39.262-26.521,48.519-40.896c14.433-22.41,17.689-43.977,17.819-44.884   c0.052-0.356,0.078-0.716,0.078-1.076v-78.729c0-0.144-0.014-0.285-0.022-0.427c0.037-0.526,0.023-1.064-0.057-1.607   c-0.131-0.907-3.387-22.474-17.819-44.884c-13.448-20.882-39.439-46.418-86.892-49.493c-0.162-0.01-0.323-0.016-0.485-0.016h-1.887   c-0.162,0-0.323,0.005-0.485,0.016c-47.452,3.075-73.443,28.611-86.892,49.493c-14.433,22.41-17.688,43.977-17.819,44.884   c-0.079,0.544-0.094,1.081-0.057,1.607c-0.008,0.142-0.021,0.283-0.021,0.427v78.729c0,0.36,0.026,0.72,0.078,1.076   c0.131,0.907,3.387,22.474,17.819,44.884c9.258,14.375,24.463,30.956,48.52,40.896c-0.06,0.38-0.1,0.767-0.1,1.163v11.729h-0.117   C93.251,319.68,39.751,255.041,39.751,178.133z M60.231,441.018c0-88.177,64.527-89.206,67.301-89.206h35.7   c12.756,2.911,26.026,4.454,39.651,4.454s26.895-1.543,39.651-4.454h39.994c0.002,0,0.005,0,0.009,0   c0.594,0,24.708,0.187,43.775,19.118c15.569,15.457,23.463,39.039,23.463,70.088v15.368H60.231V441.018z"></path><circle cx="151.767" cy="183.719" r="8.951"></circle><circle cx="258.239" cy="183.719" r="8.951"></circle><path d="M203.068,236.447h3.869c9.925,0,18-8.075,18-18c0-4.142-3.357-7.5-7.5-7.5c-4.143,0-7.5,3.358-7.5,7.5c0,1.654-1.346,3-3,3   h-3.869c-1.654,0-3-1.346-3-3c0-4.142-3.357-7.5-7.5-7.5c-4.143,0-7.5,3.358-7.5,7.5   C185.068,228.372,193.144,236.447,203.068,236.447z"></path><path d="M163.027,396.728H110.48c-4.143,0-7.5,3.358-7.5,7.5c0,4.142,3.357,7.5,7.5,7.5h52.548c4.143,0,7.5-3.358,7.5-7.5   C170.527,400.086,167.17,396.728,163.027,396.728z"></path><path d="M299.526,396.728h-52.548c-4.143,0-7.5,3.358-7.5,7.5c0,4.142,3.357,7.5,7.5,7.5h52.548c4.142,0,7.5-3.358,7.5-7.5   C307.026,400.086,303.669,396.728,299.526,396.728z"></path><path d="M163.027,425.728H110.48c-4.143,0-7.5,3.358-7.5,7.5c0,4.142,3.357,7.5,7.5,7.5h52.548c4.143,0,7.5-3.358,7.5-7.5   C170.527,429.086,167.17,425.728,163.027,425.728z"></path><path d="M299.526,425.728h-52.548c-4.143,0-7.5,3.358-7.5,7.5c0,4.142,3.357,7.5,7.5,7.5h52.548c4.142,0,7.5-3.358,7.5-7.5   C307.026,429.086,303.669,425.728,299.526,425.728z"></path><circle cx="205.003" cy="404.226" r="6.955"></circle><circle cx="205.003" cy="433.226" r="6.955"></circle><path d="M378.468,30.196c-6.472,13.374-4.167,29.927,6.931,41.024c7.011,7.01,16.198,10.515,25.387,10.515   c5.358,0,10.712-1.201,15.638-3.584c0.393,0.27,0.785,0.539,1.171,0.796c3.601,2.402,10.62,7.085,16.95,7.084   c2.614,0,5.113-0.799,7.202-2.889c6.784-6.783,0.261-18.105-6.452-27.403c3.471-12.134,0.435-25.737-9.122-35.293   c-7.011-7.01-16.198-10.515-25.387-10.515c-3.348,0-6.694,0.471-9.936,1.402c-0.131-0.107-0.259-0.216-0.398-0.315   c-9.001-6.422-20.201-12.924-26.975-6.145c-7.146,7.148,0.802,19.063,4.195,24.152C377.929,29.411,378.197,29.803,378.468,30.196z    M410.785,66.735c-5.583,0-10.832-2.174-14.78-6.122c-4.348-4.348-6.353-10.15-6.061-15.856c3.27,3.731,6.834,7.539,10.605,11.311   c3.775,3.775,7.586,7.342,11.32,10.614C411.508,66.701,411.149,66.735,410.785,66.735z M425.565,31.053   c7.787,7.787,8.114,20.229,1.021,28.431c-4.561-3.716-9.764-8.355-15.43-14.022c-5.668-5.668-10.309-10.871-14.025-15.432   c3.797-3.289,8.581-5.1,13.653-5.1C416.368,24.931,421.617,27.105,425.565,31.053z"></path><path d="M159.294,270.29c0.657,0.6,16.467,14.689,47.557,14.689c31.226,0,43.365-13.934,44.646-15.522   c2.6-3.225,2.095-7.946-1.13-10.546c-3.225-2.601-7.946-2.094-10.546,1.129c-0.08,0.1-9.089,9.939-32.971,9.939   c-24.809,0-36.903-10.295-37.494-10.812c-3.062-2.75-7.774-2.521-10.552,0.528C156.014,262.756,156.232,267.5,159.294,270.29z"></path>
</g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg></span>
                  <h4 class="u-text u-text-7">Dream Vacation</h4>
                  <p class="u-text u-text-font u-text-grey-dark-1 u-text-8"></p>
                  <div class="u-border-2 u-border-palette-1-base u-line u-line-horizontal u-line-4"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-image u-section-5" id="carousel_2808" >
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-container-style u-expanded-width-sm u-expanded-width-xs u-group u-similar-fill u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h2 class="u-align-center u-custom-font u-text u-text-palette-1-base u-text-1">Cities</h2>
            <div class="u-border-2 u-border-palette-1-base u-line u-line-horizontal u-line-1"></div>
            <p class="u-align-center u-text u-text-font u-text-2">The first place to look for environmentally friendly holidays </p>
          </div>
        </div>
        <div class="u-expanded-width u-shape u-shape-rectangle u-white u-shape-1"></div>
      </div>
    </section>
    <section class="u-clearfix u-section-6" id="sec-d210">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-list u-list-1">
          <div class="u-repeater u-repeater-1">
           <c:forEach items="${ cities}" var="city">
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-container-layout-6">
                <img alt="" class="u-expanded-width u-image u-image-default u-image-6" data-image-width="550" data-image-height="424" src="images/${city.name}.jpeg">
                <h3 class="u-text u-text-11"><c:out value="${city.name }"></c:out></h3>
                <p class="u-text u-text-12"></p>
                <a href="/${city.id}" class="u-active-none u-border-2 u-border-hover-palette-2-base u-border-palette-2-light-1 u-btn u-button-style u-hover-none u-none u-text-body-color u-btn-6">See more</a>
              </div>
            </div>
            </c:forEach>
          </div>
        </div>
      </div>
    </section>
    <style class="u-overlap-style">.u-overlap:not(.u-sticky-scroll) .u-header {
      
}</style>
    
    
   
    <footer class="u-clearfix u-footer u-grey-80" id="sec-d365"><div class="u-clearfix u-sheet u-sheet-1" style="height: 80px;">
      <div class="u-clearfix u-expanded-width u-gutter-30 u-layout-wrap u-layout-wrap-1">
        <div class="u-gutter-0 u-layout">
          <div class="u-layout-row">
            <div class="u-align-center-sm u-align-center-xs u-align-left-md u-align-left-xl u-container-style u-layout-cell u-left-cell u-size-30 u-layout-cell-1">
              <div class="u-container-layout u-valign-middle u-container-layout-1"><!--position-->
                <div data-position="" class="u-position u-position-1"><!--block-->
                  <div class="u-block">
                    <div class="u-block-container u-clearfix"><!--block_header-->
                      <h5 class="u-block-header u-text"><!--block_header_content--> Contact us now!<!--/block_header_content--></h5><!--/block_header--><!--block_content-->
                      <div class="u-block-content u-text"><!--block_content_content-->Palestinespirit@gmail.com<br>AXSOS Academy, Ramallah, Palestine<!--/block_content_content-->
                      </div><!--/block_content-->
                    </div>
                  </div><!--/block-->
                </div><!--/position-->
              </div>
            </div>
            <div class="u-align-center-sm u-align-center-xs u-align-left-md u-align-right-lg u-align-right-xl u-container-style u-layout-cell u-right-cell u-size-30 u-layout-cell-2">
              <div class="u-container-layout u-valign-middle u-container-layout-2">
                <div class="u-social-icons u-spacing-10 u-social-icons-1">
                  <a class="u-social-url" title="facebook" target="_blank" href=""><span class="u-icon u-icon-circle u-social-facebook u-social-icon u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-e670"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-e670"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
          c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path></svg></span>
                  </a>
                  <a class="u-social-url" title="twitter" target="_blank" href=""><span class="u-icon u-icon-circle u-social-icon u-social-twitter u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-12c7"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-12c7"><circle fill="currentColor" class="st0" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M83.8,47.3c0,0.6,0,1.2,0,1.7c0,17.7-13.5,38.2-38.2,38.2C38,87.2,31,85,25,81.2c1,0.1,2.1,0.2,3.2,0.2
          c6.3,0,12.1-2.1,16.7-5.7c-5.9-0.1-10.8-4-12.5-9.3c0.8,0.2,1.7,0.2,2.5,0.2c1.2,0,2.4-0.2,3.5-0.5c-6.1-1.2-10.8-6.7-10.8-13.1
          c0-0.1,0-0.1,0-0.2c1.8,1,3.9,1.6,6.1,1.7c-3.6-2.4-6-6.5-6-11.2c0-2.5,0.7-4.8,1.8-6.7c6.6,8.1,16.5,13.5,27.6,14
          c-0.2-1-0.3-2-0.3-3.1c0-7.4,6-13.4,13.4-13.4c3.9,0,7.3,1.6,9.8,4.2c3.1-0.6,5.9-1.7,8.5-3.3c-1,3.1-3.1,5.8-5.9,7.4
          c2.7-0.3,5.3-1,7.7-2.1C88.7,43,86.4,45.4,83.8,47.3z"></path></svg></span>
                  </a>
                  <a class="u-social-url" title="instagram" target="_blank" href=""><span class="u-icon u-icon-circle u-social-icon u-social-instagram u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-e24c"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-e24c"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M55.9,38.2c-9.9,0-17.9,8-17.9,17.9C38,66,46,74,55.9,74c9.9,0,17.9-8,17.9-17.9C73.8,46.2,65.8,38.2,55.9,38.2
          z M55.9,66.4c-5.7,0-10.3-4.6-10.3-10.3c-0.1-5.7,4.6-10.3,10.3-10.3c5.7,0,10.3,4.6,10.3,10.3C66.2,61.8,61.6,66.4,55.9,66.4z"></path><path fill="#FFFFFF" d="M74.3,33.5c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S76.6,33.5,74.3,33.5z"></path><path fill="#FFFFFF" d="M73.1,21.3H38.6c-9.7,0-17.5,7.9-17.5,17.5v34.5c0,9.7,7.9,17.6,17.5,17.6h34.5c9.7,0,17.5-7.9,17.5-17.5V38.8
          C90.6,29.1,82.7,21.3,73.1,21.3z M83,73.3c0,5.5-4.5,9.9-9.9,9.9H38.6c-5.5,0-9.9-4.5-9.9-9.9V38.8c0-5.5,4.5-9.9,9.9-9.9h34.5
          c5.5,0,9.9,4.5,9.9,9.9V73.3z"></path></svg></span>
                  </a>
                  <a class="u-social-url" title="linkedin" target="_blank" href=""><span class="u-icon u-icon-circle u-social-icon u-social-linkedin u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-84bc"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-84bc"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M41.3,83.7H27.9V43.4h13.4V83.7z M34.6,37.9L34.6,37.9c-4.6,0-7.5-3.1-7.5-7c0-4,3-7,7.6-7s7.4,3,7.5,7
          C42.2,34.8,39.2,37.9,34.6,37.9z M89.6,83.7H76.2V62.2c0-5.4-1.9-9.1-6.8-9.1c-3.7,0-5.9,2.5-6.9,4.9c-0.4,0.9-0.4,2.1-0.4,3.3v22.5
          H48.7c0,0,0.2-36.5,0-40.3h13.4v5.7c1.8-2.7,5-6.7,12.1-6.7c8.8,0,15.4,5.8,15.4,18.1V83.7z"></path></svg></span>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <a class="u-active-none u-btn u-button-style u-hover-none u-none u-text-hover-palette-1-base u-btn-1"><span class="u-icon u-text-palette-1-base"><svg class="u-svg-content" viewBox="0 0 405.333 405.333" x="0px" y="0px" style="width: 1em; height: 1em;"><path d="M373.333,266.88c-25.003,0-49.493-3.904-72.704-11.563c-11.328-3.904-24.192-0.896-31.637,6.699l-46.016,34.752    c-52.8-28.181-86.592-61.952-114.389-114.368l33.813-44.928c8.512-8.512,11.563-20.971,7.915-32.64    C142.592,81.472,138.667,56.96,138.667,32c0-17.643-14.357-32-32-32H32C14.357,0,0,14.357,0,32    c0,205.845,167.488,373.333,373.333,373.333c17.643,0,32-14.357,32-32V298.88C405.333,281.237,390.976,266.88,373.333,266.88z"></path></svg><img></span>&nbsp;+1 (234) 567-8910
      </a>
    </div></footer>
  </body>
</html>