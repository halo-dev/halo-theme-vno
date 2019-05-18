<section class="read-more">
    <#if prePost??>
    <div class="read-more-item">
        <span class="read-more-item-dim">最近的文章</span>
        <h2 class="post-list__post-title post-title">
            <a href="${ctx!}/archives/${prePost.url}" title="link to ${prePost.title}">${prePost.title}</a>
        </h2>
        <p class="excerpt">
                ${prePost.summary!}&hellip;
        </p>
        <div class="post-list__meta">
            <time datetime="${prePost.createTime}" class="post-list__meta--date date">
                ${prePost.createTime?string("yyyy-MM-dd")}
            </time> &#8226;
            <span class="post-list__meta--tags tags">
              <#if prePost.tags?? && prePost.tags?size gt 0>
                <#list prePost.tags as tag>
                    ${tag.name}&nbsp;
                </#list>
              </#if>
            </span>
            <a class="btn-border-small" href="${ctx!}/archives/${prePost.url}">继续阅读</a>
        </div>
    </div>
    </#if>
    <#if nextPost??>
    <div class="read-more-item">
        <span class="read-more-item-dim">更早的文章</span>
        <h2 class="post-list__post-title post-title">
            <a href="${ctx!}/archives/${nextPost.url}" title="link to ${nextPost.title}">
            ${nextPost.title!}
            </a>
        </h2>
        <p class="excerpt">
                ${nextPost.summary}&hellip;
        </p>
        <div class="post-list__meta">
            <time datetime="${nextPost.createTime}" class="post-list__meta--date date">
                ${nextPost.createTime?string("yyyy-MM-dd")}
            </time> &#8226;
            <span class="post-list__meta--tags tags">
              <#if nextPost.tags?? && nextPost.tags?size gt 0>
                <#list nextPost.tags as tag>
                    ${tag.name}&nbsp;
                </#list>
              </#if>
            </span>
            <a class="btn-border-small" href="${ctx!}/archives/${nextPost.url}">继续阅读</a>
        </div>
    </div>
    </#if>
</section>
