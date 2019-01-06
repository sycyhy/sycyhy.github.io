<% include "header.gsp" %>

<main>


  <div class="container">

    <div class="row">

    <div class="page-header">
      <b><h1>Archive</h1></b>
    </div>

<ul>
  <% def last_month = null; %>
  <% published_posts.each { post -> %>
  <% if (last_month) { %>
  <% if (post.date.format("MMMM yyyy") != last_month) { %>
</ul>
<h4>${post.date.format("MMMM yyyy")}</h4>
<ul>
<% } %>
<% } else { %>
<h4>${post.date.format("MMMM yyyy")}</h4>
<ul>
  <% } %>


  <li>${post.date.format("dd")} - <a href="${content.rootpath ?: ''}${post.uri}">${post.title}</a></li>
  <% last_month = post.date.format("MMMM yyyy") %>
  <% } %>
</ul>

    </div>

  </div>

</main>

<% include "footer.gsp" %>
