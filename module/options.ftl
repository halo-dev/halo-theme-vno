<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="/static/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/plugins/toast/css/jquery.toast.min.css">
    <link rel="stylesheet" href="/static/css/AdminLTE.min.css">
    <style>
        .themeSetting,.themeImg{
            padding-top: 15px;
            padding-bottom: 15px;
        }
        .form-horizontal .control-label{
            text-align: left;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6 themeImg">
            <img src="/${themeDir}/screenshot.png" style="width: 100%;">
        </div>
        <div class="col-md-6 themeSetting">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#general" data-toggle="tab">基本设置</a>
                    </li>
                    <li>
                        <a href="#sns" data-toggle="tab">社交资料</a>
                    </li>
                    <li>
                        <a href="#about" data-toggle="tab">关于</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <!--基本设置-->
                    <div class="tab-pane active" id="general">
                        <form method="post" class="form-horizontal" id="vnoGeneralOptions">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="vnoGeneralSubtitle" class="col-sm-4 control-label">副标题：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="vnoGeneralSubtitle" name="vno_general_subtitle" value="${options.vno_general_subtitle?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="vnoGeneralWelcomeMessage" class="col-sm-4 control-label">欢迎信息：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="vnoGeneralWelcomeMessage" name="vno_general_welcome_message" value="${options.vno_general_welcome_message?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="vnoGeneralFavicon" class="col-sm-4 control-label">Favicon：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="vnoGeneralFavicon" name="vno_general_favicon" value="${options.vno_general_favicon?if_exists}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('vnoGeneralFavicon')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="vnoGeneralCoverImage" class="col-sm-4 control-label">首页背景图片：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="vnoGeneralCoverImage" name="vno_general_cover_image" value="${options.vno_general_cover_image?if_exists}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('vnoGeneralCoverImage')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="vnoGeneralCoverColor" class="col-sm-4 control-label">首页背景颜色：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="vnoGeneralCoverColor" name="vno_general_cover_color" value="${options.vno_general_cover_color?default("red")}" placeholder="blue, green, purple, red, orange or slate">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="vnoGeneralBlogButton" class="col-sm-4 control-label">博客按钮名称：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="vnoGeneralBlogButton" name="vno_general_blog_button" value="${options.vno_general_blog_button?default("博客")}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="vnoGeneralNavButton" class="col-sm-4 control-label">导航按钮：</label>
                                    <div class="col-sm-8">
                                        <textarea class="form-control" rows="3" id="vno_general_nav_button" name="vno_general_nav_button" style="resize: none">${options.vno_general_nav_button?default('<li class="navigation__item"><a href="#" target="_blank" title="#">按照这个格式，可以多个</a></li>')}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('vnoGeneralOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>
                    <!-- 社交资料 -->
                    <div class="tab-pane" id="sns">
                        <form method="post" class="form-horizontal" id="vnoSnsOptions">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="vnoSnsRss" class="col-sm-4 control-label">RSS：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="vno_sns_rss" id="vnoSnsRss" value="true" ${((options.vno_sns_rss?default('true'))=='true')?string('checked','')}> 显示
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="vno_sns_rss" id="vnoSnsRss" value="false" ${((options.vno_sns_rss?if_exists)=='false')?string('checked','')}> 隐藏
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="vnoSnsWeibo" class="col-sm-4 control-label">微博：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="vnoSnsWeibo" name="vno_sns_weibo" value="${options.vno_sns_weibo?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="vnoSnsGithub" class="col-sm-4 control-label">Github：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="vnoSnsGithub" name="vno_sns_github" value="${options.vno_sns_github?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="vnoSnsTwitter" class="col-sm-4 control-label">Twitter：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="vnoSnsTwitter" name="vno_sns_twitter" value="${options.vno_sns_twitter?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="vnoSnsGooglePlus" class="col-sm-4 control-label">Google Plus：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="vnoSnsGooglePlus" name="vno_sns_google_plus" value="${options.vno_sns_google_plus?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="vnoSnsEmail" class="col-sm-4 control-label">Email：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="vnoSnsEmail" name="vno_sns_email" value="${options.vno_sns_email?if_exists}" >
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('vnoSnsOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>
                    <!-- 关于该主题 -->
                    <div class="tab-pane" id="about">
                        <div class="box box-widget widget-user-2">
                            <div class="widget-user-header bg-blue">
                                <div class="widget-user-image">
                                    <img class="img-circle" src="/vno/source/assets/images/avatar.jpg" alt="User Avatar">
                                </div>
                                <h3 class="widget-user-username">Wei Wang</h3>
                                <h5 class="widget-user-desc">上善若水，人淡如菊</h5>
                            </div>
                            <div class="box-footer no-padding">
                                <ul class="nav nav-stacked">
                                    <li><a target="_blank" href="https://onevcat.com/">作者主页</a></li>
                                    <li><a target="_blank" href="https://github.com/onevcat/vno-jekyll.git">原主题地址</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="/static/plugins/jquery/jquery.min.js"></script>
<script src="/static/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="/static/plugins/toast/js/jquery.toast.min.js"></script>
<script src="/static/plugins/layer/layer.js"></script>
<script src="/static/js/app.js"></script>
<script>
    function saveThemeOptions(option) {
        var param = $('#'+option).serialize();
        $.ajax({
            type: 'post',
            url: '/admin/option/save',
            data: param,
            success: function (data) {
                showMsg("保存成功！","success",1000);
            }
        });
    }
    function openAttach(id) {
        layer.open({
            type: 2,
            title: '所有附件',
            shadeClose: true,
            shade: 0.5,
            area: ['90%', '90%'],
            content: '/admin/attachments/select?id='+id,
            scrollbar: false
        });
    }
</script>
</html>