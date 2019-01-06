<% include "header.gsp" %>     
<main>
  <div class="container">

	<%   def slurper = new XmlSlurper() %>
	<%   def splittedLines = content.body.split("\n") %>
	<%   def titles = splittedLines.findAll { it -> it.startsWith("<h2")}.collect { slurper.parseText(it).toString() } %>

<%	splittedLines.eachWithIndex{ String entry, int i -> %>
  <%              if(entry.endsWith("\"sect1\">")){ %>
    <%                def value = slurper.parseText(splittedLines[i+1]).toString().replaceAll(" ", "") %>
      <%              def newEntry = entry.replace("class=\"sect1\"", "id=\"$value\" class=\"sect1 scrollspy\"") %>
        <%            splittedLines[i] = newEntry %>
          <%      } %>
            <%} %>
            
    <div class="row moved">
	<div>
      <article>
        <div class="page-header">
		<h1 class="content-title">${content.title}</h1>
		<div class="article-date"><em>${content.date.format("dd MMMM, yyyy")}</em></div>
		</div>
		<article-body>
   	${splittedLines.join('\n')}
		</article-body>
	</article>
	</div>
       <div class="col s2 hide-on-small-only">
		 <div class="toc-wrapper pin-top" style="top: 37px; width: 200px">
          <div style="height: 37px;">
          <ul class="table-of-contents"> 
          			<%   titles.collect { "<li><a href=\"#${it.replaceAll(" ", "")}\">${it}</a></li>" }.each {println(it)} %>
           </ul>
          </div>
        </div>      	

      </div>
          

	</div>
</div>

</main>

<% include "footer.gsp" %>
