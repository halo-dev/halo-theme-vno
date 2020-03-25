<section class="read-more">
    <#if prevPost??>
       <div class="read-more-item">
           <span class="read-more-item-dim">最近的文章</span>
           <h2 class="post-list__post-title post-title"><a href="${prevPost.fullPath!}" title="link to ${prevPost.title!}">${prevPost.title!}</a></h2>
           <p class="excerpt">${prevPost.summary!}&hellip;</p>
           <div class="post-list__meta">
               <time datetime="${prevPost.createTime}" class="post-list__meta--date date">${prevPost.createTime?string("yyyy-MM-dd")}</time>
               <a class="btn-border-small" href="${prevPost.fullPath!}">继续阅读</a></div>
       </div>
    </#if>

    <#if nextPost??>
       <div class="read-more-item">
           <span class="read-more-item-dim">更早的文章</span>
           <h2 class="post-list__post-title post-title"><a href="${nextPost.fullPath!}" title="link to ${nextPost.title!}">${nextPost.title!}</a></h2>
           <p class="excerpt">${nextPost.summary!}&hellip;</p>
           <div class="post-list__meta">
               <time datetime="${nextPost.createTime}" class="post-list__meta--date date">${nextPost.createTime?string("yyyy-MM-dd")}</time>
               <a class="btn-border-small" href="${nextPost.fullPath!}">继续阅读</a>
           </div>
       </div>
    </#if>
</section>
