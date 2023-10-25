<% if $Pages %>

    <div class="breadcrumb <% if $Image %><% else %>no-hero<% end_if %>">
        <a href="/">Home</a>
        <span class="breadcrumb__spacer">»</span>
        <% loop $Pages %>
            <% if $Last %>
                <span class="breadcrumb__last" aria-current="page">$MenuTitle.XML</span>
            <% else %>
                <span>
                    <% if not Up.Unlinked %><a href="$Link"><% end_if %>$MenuTitle.XML<% if not Up.Unlinked %></a><% end_if %>
                </span>
                <span class="breadcrumb__spacer">»</span>
            <% end_if %>
        <% end_loop %>
    </div>

    <script type="application/ld+json">
    {
        "@context": "http://schema.org",
        "@type": "BreadcrumbList",
        "itemListElement":
        [
            {
                "@type": "ListItem",
                "position": 1,
                "item":
                {
                    "@id": "$absoluteBaseURL",
                    "name": "Home"
                }
            }
            <% loop $Pages %>
                ,{
                    "@type": "ListItem",
                    "position": $Pos(2),
                    "item":
                    {
                        "@id": "$AbsoluteLink",
                        "name": "$MenuTitle.XML"
                    }
                }
            <% end_loop %>
        ]
    }
    </script>

<% end_if %>
