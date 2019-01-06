<% include "header.gsp" %>

<main>

  <div class="container">

    <div class="row">

      <% published_posts.take(5).each { post -> %>
      <article>
        <div>
          <a href="${post.uri}" class="black-text"><h1 class="content-title">${post.title}</h1></a>
          <i>${post.date.format("dd MMMM, yyyy")}</i>
          <article-body>
            <div class="post-preview">
              <% def words = post.body.split(' ') %>
              <% def body = words.size() > 100 ? (words[0..100]) : words %>
              <p>${body.join(' ')}</p>
              <a href="${post.uri}"><span class="red-text lighten-2">Read more ...</span></a>
            </div>
          </article-body>
        </div>
      </article>
      <div class="divider"></div>
      <% } %>
    </div>
  </div>

<div>
<br>
<% if (published_posts.size() > 7) { %>
<h6><center><b>You can find the older posts in <a class="site-nav__link" href="<%=content.rootpath ?: ''%>archive.html">Archive</a></h6></center>
<% } %>
<br>
<br>

</main>

<% include "footer.gsp" %>
