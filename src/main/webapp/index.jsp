<%--
  Created by IntelliJ IDEA.
  User: OrionPax
  Date: 2018/5/21
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"e644b8e723","applicationID":"17322787","transactionName":"el8PEkJZWg4BR04OX1RVTg9eUlMa","queueTime":0,"applicationTime":10,"agent":""}</script>
    <script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var o=t[n]={exports:{}};e[n][0].call(o.exports,function(t){var o=e[n][1][t];return r(o||t)},o,o.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(e,t,n){function r(){}function o(e,t,n){return function(){return i(e,[f.now()].concat(u(arguments)),t?null:this,n),t?void 0:this}}var i=e("handle"),a=e(2),u=e(3),c=e("ee").get("tracer"),f=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,t){s[t]=o(d+t,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,o="function"==typeof t;return i(l+"tracer",[f.now(),e,n],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],n),o)try{return t.apply(this,arguments)}catch(e){throw c.emit("fn-err",[arguments,this,e],n),e}finally{c.emit("fn-end",[f.now()],n)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=o(l+t)}),newrelic.noticeError=function(e){"string"==typeof e&&(e=new Error(e)),i("err",[e,f.now()])}},{}],2:[function(e,t,n){function r(e,t){var n=[],r="",i=0;for(r in e)o.call(e,r)&&(n[i]=t(r,e[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],3:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,o=n-t||0,i=Array(o<0?0:o);++r<o;)i[r]=e[t+r];return i}t.exports=r},{}],4:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function o(e){function t(e){return e&&e instanceof r?e:e?c(e,u,i):i()}function n(n,r,o,i){if(!d.aborted||i){e&&e(n,r,o);for(var a=t(o),u=m(n),c=u.length,f=0;f<c;f++)u[f].apply(a,r);var p=s[y[n]];return p&&p.push([b,n,r,a]),a}}function l(e,t){v[e]=m(e).concat(t)}function m(e){return v[e]||[]}function w(e){return p[e]=p[e]||o(n)}function g(e,t){f(e,function(e,n){t=t||"feature",y[n]=t,t in s||(s[t]=[])})}var v={},y={},b={on:l,emit:n,get:w,listeners:m,context:t,buffer:g,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",c=e("gos"),f=e(2),s={},p={},d=t.exports=o();d.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(o.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[t]=r,r}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){o.buffer([e],r),o.emit(e,t,n)}var o=e("ee").get("handle");t.exports=r,r.ee=o},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!x++){var e=h.info=NREUM.info,t=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return s.abort();f(y,function(t,n){e[t]||(e[t]=n)}),c("mark",["onload",a()+h.offset],null,"api");var n=d.createElement("script");n.src="https://"+e.agent,t.parentNode.insertBefore(n,t)}}function o(){"complete"===d.readyState&&i()}function i(){c("mark",["domContent",a()+h.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-h.offset}var u=(new Date).getTime(),c=e("handle"),f=e(2),s=e("ee"),p=window,d=p.document,l="addEventListener",m="attachEvent",w=p.XMLHttpRequest,g=w&&w.prototype;NREUM.o={ST:setTimeout,SI:p.setImmediate,CT:clearTimeout,XHR:w,REQ:p.Request,EV:p.Event,PR:p.Promise,MO:p.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1071.min.js"},b=w&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),h=t.exports={offset:u,now:a,origin:v,features:{},xhrWrappable:b};e(1),d[l]?(d[l]("DOMContentLoaded",i,!1),p[l]("load",r,!1)):(d[m]("onreadystatechange",o),p[m]("onload",r)),c("mark",["firstbyte",u],null,"api");var x=0,E=e(4)},{}]},{},["loader"]);</script>
    <meta name="renderer" content="webkit">
    <title>Tower - 深受用户喜爱的团队协作工具</title>
    <meta name="keywords" content="项目管理,任务管理,团队协作,项目协作,在线办公,网上办公室" />
    <meta name="description" content="Tower 是 24 小时的网上办公室，你可以在这里快速处理任务、开展讨论、查看项目进展，随时与你的团队高效协作" />
    <meta name ="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="baidu-site-verification" content="qLDoHdGnb64RHlkm" />
    <meta name="alexaVerifyID" content="SIgQikd9LazsFz9M1vPBaQyC4Gw" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="/favicon.ico" sizes="32x32" />
    <link rel="icon" href="/favicon.ico" sizes="64x64" />
    <link rel="icon" href="/favicon.ico" sizes="128x128" />
    <link rel="apple-touch-icon-precomposed" href="/assets/mobile/icon/icon@512-c7c654c8348a4af697bb86f952f57923247c48b88fbbed1a472839eb800d2000.png" />

    <link rel="stylesheet" media="all" href="/assets/home/application-f51a1f1c5aebf9d3428384484eeeaa687ee8c24c6ec8907f9e6488c6ad5652cb.css" data-turbolinks-track="true" />

    <script src="/assets/home/application-a5cc9e3413244dc68673f82bd6f838805146b88598b4743a0771bc4132c42924.js" data-turbolinks-track="true"></script>


    <meta name="csrf-param" content="authenticity_token" />
    <meta name="csrf-token" content="1hTvsTv/jlkjBCUInmkq7GpZG8m6mg7Bctzd9j6FHPhIUb1MEOxZfjJTmXSH2jeCF3hN2KKVIHX4lnjm3UonJQ==" />
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-100449807-1', 'auto');
        ga('create', 'UA-100449807-2', 'auto', 'teamTracker');

        ga('send', 'pageview', {
        });
        ga('teamTracker.send', 'pageview', {
        });

        ga('set', 'dimension4', 'false');
    </script>

</head>

<body id="home-index">
<header class="header">
    <div class="container">
        <a class="logo" href="/">
            <i class="twr twr-logo"></i>
        </a>
        <nav class="nav">
            <a class="nav-link" href="/">首页</a>
            <a class="nav-link" href="/pro">价格</a>
            <a class="nav-link" href="/guides">快速入门</a>
            <a class="nav-link" id="link-header-resources" href="javascript:;">
                资源 <i class="twr twr-caret-down"></i>
            </a>    </nav>

        <div class="btn-group">
            <a class="btn btn-no-border" data-turbolinks="false" href="/users/sign_up">免费注册</a>
            <a class="btn" data-turbolinks="false" href="/users/sign_in">登录</a>
        </div>
    </div>
</header>


<script type="text/html" id="tpl-header-menu">
    <ul class="menu">
        <li><a href="/help">帮助中心</a></li>
        <li><a href="/roadmap">功能日志</a></li>
        <li><a href="/downloads">下载客户端</a></li>
        <li><a href="/choices">企业服务精选</a></li>
        <li class="part-line"></li>
        <li><a href="https://weibo.com/towerim" target="_blank"><i class="twr twr-weibo"></i> @Towerim</a></li>
        <li><a href="javascript:;" id="link-wechat-qrcode"><i class="twr twr-weixin"></i> Tower 公众号</a></li>
    </ul>
</script>

<script type="text/html" id="tpl-header-wechat">
    <h3 class="simple-dialog-title">扫码访问微信公众号</h3>
    <p><img width="240" height="240" alt="扫码访问微信公众号" src="/assets/qrcode-wechat-c888cd0e3d1f67a968c953ef21607c0a0d22a16eb5743e213c2aadad960258cf.png" /></p>
    <p><small>或，微信添加公众号搜索 Tower</small></p>
</script>


<div class="masthead" data-turbolinks="false">
    <div class="container">
        <h1 class="solgan">深受用户喜爱的团队协作工具</h1>
        <p class="status">七十万团队、七百万人正在高效率地使用 Tower 进行协作，<br>你的团队也应如此。</p>

        <p><a href="/users/sign_up" class="btn btn-signup">免费注册</a></p>
    </div>
</div>

<div class="feature feature-project">
    <div class="container">
        <h3>掌控你的项目</h3>
        <p class="subline">告别冗长的会议、拖沓的进度和繁复的邮件，快速、高效地完成任务</p>

        <div class="main">
            <ul class="feature-list">
                <li class="discussion active">在线讨论，速得结果</li>
                <li class="todo">细分任务，逐一跟踪</li>
                <li class="file">文件共享，取用方便</li>
                <li class="document">在线文档，协作编辑</li>
            </ul>

            <div class="screenshot">
                <span class="shot"></span>
                <span class="finger"></span>
            </div>
        </div>
    </div>
</div>

<div class="feature feature-team">
    <div class="container">
        <h3>管理你的团队</h3>
        <p class="subline">洞悉成员每周进展，纵览团队大小事务，明确各人职责权限，轻松做到对项目了如指掌</p>

        <div class="main">
            <div class="screenshot">
                <span class="shot report"></span>
            </div>

            <ul class="feature-list">
                <li class="report active">设定汇报，了解成员状态</li>
                <li class="calendar">团队日历，共享所有日程</li>
                <li class="role">角色控制，满足管理需要</li>
            </ul>
        </div>
    </div>
</div>

<div class="feature feature-logowall">
    <div class="container">
        <h3>他们都在使用 Tower</h3>
        <p class="subline">用户超过 70 万支团队，辐射 32 个行业</p>

        <div class="main">
            <ul class="sort-list">
                <li class="sort disabled"><a href="/masters/luoyi">法律</a></li>
                <li class="sort active" data-sort="it">互联网</li>
                <li class="sort" data-sort="edu">教育</li>
                <li class="sort" data-sort="media">媒体</li>
                <li class="sort" data-sort="other">其他</li>
            </ul>

            <div class="logowall it"></div>
        </div>
    </div>
</div>

<div class="feature feature-uservoice">
    <div class="container">
        <h3>他们这样评价 Tower</h3>

        <div class="main">
            <ul class="voice" id="player">
                <li class="v1 cur">给广大中小创业团队推荐一下这个多人协作工具 Tower ，如果你的团队跨地域的，或者不在一起办公，如果你在一个虚拟团队，那么建议你先免费尝试一下这款工具，又不费电。有无基础均可使用，包教包会，一期不好用的话下期免费。</li>
                <li class="v2">用了 Tower，让我这样一个每天要管乱七八糟事情布置各种任务然后一扭头自己都忘了哪个优先级高，时常被员工在厕所骂的土老板一下子享受到了比 QQ 和 Excel 更牛逼的团队协作和项目管理方式。更酷的是，这玩意实在是太简单了。</li>
                <li class="v3">Tower 的很多地方设计很细致。其中一个部分是这样的，其他软件中发图片必须要求先截取，然后再上传，Tower  可以直接从剪切板中粘贴图片，简直和本地操作一样流畅。超级赞！</li>
                <li class="v4">用了 3 个月的 Tower，已经完全离不开它了。Tower 也许并不适合每一个团队，但如果你们有大量的，飞快刷新的，条理性很强的多人协作任务，并且需要高效率地跟踪管理这些任务，Tower 就是神器。</li>
            </ul>
            <ul class="user" id="ctrl">
                <li class="u1 c1 cur">
                    <img class="avatar" width="60" height="60" src="/assets/avatar-fengdahui-c817c9ea38b6b799a39f0cca4eeade3504ea52ec30d1cd153880dbbf9fa1e521.png" alt="Fenng" />
                    <span class="name">冯大辉</span><br />
                    <span class="info">无码科技创始人</span>
                </li>
                <li class="u2 c2">
                    <img class="avatar" width="60" height="60" src="/assets/avatar-joeyyin-6c8544436f61501cfac04aadb6366108bc0bc742fe2014cbf815332f26a114a1.png" alt="Joey Yin" />
                    <span class="name">Joey Yin</span><br />
                    <span class="info">四海邮创始人</span>
                </li>
                <li class="u3 c3">
                    <img class="avatar" width="60" height="60" src="/assets/avatar-yxshawn-6b75196c4667aeccc3204df37a1832178b964be8342420ba9737288b440a7ca5.png" alt="肖轶翔" />
                    <span class="name">肖轶翔</span><br />
                    <span class="info">EUMLab 创始人</span>
                </li>
                <li class="u4 c4">
                    <img class="avatar" width="60" height="60" src="/assets/avatar-guoziwei-4c7356defe53fd508e38aa1fc254860d6316449e48135e67faa55ecbc3e39e85.png" alt="纯银" />
                    <span class="name">纯银</span><br />
                    <span class="info">蝉游记创始人</span>
                </li>
            </ul>
        </div>
    </div>
</div>


<div class="feature feature-platform section-downloads" id="download-apps">
    <div class="container">
        <h3 class="feature-title">支持你的所有设备</h3>
        <p class="subline">你可以在所有设备的浏览器中或在微信中直接使用 Tower。&#10;我们同时还提供了 iOS 和 Android 客户端，沟通协作两不误。</p>

        <div class="main">
            <ul class="download">
                <li>
                    <a href="https://itunes.apple.com/cn/app/tower-%E5%AE%A2%E6%88%B7%E7%AB%AF/id674022052?mt=8" class="btn btn-white" data-tpl="tpl-qrcode-ios" target="_blank">
                        <i class="twr twr-apple"></i>
                        <span>下载 iOS 应用</span>
                    </a>
                </li>
                <li>
                    <a href="http://a.app.qq.com/o/simple.jsp?pkgname=im.tower.plus.android" class="btn btn-white" data-tpl="tpl-qrcode-android" target="_blank">
                        <i class="twr twr-android"></i>
                        <span>下载 Android 应用</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;" class="btn btn-white" data-tpl="tpl-qrcode-wechat">
                        <i class="twr twr-weixin"></i>
                        <span>访问微信版</span>
                    </a>
                </li>
                <br>
                <li>
                    <a href="http://towerfiles.oss-cn-hangzhou.aliyuncs.com/electron/win/Tower%20Setup%200.6.4.exe" class="btn btn-white beta" download>
                        <i class="twr twr-windows"></i>
                        <span>Windows</span>
                    </a>
                <li>
                    <a href="https://towerfiles.oss-cn-hangzhou.aliyuncs.com/electron/mac/Tower-0.6.4.dmg" class="btn btn-white beta" download>
                        <i class="twr twr-apple"></i>
                        <span>MacOS</span>
                    </a>
                </li>
            </ul>

            <div class="image-devices"></div>
        </div>
    </div>
</div>

<script type="text/html" id="tpl-qrcode-ios">
    <img width="180" height="180" alt="扫码下载客户端" src="/assets/qrcode-ios-1826dc3bdad49c86ac6df72b24148a22df4e0792291c6758be6e0ff67d69f5e7.png" />
</script>

<script type="text/html" id="tpl-qrcode-android">
    <img width="180" height="180" alt="扫码下载客户端" src="/assets/qrcode-android-c6ae86a671cddc256e23b9336e845b6fd92ddaf898522a7acbaf81e76be2ebce.png" />
</script>

<script type="text/html" id="tpl-qrcode-wechat">
    <img width="180" height="180" alt="扫码访问微信公众号" src="/assets/qrcode-wechat-c888cd0e3d1f67a968c953ef21607c0a0d22a16eb5743e213c2aadad960258cf.png" />
</script>


<div class="feature feature-partner">
    <div class="container">
        <h3>合作伙伴</h3>

        <div class="main">
            <div class="row">
                <a href="https://pubu.im/" target="_blank"><img src="/assets/home/logo_pubu-ea11ba7fd8cc6a3e68d37e049a9f48d432ac1cac65089538eb4153b7aafade18.png" alt="Logo pubu" /></a>
                <a href="https://yiqixie.com/" target="_blank"><img src="/assets/home/logo_yiqixie-e93afee5f586ab06fab4dbc95da8b1f5b8ee99d542bbfe4ad6bb21dc542bc949.png" alt="Logo yiqixie" /></a>
                <a href="https://www.upyun.com" target="_blank"><img src="/assets/home/logo_upyun-9bcbc1cfa2fda6b3b5e5f06f9c70c1e5edcdc76daed1dffd8b444cf72d6519a2.png" alt="Logo upyun" /></a>
            </div>
            <div class="row">
                <a href="https://bearychat.com/" target="_blank"><img src="/assets/home/logo_bearychat-89e2420bff98d9af9de80b4e8ac2bb956f4be836dbf9951dd1339ac3857d18a9.png" alt="Logo bearychat" /></a>
                <a href="http://segmentfault.com/" target="_blank"><img src="/assets/home/segmentfault-511ba17ae2bf4b57c48bab2d91381c584bddd432e265d5fd609575b734ca8f8b.png" alt="Segmentfault" /></a>
                <a href="http://cowork.cn" target="_blank"><img src="/assets/home/logo_kuwo-602d1a4411ce746344f97a436238ba7371bbe609b52476a06ac84895b4105a7c.png" alt="Logo kuwo" /></a>
                <a href="http://www.hiwork.cc/" target="_blank"><img src="/assets/home/logo_hiwork-a59248dc9947b46500e133c9252d0efd75bbcf40f82c3786afecc082ce3977c2.png" alt="Logo hiwork" /></a>
            </div>
        </div>
    </div>
</div>

<script id="IntercomSettingsScriptTag">window.intercomSettings = {"hide_default_launcher":false,"app_id":"xbtsuf77"};(function(){var w=window;var ic=w.Intercom;if(typeof ic==="function"){ic('reattach_activator');ic('update',intercomSettings);}else{var d=document;var i=function(){i.c(arguments)};i.q=[];i.c=function(args){i.q.push(args)};w.Intercom=i;function l(){var s=d.createElement('script');s.type='text/javascript';s.async=true;s.src='https://widget.intercom.io/widget/xbtsuf77';var x=d.getElementsByTagName('script')[0];x.parentNode.insertBefore(s,x);}if(w.attachEvent){w.attachEvent('onload',l);}else{w.addEventListener('load',l,false);}};})()</script>


<footer class="footer">
    <div class="container">
        <ul>
            <li><a href="/agreement" target="_blank">服务条款</a></li>
            <li><a href="/pro" target="_blank">付费方案</a></li>
            <li><a href="/help" target="_blank">帮助中心</a></li>
            <li><a href="/roadmap" target="_blank">功能日志</a></li>
        </ul>

        <p class="copyright">
      <span class="filings">
        <em title="中华人民共和国增值电信业务经营许可证">川B2-20130052</em>
        <em title="中华人民共和国互联网信息服务备案">蜀ICP备12019256号-5</em>
      </span>
            © Mycolorway Design.
        </p>
    </div>
</footer>


<script>
    //<![CDATA[
    window.gon={};gon.oss_direct_upload=true;
    //]]>
</script>
</body>
</html>

