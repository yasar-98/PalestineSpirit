<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Jericho</title>
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/Jericho.css" media="screen">
    <script class="u-script" type="text/javascript" src="js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.19.1, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700|Playfair+Display:400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Lily+Script+One:400">
    
    
    
    
    
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Site1",
		"sameAs": []
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Jericho">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-overlap u-overlap-contrast u-overlap-transparent"><header class="u-align-center-xs u-clearfix u-header u-header" id="sec-4f75"><div class="u-clearfix u-sheet u-sheet-1">
        <form action="#" method="get" class="u-border-1 u-border-white u-radius-24 u-search u-search-right u-search-1">
          <button class="u-search-button" type="submit">
            <span class="u-search-icon u-spacing-10 u-text-white">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 56.966 56.966" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-b04b"></use></svg>
              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-b04b" x="0px" y="0px" viewBox="0 0 56.966 56.966" style="enable-background:new 0 0 56.966 56.966;" xml:space="preserve" class="u-svg-content"><path d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  s-17-7.626-17-17S14.61,6,23.984,6z"></path><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg>
            </span>
          </button>
          <input class="u-search-input u-text-white" type="search" name="search" value="" placeholder="Search">
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
					<c:when test="${ role == 3 }">
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
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/home" style="padding: 10px 20px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Tours.html" style="padding: 10px 20px;">Tours</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Contact.html" style="padding: 10px 20px;">Contact</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <a href="/"><h6 class="u-custom-font u-text u-text-white u-text-1">Palestine Spirit</h6></a>
      </div></header> 
    <section class="u-clearfix u-image u-shading u-section-1" id="sec-d983" data-image-width="1280" data-image-height="720">
      <div class="u-clearfix u-gutter-12 u-layout-wrap u-layout-wrap-1">
        <div class="u-layout">
          <div class="u-layout-row">
            <div class="u-container-style u-image u-layout-cell u-left-cell u-right-cell u-shading u-size-60 u-uploaded-video u-image-1" data-image-width="1280" data-image-height="720">
              <div class="u-container-layout u-container-layout-1" src="">
                <div class="u-border-4 u-border-white u-line u-line-horizontal u-line-1"></div>
                <h1 class="u-align-center u-custom-font u-font-oswald u-text u-text-body-alt-color u-title u-text-1">Jericho</h1>
                <div class="u-border-4 u-border-white u-line u-line-horizontal u-line-2"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-section-2" id="sec-acc6">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-text u-text-1">City History</h1>
        <p class="u-text u-text-2"> Jericho is an ancient historic Palestinian city located in the West Bank near the Jordan River and north of the Dead Sea, dating back to 10,000 BC. It is the capital of Jericho Governorate and is the oldest city in history. In 2007, it had a population of 18,110. It was under Jordanian administration between 1948-1967, after which it was occupied by Israel, and in 1994 the Palestinian National Authority took over the administration of the city. It is located 16 km (10 miles) from the Dead Sea. Jericho is the lowest point in the world. Also known as the City of the Moon.<br>
          <br>The ancient city of Jericho is about a mile from the west, and its place is known as the Abu Al-Alayk Hills, to the north of Tel Al-Sultan. It dates back to 10,000-11,000 years. It was built of mud bricks, and around it was a trench 28 feet wide and 8 feet deep and carved from rock. Pottery, bronze artifacts, bones, wooden household items, baskets and fabrics were discovered at its site. It was destroyed in the late Bronze Age and is the oldest city discovered so far. Jericho is considered the eastern gateway to Palestine. It is linked to the East Bank by a network of paved roads and is connected to the Jerusalem-Amman road. It is located to the north of the city of Jerusalem, 38 km away from it, and 70 km from the city of Hebron in the south.
        </p>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-section-3" id="sec-81cb">
      <div class="u-clearfix u-sheet u-valign-top u-sheet-1">
        <div class="u-align-left u-expanded-width-sm u-expanded-width-xs u-video u-video-1">
          <div class="embed-responsive embed-responsive-1">
            <iframe style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;" class="embed-responsive-item" src="https://www.youtube.com/embed/xFYRpywQjt4?mute=0&amp;showinfo=0&amp;controls=0&amp;start=0" frameborder="0" allowfullscreen=""></iframe>
          </div>
        </div>
        <h2 class="u-text u-text-1">Take a look&nbsp;</h2>
      </div>
    </section>
    <section class="u-align-left u-clearfix u-section-4" id="sec-9969">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout" style="">
            <div class="u-layout-row" style="">
              <div class="u-container-style u-layout-cell u-right-cell u-size-30 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <img class="u-image u-image-default u-image-1" src="images/tree.jpeg" alt="" data-image-width="1356" data-image-height="2048">
                  <img class="u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-image u-image-default u-image-2" src="images/orange.png" data-image-width="960" data-image-height="635">
                </div>
              </div>
              <div class="u-container-style u-grey-5 u-layout-cell u-left-cell u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2">
                  <h1 class="u-align-left u-custom-font u-font-playfair-display u-text u-text-palette-5-dark-3 u-text-1"><b style=""></b>Farming
                  </h1>
                  <h4 class="u-text u-text-2"> Jericho enjoys a tropical climate, hot and dry in summer, and warm and little rain in winter, with an average temperature of 23.5 degrees Celsius. This city has been known since ancient times for the fertility of its soil and the abundance of its water.<br>
                    <br>Therefore, large areas of its lands are used in agriculture irrigated by water from springs and wells, such as: Ain al-Sultan spring, which is the basket of Palestinian vegetables and fruits. Among the crops grown in the city: vegetables of all kinds, various grains such as wheat, barley, sesame, citrus, bananas, olives, palms and grapes.<br>
                    <br>The surplus of its crops is exported to foreign markets in the Arab Gulf region, Jordan and Palestine. Jericho is famous for its bananas and oranges.
                  </h4>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-left u-clearfix u-section-5" id="sec-e543">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-layout-wrap u-layout-wrap-1">
          <div class="u-layout" style="">
            <div class="u-layout-row" style="">
              <div class="u-container-style u-layout-cell u-right-cell u-size-30 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1"></div>
              </div>
              <div class="u-container-style u-grey-5 u-layout-cell u-left-cell u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2">
                  <h1 class="u-align-left u-custom-font u-font-playfair-display u-text u-text-palette-5-dark-3 u-text-1"><b></b>Pottery
                  </h1>
                  <h4 class="u-text u-text-2"> The pottery industry is one of these industries that those in charge of it have been able to preserve over hundreds of years. It is one of the oldest popular industries in Palestine; It dates back to the fourth century BC, according to what the Palestinian historian Mustafa Murad al-Dabbagh indicated in his precious book ???Our Country is Palestine.???<br>
                    <br>One of the families in the city was named after their work in the pottery industry. The Al-Fakhouri family traces its name to its association with the pottery industry over hundreds of years, and passed it on to children from their fathers and grandfathers, and they still cling to it and preserve it despite facing the danger of extinction in light of the obstacles it faces.<br>
                    <br>This craft faces many problems, and its owners are trying to resist and overcome them in order to preserve it from extinction, as the number of factories working in the pottery industry has become no more than the number of fingers on the hand.<br>
                  </h4>
                </div>
              </div>
            </div>
          </div>
        </div>
        <img class="u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-image u-image-default u-image-1" src="images/jeri.jpeg" data-image-width="812" data-image-height="557">
        <img class="u-image u-image-default u-image-2" src="images/jeri1.jpeg" alt="" data-image-width="840" data-image-height="600">
      </div>
    </section>
    <div style="height: 350px; width: 300px; margin-left: 30%;">
      <iframe style="height: 250px; width: 500px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d27109.866652052366!2d35.44699821835804!3d31.859471050539202!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x151ccc61e6ff8567%3A0x811428a4685668bb!2z2KPYsdmK2K3Ypw!5e0!3m2!1sen!2s!4v1625576849741!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>   </div>
    <section class="u-clearfix u-image u-section-6" id="sec-2b73" data-image-width="1600" data-image-height="740">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-container-style u-expanded-width-sm u-expanded-width-xs u-group u-similar-fill u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h2 class="u-align-center u-custom-font u-text u-text-palette-1-base u-text-1">Archaeological Sites in Jericho</h2>
            <div class="u-border-2 u-border-palette-1-base u-line u-line-horizontal u-line-1"></div>
            <p class="u-align-center u-text u-text-font u-text-2">The first place to look for a great adventure </p>
          </div>
        </div>
        <div class="u-expanded-width u-shape u-shape-rectangle u-white u-shape-1"></div>
      </div>
    </section>
    
    <section class="u-clearfix u-section-7" id="sec-68d2">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            	<c:forEach items="${sites}" var="site">
	            <div class="u-container-style u-list-item u-repeater-item">
	              <div class="u-container-layout u-similar-container u-container-layout-1">
	                <img alt="" class="u-expanded-width u-image u-image-default u-image-1" data-image-width="550" data-image-height="366" src="images/${site.name}.jpeg">
	                <h3 class="u-text u-text-1"><c:out value="${site.name }"></c:out></h3>
	                <p class="u-text u-text-2">Sample text. Click to select the text box. Click again or double click to start editing the text.</p>
	                <a href="/ArchaeologicalSite/${site.id}" class="u-active-none u-border-2 u-border-hover-palette-2-base u-border-palette-2-light-1 u-btn u-button-style u-hover-none u-none u-text-body-color u-btn-1">learn more</a>
	              </div>
	            </div>
            </c:forEach>
            
          </div>
        </div>
      </div>
    </section>
    
    
    <footer class="u-clearfix u-footer u-grey-80" id="sec-d365"><div class="u-clearfix u-sheet u-sheet-1">
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
        <a href="https://nicepage.com/c/tiles-website-templates" class="u-active-none u-btn u-button-style u-hover-none u-none u-text-hover-palette-1-base u-btn-1"><span class="u-icon u-text-palette-1-base"><svg class="u-svg-content" viewBox="0 0 405.333 405.333" x="0px" y="0px" style="width: 1em; height: 1em;"><path d="M373.333,266.88c-25.003,0-49.493-3.904-72.704-11.563c-11.328-3.904-24.192-0.896-31.637,6.699l-46.016,34.752    c-52.8-28.181-86.592-61.952-114.389-114.368l33.813-44.928c8.512-8.512,11.563-20.971,7.915-32.64    C142.592,81.472,138.667,56.96,138.667,32c0-17.643-14.357-32-32-32H32C14.357,0,0,14.357,0,32    c0,205.845,167.488,373.333,373.333,373.333c17.643,0,32-14.357,32-32V298.88C405.333,281.237,390.976,266.88,373.333,266.88z"></path></svg><img></span>&nbsp;+1 (234) 567-8910
        </a>
      </div></footer>
  </body>
</html>