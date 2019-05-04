<#include "module/default.ftl">
<@default title="${post.title} - ${options.blog_title?default('vno')}" keywords="${options.seo_keywords!}" desc="${post.summary!}" canonical="${options.blog_url!}/archives/${post.url}">
  <article class="post-container post-container--single" itemscope itemtype="http://schema.org/BlogPosting">
      <header class="post-header">
          <div class="post-meta">
              <time datetime="${post.createTime}" itemprop="datePublished" class="post-meta__date date">${post.createTime?string("yyyy-MM-dd")}</time> &#8226;
              <span class="post-meta__tags tags">
                  <#if tags?? && tags?size gt 0>
                    <#list tags as tag>
                        <a href="${options.blog_url!}/tags/${tag.slugName}#blog">${tag.name}</a>&nbsp;
                    </#list>
                  </#if>
              </span>
          </div>
          <h1 class="post-title">${post.title}</h1>
      </header>
      <section class="post">
          ${post.formatContent}
      </section>
  </article>
  <#include "_includes/read-more.ftl">
  <#include "_includes/comments.ftl">
<@comment post=post type="post" />
</@default>