<#macro nav url="">
<hr class="post-list__divider " />
<nav class="pagination" role="navigation">
    <#if posts.totalPages gt 1>
        <#if posts.hasPrevious()>
            <#if posts.number==1>
                <a class="newer-posts pagination__newer btn btn-small btn-tertiary" href="${url}#blog">&larr; 最近</a>
            <#else>
                <a class="newer-posts pagination__newer btn btn-small btn-tertiary" href="${url}page/${posts.number}#blog">&larr; 最近</a>
            </#if>
        </#if>
        <span class="pagination__page-number">${posts.number+1} / ${posts.totalPages}</span>
        <#if posts.hasNext()>
            <a class="older-posts pagination__older btn btn-small btn-tertiary" href="${url}page/${posts.number+2}#blog">更早 &rarr;</a>
        </#if>
    </#if>
</nav>
</#macro>