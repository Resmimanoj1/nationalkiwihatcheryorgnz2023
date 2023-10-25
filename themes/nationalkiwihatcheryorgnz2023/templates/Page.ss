<!DOCTYPE html>

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<!--[if IE 9 ]><html lang="$ContentLocale" class="ie ie9"><![endif]-->

<head>
	<% include GTMHead %>
    <% base_tag %>
    <% include PageMetaData %>
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<% require themedCSS('main') %>
	<% include Icons %>
</head>

<body class="<% if $URLSegment == 'home' %>body--homepage<% end_if %> <% if $SiteConfig.ActiveAlert %>alert<% end_if %>">
    <% include GTMBody %>
    <% include NgaiTahuTourism/Alert/Alert %>
    <% include NgaiTahuTourism/Header/Header %>

	<div class="main-container">
        $Layout
	</div>

    <% include NgaiTahuTourism/Footer/Footer %>

	<% require javascript('/themes/nationalkiwihatcheryorgnz2023/javascript/site.min.js?v=2') %>

</body>

</html>
