<header class="panel-cover <#if post??>panel-cover--collapsed</#if>"
        style="background-image: url('${settings.cover_image?default("${static!}/source/assets/images/background-cover.jpg")}')">
    <div class="panel-main">
        <div class="panel-main__inner panel-inverted">
            <div class="panel-main__content">
                <a href="${context!}/#blog" title="前往 ${options.blog_title!} 的主页" class="blog-button">
                    <img src="${user.avatar?default('${static!}/source/assets/images/avatar.jpg')}" width="80" alt="${options.blog_title!} logo"
                        class="panel-cover__logo logo"/>
                </a>
                <h1 class="panel-cover__title panel-title">
                    <a href="${context!}/#blog" title="link to homepage for ${options.blog_title!}" class="blog-button">${options.blog_title!}</a>
                </h1>
                <#if settings.subtitle??>
                <span class="panel-cover__subtitle panel-subtitle">${settings.subtitle!}</span>
                </#if>
                <hr class="panel-cover__divider"/>
                <p class="panel-cover__description">${user.description!}</p>
                <hr class="panel-cover__divider panel-cover__divider--secondary"/>

                <#if settings.welcome_message??>
                <p class="panel-cover__description">${options.welcome_message}</p>
                </#if>

                <div class="navigation-wrapper">
                    <div>
                        <nav class="cover-navigation cover-navigation--primary">
                            <ul class="navigation">
                                <li class="navigation__item">
                                    <a href="${context!}/#blog" title="" class="blog-button">${settings.blog_button!'博客'}</a>
                                </li>
                            ${settings.nav_button!}
                            </ul>
                        </nav>
                    </div>
                    <div>
                        <#include "social.ftl">
                    </div>
                </div>
            </div>
        </div>
        <#if (options.cover_color!'red') != ''>
            <div class="panel-cover--overlay cover-${options.cover_color!'red'}"></div>
        <#else>
            <div class="panel-cover--overlay cover-disabled"></div>
        </#if>
    </div>
</header>
