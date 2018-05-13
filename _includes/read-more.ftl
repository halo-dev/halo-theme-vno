<section class="read-more">
    <#if afterPost??>
    <div class="read-more-item">
        <span class="read-more-item-dim">最近的文章</span>
        <h2 class="post-list__post-title post-title">
            <a href="/archives/${afterPost.postUrl}" title="link to ${afterPost.postTitle}">${afterPost.postTitle}</a>
        </h2>
        <p class="excerpt">
                ${afterPost.postSummary?if_exists}&hellip;
        </p>
        <div class="post-list__meta">
            <time datetime="${afterPost.postDate}" class="post-list__meta--date date">
                ${afterPost.postDate?string("yyyy-MM-dd")}
            </time> &#8226;
            <span class="post-list__meta--tags tags">
              <#if afterPost.tags?? && afterPost.tags?size gt 0>
                <#list afterPost.tags as tag>
                    ${tag.tagName}&nbsp;
                </#list>
              </#if>
            </span>
            <a class="btn-border-small" href="/archives/${afterPost.postUrl}">继续阅读</a>
        </div>
    </div>
    </#if>
    <#if beforePost??>
    <div class="read-more-item">
        <span class="read-more-item-dim">更早的文章</span>
        <h2 class="post-list__post-title post-title">
            <a href="/archives/${beforePost.postUrl}" title="link to ${beforePost.postTitle}">
            ${beforePost.postTitle?if_exists}
            </a>
        </h2>
        <p class="excerpt">
                ${beforePost.postSummary}&hellip;
        </p>
        <div class="post-list__meta">
            <time datetime="${beforePost.postDate}" class="post-list__meta--date date">
                ${beforePost.postDate?string("yyyy-MM-dd")}
            </time> &#8226;
            <span class="post-list__meta--tags tags">
              <#if beforePost.tags?? && beforePost.tags?size gt 0>
                <#list beforePost.tags as tag>
                    ${tag.tagName}&nbsp;
                </#list>
              </#if>
            </span>
            <a class="btn-border-small" href="/archives/${beforePost.postUrl}">继续阅读</a>
        </div>
    </div>
    </#if>
</section>
