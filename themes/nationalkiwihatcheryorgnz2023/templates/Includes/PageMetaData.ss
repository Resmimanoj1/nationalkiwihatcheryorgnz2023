<title><% if $MetaTitle %>$MetaTitle<% else %>$Title &raquo; $SiteConfig.Title<% end_if %></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
$MetaTags(false)
<meta property="og:site_name" content="$SiteConfig.Title"/>
<meta property="og:title" content="<% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %>"/>
<meta property="og:url" content="$AbsoluteLink"/>
<meta property="og:type" content="website"/>
<% if $MetaDescription %>
    <meta property="og:description" content="$MetaDescription"/>
    <meta itemprop="description" content="$MetaDescription">
<% end_if %>
<% if $KeyImage %>
    <meta property="og:image" content="$KeyImage.Fill(1200,630).AbsoluteURL"/>
    <meta itemprop="image" content="$KeyImage.Fill(1200,630).AbsoluteURL">
<% end_if %>
<meta itemprop="name" content="<% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %>">
<link rel="canonical" href="$AbsoluteLink">
