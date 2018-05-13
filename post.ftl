<#include "module/default.ftl">
<@default title="${post.postTitle} - ${options.blog_title?default('vno')}" keywords="${options.seo_keywords?if_exists}" desc="${post.postSummary?if_exists}" canonical="${options.blog_url?if_exists}/archives/${post.postUrl}">
  <article class="post-container post-container--single" itemscope itemtype="http://schema.org/BlogPosting">
      <header class="post-header">
          <div class="post-meta">
              <time datetime="${post.postDate}" itemprop="datePublished" class="post-meta__date date">${post.postDate?string("yyyy-MM-dd")}</time> &#8226;
              <span class="post-meta__tags tags">
                  <#if post.tags?? && post.tags?size gt 0>
                    <#list post.tags as tag>
                        <a href="/tags/${tag.tagUrl}#blog">${tag.tagName}</a>&nbsp;
                    </#list>
                  </#if>
              </span>
          </div>
          <h1 class="post-title">${post.postTitle}</h1>
      </header>
      <section class="post">
          ${post.postContent}
      </section>
  </article>
  <#include "_includes/read-more.ftl">
  <#include "_includes/comments.ftl">
</@default>