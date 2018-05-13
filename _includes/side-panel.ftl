<header class="panel-cover <#if post??>panel-cover--collapsed</#if>"
        style="background-image: url('${options.vno_general_cover_image?default("/vno/source/assets/images/background-cover.jpg")}')">
    <div class="panel-main">
        <div class="panel-main__inner panel-inverted">
            <div class="panel-main__content">
                <a href="/#blog" title="前往 ${options.blog_title?if_exists} 的主页" class="blog-button">
                    <img src="${user.userAvatar?default('/vno/source/assets/images/avatar.jpg')}" width="80" alt="${options.blog_title?if_exists} logo"
                        class="panel-cover__logo logo"/>
                </a>
                <h1 class="panel-cover__title panel-title">
                    <a href="/#blog" title="link to homepage for ${options.blog_title?if_exists}" class="blog-button">${options.blog_title?if_exists}</a>
                </h1>
                <#if options.vno_general_subtitle??>
                <span class="panel-cover__subtitle panel-subtitle">${options.vno_general_subtitle}</span>
                </#if>
                <hr class="panel-cover__divider"/>
                <p class="panel-cover__description">${user.userDesc?if_exists}</p>
                <hr class="panel-cover__divider panel-cover__divider--secondary"/>

                <#if options.vno_general_welcome_message??>
                <p class="panel-cover__description">${options.vno_general_welcome_message}</p>
                </#if>

                <div class="navigation-wrapper">
                    <div>
                        <nav class="cover-navigation cover-navigation--primary">
                            <ul class="navigation">
                                <li class="navigation__item">
                                    <a href="/#blog" title="" class="blog-button">${options.vno_general_blog_button?default("博客")}</a>
                                </li>
                            ${options.vno_general_nav_button?if_exists}
                            </ul>
                        </nav>
                    </div>
                    <div>
                        <#include "social.ftl">
                    </div>
                </div>
            </div>
        </div>
        <#if options.vno_general_cover_color??>
            <div class="panel-cover--overlay cover-${options.vno_general_cover_color}"></div>
        <#else>
            <div class="panel-cover--overlay cover-disabled"></div>
        </#if>
    </div>
</header>
