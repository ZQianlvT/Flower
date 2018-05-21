<%--
  Created by IntelliJ IDEA.
  User: 徐哲哲
  Date: 2018/5/21
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <script type="text/javascript">window.NREUM || (NREUM = {});
    NREUM.info = {
        "beacon": "bam.nr-data.net",
        "errorBeacon": "bam.nr-data.net",
        "licenseKey": "e644b8e723",
        "applicationID": "17322787",
        "transactionName": "el8PEkJZWg4BR04FUVVVDwJRRGkHElAPEkMWXgQR",
        "queueTime": 0,
        "applicationTime": 97,
        "agent": ""
    }</script>
    <script type="text/javascript">window.NREUM || (NREUM = {}), __nr_require = function (e, t, n) {
        function r(n) {
            if (!t[n]) {
                var o = t[n] = {exports: {}};
                e[n][0].call(o.exports, function (t) {
                    var o = e[n][1][t];
                    return r(o || t)
                }, o, o.exports)
            }
            return t[n].exports
        }

        if ("function" == typeof __nr_require) return __nr_require;
        for (var o = 0; o < n.length; o++) r(n[o]);
        return r
    }({
        1: [function (e, t, n) {
            function r() {
            }

            function o(e, t, n) {
                return function () {
                    return i(e, [f.now()].concat(u(arguments)), t ? null : this, n), t ? void 0 : this
                }
            }

            var i = e("handle"), a = e(2), u = e(3), c = e("ee").get("tracer"), f = e("loader"), s = NREUM;
            "undefined" == typeof window.newrelic && (newrelic = s);
            var p = ["setPageViewName", "setCustomAttribute", "setErrorHandler", "finished", "addToTrace", "inlineHit", "addRelease"],
                d = "api-", l = d + "ixn-";
            a(p, function (e, t) {
                s[t] = o(d + t, !0, "api")
            }), s.addPageAction = o(d + "addPageAction", !0), s.setCurrentRouteName = o(d + "routeName", !0), t.exports = newrelic, s.interaction = function () {
                return (new r).get()
            };
            var m = r.prototype = {
                createTracer: function (e, t) {
                    var n = {}, r = this, o = "function" == typeof t;
                    return i(l + "tracer", [f.now(), e, n], r), function () {
                        if (c.emit((o ? "" : "no-") + "fn-start", [f.now(), r, o], n), o) try {
                            return t.apply(this, arguments)
                        } catch (e) {
                            throw c.emit("fn-err", [arguments, this, e], n), e
                        } finally {
                            c.emit("fn-end", [f.now()], n)
                        }
                    }
                }
            };
            a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","), function (e, t) {
                m[t] = o(l + t)
            }), newrelic.noticeError = function (e) {
                "string" == typeof e && (e = new Error(e)), i("err", [e, f.now()])
            }
        }, {}], 2: [function (e, t, n) {
            function r(e, t) {
                var n = [], r = "", i = 0;
                for (r in e) o.call(e, r) && (n[i] = t(r, e[r]), i += 1);
                return n
            }

            var o = Object.prototype.hasOwnProperty;
            t.exports = r
        }, {}], 3: [function (e, t, n) {
            function r(e, t, n) {
                t || (t = 0), "undefined" == typeof n && (n = e ? e.length : 0);
                for (var r = -1, o = n - t || 0, i = Array(o < 0 ? 0 : o); ++r < o;) i[r] = e[t + r];
                return i
            }

            t.exports = r
        }, {}], 4: [function (e, t, n) {
            t.exports = {exists: "undefined" != typeof window.performance && window.performance.timing && "undefined" != typeof window.performance.timing.navigationStart}
        }, {}], ee: [function (e, t, n) {
            function r() {
            }

            function o(e) {
                function t(e) {
                    return e && e instanceof r ? e : e ? c(e, u, i) : i()
                }

                function n(n, r, o, i) {
                    if (!d.aborted || i) {
                        e && e(n, r, o);
                        for (var a = t(o), u = m(n), c = u.length, f = 0; f < c; f++) u[f].apply(a, r);
                        var p = s[y[n]];
                        return p && p.push([b, n, r, a]), a
                    }
                }

                function l(e, t) {
                    v[e] = m(e).concat(t)
                }

                function m(e) {
                    return v[e] || []
                }

                function w(e) {
                    return p[e] = p[e] || o(n)
                }

                function g(e, t) {
                    f(e, function (e, n) {
                        t = t || "feature", y[n] = t, t in s || (s[t] = [])
                    })
                }

                var v = {}, y = {},
                    b = {on: l, emit: n, get: w, listeners: m, context: t, buffer: g, abort: a, aborted: !1};
                return b
            }

            function i() {
                return new r
            }

            function a() {
                (s.api || s.feature) && (d.aborted = !0, s = d.backlog = {})
            }

            var u = "nr@context", c = e("gos"), f = e(2), s = {}, p = {}, d = t.exports = o();
            d.backlog = s
        }, {}], gos: [function (e, t, n) {
            function r(e, t, n) {
                if (o.call(e, t)) return e[t];
                var r = n();
                if (Object.defineProperty && Object.keys) try {
                    return Object.defineProperty(e, t, {value: r, writable: !0, enumerable: !1}), r
                } catch (i) {
                }
                return e[t] = r, r
            }

            var o = Object.prototype.hasOwnProperty;
            t.exports = r
        }, {}], handle: [function (e, t, n) {
            function r(e, t, n, r) {
                o.buffer([e], r), o.emit(e, t, n)
            }

            var o = e("ee").get("handle");
            t.exports = r, r.ee = o
        }, {}], id: [function (e, t, n) {
            function r(e) {
                var t = typeof e;
                return !e || "object" !== t && "function" !== t ? -1 : e === window ? 0 : a(e, i, function () {
                    return o++
                })
            }

            var o = 1, i = "nr@id", a = e("gos");
            t.exports = r
        }, {}], loader: [function (e, t, n) {
            function r() {
                if (!x++) {
                    var e = h.info = NREUM.info, t = d.getElementsByTagName("script")[0];
                    if (setTimeout(s.abort, 3e4), !(e && e.licenseKey && e.applicationID && t)) return s.abort();
                    f(y, function (t, n) {
                        e[t] || (e[t] = n)
                    }), c("mark", ["onload", a() + h.offset], null, "api");
                    var n = d.createElement("script");
                    n.src = "https://" + e.agent, t.parentNode.insertBefore(n, t)
                }
            }

            function o() {
                "complete" === d.readyState && i()
            }

            function i() {
                c("mark", ["domContent", a() + h.offset], null, "api")
            }

            function a() {
                return E.exists && performance.now ? Math.round(performance.now()) : (u = Math.max((new Date).getTime(), u)) - h.offset
            }

            var u = (new Date).getTime(), c = e("handle"), f = e(2), s = e("ee"), p = window, d = p.document,
                l = "addEventListener", m = "attachEvent", w = p.XMLHttpRequest, g = w && w.prototype;
            NREUM.o = {
                ST: setTimeout,
                SI: p.setImmediate,
                CT: clearTimeout,
                XHR: w,
                REQ: p.Request,
                EV: p.Event,
                PR: p.Promise,
                MO: p.MutationObserver
            };
            var v = "" + location, y = {
                    beacon: "bam.nr-data.net",
                    errorBeacon: "bam.nr-data.net",
                    agent: "js-agent.newrelic.com/nr-1071.min.js"
                }, b = w && g && g[l] && !/CriOS/.test(navigator.userAgent),
                h = t.exports = {offset: u, now: a, origin: v, features: {}, xhrWrappable: b};
            e(1), d[l] ? (d[l]("DOMContentLoaded", i, !1), p[l]("load", r, !1)) : (d[m]("onreadystatechange", o), p[m]("onload", r)), c("mark", ["firstbyte", u], null, "api");
            var x = 0, E = e(4)
        }, {}]
    }, {}, ["loader"]);</script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <script type="text/javascript">window.NREUM || (NREUM = {});
    NREUM.info = {
        "beacon": "bam.nr-data.net",
        "errorBeacon": "bam.nr-data.net",
        "licenseKey": "e644b8e723",
        "applicationID": "17322787",
        "transactionName": "el8PEkJZWg4BR04FUVVVDwJRRGkHElAPEkMWXgQR",
        "queueTime": 0,
        "applicationTime": 97,
        "agent": ""
    }</script>
    <script type="text/javascript">window.NREUM || (NREUM = {}), __nr_require = function (e, t, n) {
        function r(n) {
            if (!t[n]) {
                var o = t[n] = {exports: {}};
                e[n][0].call(o.exports, function (t) {
                    var o = e[n][1][t];
                    return r(o || t)
                }, o, o.exports)
            }
            return t[n].exports
        }

        if ("function" == typeof __nr_require) return __nr_require;
        for (var o = 0; o < n.length; o++) r(n[o]);
        return r
    }({
        1: [function (e, t, n) {
            function r() {
            }

            function o(e, t, n) {
                return function () {
                    return i(e, [f.now()].concat(u(arguments)), t ? null : this, n), t ? void 0 : this
                }
            }

            var i = e("handle"), a = e(2), u = e(3), c = e("ee").get("tracer"), f = e("loader"), s = NREUM;
            "undefined" == typeof window.newrelic && (newrelic = s);
            var p = ["setPageViewName", "setCustomAttribute", "setErrorHandler", "finished", "addToTrace", "inlineHit", "addRelease"],
                d = "api-", l = d + "ixn-";
            a(p, function (e, t) {
                s[t] = o(d + t, !0, "api")
            }), s.addPageAction = o(d + "addPageAction", !0), s.setCurrentRouteName = o(d + "routeName", !0), t.exports = newrelic, s.interaction = function () {
                return (new r).get()
            };
            var m = r.prototype = {
                createTracer: function (e, t) {
                    var n = {}, r = this, o = "function" == typeof t;
                    return i(l + "tracer", [f.now(), e, n], r), function () {
                        if (c.emit((o ? "" : "no-") + "fn-start", [f.now(), r, o], n), o) try {
                            return t.apply(this, arguments)
                        } catch (e) {
                            throw c.emit("fn-err", [arguments, this, e], n), e
                        } finally {
                            c.emit("fn-end", [f.now()], n)
                        }
                    }
                }
            };
            a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","), function (e, t) {
                m[t] = o(l + t)
            }), newrelic.noticeError = function (e) {
                "string" == typeof e && (e = new Error(e)), i("err", [e, f.now()])
            }
        }, {}], 2: [function (e, t, n) {
            function r(e, t) {
                var n = [], r = "", i = 0;
                for (r in e) o.call(e, r) && (n[i] = t(r, e[r]), i += 1);
                return n
            }

            var o = Object.prototype.hasOwnProperty;
            t.exports = r
        }, {}], 3: [function (e, t, n) {
            function r(e, t, n) {
                t || (t = 0), "undefined" == typeof n && (n = e ? e.length : 0);
                for (var r = -1, o = n - t || 0, i = Array(o < 0 ? 0 : o); ++r < o;) i[r] = e[t + r];
                return i
            }

            t.exports = r
        }, {}], 4: [function (e, t, n) {
            t.exports = {exists: "undefined" != typeof window.performance && window.performance.timing && "undefined" != typeof window.performance.timing.navigationStart}
        }, {}], ee: [function (e, t, n) {
            function r() {
            }

            function o(e) {
                function t(e) {
                    return e && e instanceof r ? e : e ? c(e, u, i) : i()
                }

                function n(n, r, o, i) {
                    if (!d.aborted || i) {
                        e && e(n, r, o);
                        for (var a = t(o), u = m(n), c = u.length, f = 0; f < c; f++) u[f].apply(a, r);
                        var p = s[y[n]];
                        return p && p.push([b, n, r, a]), a
                    }
                }

                function l(e, t) {
                    v[e] = m(e).concat(t)
                }

                function m(e) {
                    return v[e] || []
                }

                function w(e) {
                    return p[e] = p[e] || o(n)
                }

                function g(e, t) {
                    f(e, function (e, n) {
                        t = t || "feature", y[n] = t, t in s || (s[t] = [])
                    })
                }

                var v = {}, y = {},
                    b = {on: l, emit: n, get: w, listeners: m, context: t, buffer: g, abort: a, aborted: !1};
                return b
            }

            function i() {
                return new r
            }

            function a() {
                (s.api || s.feature) && (d.aborted = !0, s = d.backlog = {})
            }

            var u = "nr@context", c = e("gos"), f = e(2), s = {}, p = {}, d = t.exports = o();
            d.backlog = s
        }, {}], gos: [function (e, t, n) {
            function r(e, t, n) {
                if (o.call(e, t)) return e[t];
                var r = n();
                if (Object.defineProperty && Object.keys) try {
                    return Object.defineProperty(e, t, {value: r, writable: !0, enumerable: !1}), r
                } catch (i) {
                }
                return e[t] = r, r
            }

            var o = Object.prototype.hasOwnProperty;
            t.exports = r
        }, {}], handle: [function (e, t, n) {
            function r(e, t, n, r) {
                o.buffer([e], r), o.emit(e, t, n)
            }

            var o = e("ee").get("handle");
            t.exports = r, r.ee = o
        }, {}], id: [function (e, t, n) {
            function r(e) {
                var t = typeof e;
                return !e || "object" !== t && "function" !== t ? -1 : e === window ? 0 : a(e, i, function () {
                    return o++
                })
            }

            var o = 1, i = "nr@id", a = e("gos");
            t.exports = r
        }, {}], loader: [function (e, t, n) {
            function r() {
                if (!x++) {
                    var e = h.info = NREUM.info, t = d.getElementsByTagName("script")[0];
                    if (setTimeout(s.abort, 3e4), !(e && e.licenseKey && e.applicationID && t)) return s.abort();
                    f(y, function (t, n) {
                        e[t] || (e[t] = n)
                    }), c("mark", ["onload", a() + h.offset], null, "api");
                    var n = d.createElement("script");
                    n.src = "https://" + e.agent, t.parentNode.insertBefore(n, t)
                }
            }

            function o() {
                "complete" === d.readyState && i()
            }

            function i() {
                c("mark", ["domContent", a() + h.offset], null, "api")
            }

            function a() {
                return E.exists && performance.now ? Math.round(performance.now()) : (u = Math.max((new Date).getTime(), u)) - h.offset
            }

            var u = (new Date).getTime(), c = e("handle"), f = e(2), s = e("ee"), p = window, d = p.document,
                l = "addEventListener", m = "attachEvent", w = p.XMLHttpRequest, g = w && w.prototype;
            NREUM.o = {
                ST: setTimeout,
                SI: p.setImmediate,
                CT: clearTimeout,
                XHR: w,
                REQ: p.Request,
                EV: p.Event,
                PR: p.Promise,
                MO: p.MutationObserver
            };
            var v = "" + location, y = {
                    beacon: "bam.nr-data.net",
                    errorBeacon: "bam.nr-data.net",
                    agent: "js-agent.newrelic.com/nr-1071.min.js"
                }, b = w && g && g[l] && !/CriOS/.test(navigator.userAgent),
                h = t.exports = {offset: u, now: a, origin: v, features: {}, xhrWrappable: b};
            e(1), d[l] ? (d[l]("DOMContentLoaded", i, !1), p[l]("load", r, !1)) : (d[m]("onreadystatechange", o), p[m]("onload", r)), c("mark", ["firstbyte", u], null, "api");
            var x = 0, E = e(4)
        }, {}]
    }, {}, ["loader"]);</script>

    <title>创建日程 - Tower</title>
    <meta name="renderer" content="webkit">
    <meta name="baidu-site-verification" content="qLDoHdGnb64RHlkm">
    <meta name="alexaVerifyID" content="SIgQikd9LazsFz9M1vPBaQyC4Gw">

    <link rel="dns-prefetch" href="//avatar.tower.im">
    <link rel="dns-prefetch" href="//atttachments.tower.im">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" sizes="32x32">
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" sizes="64x64">
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" sizes="128x128">
    <link rel="apple-touch-icon-precomposed"
          href="${pageContext.request.contextPath}/images/icon@512-c7c654c8348a4af697bb86f952f57923247c48b88fbbed1a472839eb800d2000.png">

    <link rel="stylesheet" media="all"
          href="${pageContext.request.contextPath}/css/application-b82ad007940d21bea7a8c87658d6aa956d8b0aeb0ec12ff0c8282dbb97ee1085.css"/>
    <script src="${pageContext.request.contextPath}/js/application-6079413f7ac9d58f25bf968fe88bbd90bc60f812c817db4644fb1d2543bce6d0.js"></script>


    <meta name="csrf-param" content="authenticity_token"/>
    <meta name="csrf-token"
          content="JAzn5ea0y+16bXddTqpHPnAm8T6BPe0BwqV3Fle46hwLM+azIiyvWqV10kwEHaNvcomoVqdgjvjbD8P0Q6rKaQ=="/>
</head>

<body class="">
<div id="page-loading-mask"></div>

<div class="wrapper">


    <div class="header">
        <div class="header-container">
            <h1 class="logo">
                <a href="javascript:;" class="link-team-menu">
                    <span class="name">HYLT</span>
                </a>
            </h1>

            <ul class="nav">
                <li class="" id="nav-project">
                    <a href="/teams/982b79584a39484eb9e17459a6e1deff/projects" data-stack data-stack-root>项目</a>
                </li>
                <li class="" id="nav-events">
                    <a href="/teams/982b79584a39484eb9e17459a6e1deff/events" data-stack data-stack-root>动态</a>
                </li>
                <li class="dividing"></li>
                <li class="" id="nav-calendar">
                    <a href="/teams/982b79584a39484eb9e17459a6e1deff/calendars" data-stack data-stack-fluid
                       data-stack-root>日历</a>
                </li>

                <li class="" id="nav-dashboard">
                    <a href="/teams/982b79584a39484eb9e17459a6e1deff/dashboard" data-stack data-stack-root>鹰眼</a>
                </li>
                <li class="" id="nav-reports">
                    <a href="/teams/982b79584a39484eb9e17459a6e1deff/reports" data-stack data-stack-root>汇报</a>
                </li>
                <li class="dividing"></li>

                <li class="" id="nav-members">
                    <a href="/teams/982b79584a39484eb9e17459a6e1deff/members" data-stack data-stack-root>团队</a>
                </li>
                <li class="" id="nav-me">
                    <a href="/members/ce2b30066f034bf9a69113963da165fd?me=1" data-stack data-stack-root>我自己</a>
                </li>

                <li id="nav-upgrade">
                    <a href="/teams/982b79584a39484eb9e17459a6e1deff/upgrade?utm_source=Tower&amp;utm_medium=Web&amp;utm_campaign=Nav-Pro-Trial-Remaining"
                       class="link-remaining" data-tower-pro="header-upgrade-ad" target="_blank">
                        试用剩余 25 天
                    </a>
                </li>

            </ul>

            <div class="command-bar">
                <div class="search-wrap">
                    <a href="javascript:;" class="link-search" title="搜索"><i class="twr twr-search"></i></a>
                    <form id="form-search" class="form" method="get"
                          action="/teams/982b79584a39484eb9e17459a6e1deff/search">
                        <input id="txt-search" type="text" class="keyword no-border" name="keyword" placeholder="搜索"
                               autocomplete="off"/>
                    </form>
                </div>

                <audio src="/assets/notification-8c3a5ef39c8b88e19cf2b732747a6691d43ffa68d25b3db74ebe418bf41fad63.mp3"
                       id="notification-audio" preload="auto"></audio>

                <div class="notification-info">
                    <a href="javascript:;" id="notification-count" class="label unread" title="新的通知"
                       data-unread-count="9"
                       data-url="/teams/982b79584a39484eb9e17459a6e1deff/notifications/unread_counts">
                        <span class="twr twr-bell-o bell"></span>
                        <span class="num">9</span>
                    </a>
                    <div class="noti-pop">
                        <div class="noti-pop-hd">
                            <b class="title">通知</b>
                            <a class="mark-as-read" id="noti-mark-read" data-loading="true" data-remote="true"
                               rel="nofollow" data-method="post"
                               href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/read_all">
                                <span class="twr twr twr-check"></span>
                                全部标记为已读
                            </a></div>
                        <div class="noti-pop-list-wrap">
                            <div class="noti-pop-list notification-list">

                                <div data-notification-guid="139461fd246c480cabf662de9f9ed58c"
                                     data-topic-guid="ce2b30066f034bf9a69113963da165fd"
                                     class="notice unread no-content"
                                     data-created-at="2018-05-21 10:04:28 +0800"
                                     data-key-id="187268174">

                                    <a class="link"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/139461fd246c480cabf662de9f9ed58c"
                                       data-stack
                                       data-stack-root
                                       data-parent-name="全部通知"
                                       data-parent-url="/teams/982b79584a39484eb9e17459a6e1deff/notifications/">

    <span class="title">
        <span class="actor member">OrionPax</span>

      <span class="action">邀请你加入项目</span>
      <span class="target">测试</span>
    </span>

                                    </a>

                                    <div class="date" data-readable-time="2018-05-21T10:04:28+08:00"></div>

                                    <a class="mark-read"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/139461fd246c480cabf662de9f9ed58c/read"
                                       title="标记为已读"
                                       data-remote="true"
                                       data-method="post"
                                       data-loading><i class="twr twr-check"></i></a>
                                </div>

                                <div data-notification-guid="22e99b54fa324370be38d9b4ab53b329"
                                     data-topic-guid="177ac58c1f6c4271b711c122461f2db2"
                                     class="notice unread no-content"
                                     data-created-at="2018-05-21 09:56:56 +0800"
                                     data-key-id="187263033">

                                    <a class="link"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/22e99b54fa324370be38d9b4ab53b329"
                                       data-stack
                                       data-stack-root
                                       data-parent-name="全部通知"
                                       data-parent-url="/teams/982b79584a39484eb9e17459a6e1deff/notifications/">

    <span class="title">
        <span class="actor member">OrionPax</span>

      <span class="action">通过了你的加入申请</span>
      <span class="target">HYLT</span>
    </span>

                                    </a>

                                    <div class="date" data-readable-time="2018-05-21T09:56:56+08:00"></div>

                                    <a class="mark-read"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/22e99b54fa324370be38d9b4ab53b329/read"
                                       title="标记为已读"
                                       data-remote="true"
                                       data-method="post"
                                       data-loading><i class="twr twr-check"></i></a>
                                </div>

                                <div data-notification-guid="9693c6febb1c4ef0af507573552db6eb"
                                     data-topic-guid="9b312b0f458b4388b32dff292022c5c4"
                                     class="notice unread no-content"
                                     data-created-at="2018-05-18 15:01:26 +0800"
                                     data-key-id="186584573">

                                    <a class="link"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/9693c6febb1c4ef0af507573552db6eb"
                                       data-stack
                                       data-stack-root
                                       data-parent-name="全部通知"
                                       data-parent-url="/teams/982b79584a39484eb9e17459a6e1deff/notifications/">

    <span class="title">
        <span class="actor member">OrionPax</span>

      <span class="action">通过了你的加入申请</span>
      <span class="target">HYLT</span>
    </span>

                                    </a>

                                    <div class="date" data-readable-time="2018-05-18T15:01:26+08:00"></div>

                                    <a class="mark-read"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/9693c6febb1c4ef0af507573552db6eb/read"
                                       title="标记为已读"
                                       data-remote="true"
                                       data-method="post"
                                       data-loading><i class="twr twr-check"></i></a>
                                </div>

                                <div data-notification-guid="85c4314aa9e447b8b1c4affdb471e9cd"
                                     data-topic-guid="ae785cbe80204636bb94c6d143a43f7b"
                                     class="notice unread no-content"
                                     data-created-at="2018-05-18 14:33:53 +0800"
                                     data-key-id="186572049">

                                    <a class="link"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/85c4314aa9e447b8b1c4affdb471e9cd"
                                       data-stack
                                       data-stack-root
                                       data-parent-name="全部通知"
                                       data-parent-url="/teams/982b79584a39484eb9e17459a6e1deff/notifications/">

    <span class="title">
        <span class="actor member">OrionPax</span>

      <span class="action">通过了你的加入申请</span>
      <span class="target">HYLT</span>
    </span>

                                    </a>

                                    <div class="date" data-readable-time="2018-05-18T14:33:53+08:00"></div>

                                    <a class="mark-read"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/85c4314aa9e447b8b1c4affdb471e9cd/read"
                                       title="标记为已读"
                                       data-remote="true"
                                       data-method="post"
                                       data-loading><i class="twr twr-check"></i></a>
                                </div>

                                <div data-notification-guid="d530acf38cd046a5ad5f62a7d30afba7"
                                     data-topic-guid="70d66a5f040f4f6caf6cb4aa172a3d0c"
                                     class="notice unread no-content"
                                     data-created-at="2018-05-18 10:28:48 +0800"
                                     data-key-id="186493117">

                                    <a class="link"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/d530acf38cd046a5ad5f62a7d30afba7"
                                       data-stack
                                       data-stack-root
                                       data-parent-name="全部通知"
                                       data-parent-url="/teams/982b79584a39484eb9e17459a6e1deff/notifications/">

    <span class="title">
        <span class="actor member">OrionPax</span>

      <span class="action">完成了任务</span>
      <span class="target">网页流转设计</span>
    </span>

                                    </a>

                                    <div class="date" data-readable-time="2018-05-18T10:28:48+08:00"></div>

                                    <a class="mark-read"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/d530acf38cd046a5ad5f62a7d30afba7/read"
                                       title="标记为已读"
                                       data-remote="true"
                                       data-method="post"
                                       data-loading><i class="twr twr-check"></i></a>
                                </div>

                                <div data-notification-guid="cb0922633efe47ca8970da84d980746c"
                                     data-topic-guid="c8975d5ea1b9479c960a62fda7cabfb9"
                                     class="notice unread no-content"
                                     data-created-at="2018-05-18 09:24:22 +0800"
                                     data-key-id="186437297">

                                    <a class="link"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/cb0922633efe47ca8970da84d980746c"
                                       data-stack
                                       data-stack-root
                                       data-parent-name="全部通知"
                                       data-parent-url="/teams/982b79584a39484eb9e17459a6e1deff/notifications/">

    <span class="title">
        <span class="actor member">OrionPax</span>

      <span class="action">通过了你的加入申请</span>
      <span class="target">HYLT</span>
    </span>

                                    </a>

                                    <div class="date" data-readable-time="2018-05-18T09:24:22+08:00"></div>

                                    <a class="mark-read"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/cb0922633efe47ca8970da84d980746c/read"
                                       title="标记为已读"
                                       data-remote="true"
                                       data-method="post"
                                       data-loading><i class="twr twr-check"></i></a>
                                </div>

                                <div data-notification-guid="e70789a8ab0645418e812454f3fb74f3"
                                     data-topic-guid="aff9e385ab5748d6a76379a375a54565"
                                     class="notice unread no-content"
                                     data-created-at="2018-05-17 18:04:38 +0800"
                                     data-key-id="186137730">

                                    <a class="link"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/e70789a8ab0645418e812454f3fb74f3"
                                       data-stack
                                       data-stack-root
                                       data-parent-name="全部通知"
                                       data-parent-url="/teams/982b79584a39484eb9e17459a6e1deff/notifications/">

    <span class="title">
        <span class="actor member">OrionPax</span>

      <span class="action">完成了任务</span>
      <span class="target">网站需求分析</span>
    </span>

                                    </a>

                                    <div class="date" data-readable-time="2018-05-17T18:04:38+08:00"></div>

                                    <a class="mark-read"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/e70789a8ab0645418e812454f3fb74f3/read"
                                       title="标记为已读"
                                       data-remote="true"
                                       data-method="post"
                                       data-loading><i class="twr twr-check"></i></a>
                                </div>

                                <div data-notification-guid="7c01689b05c7464fabd0814e2d2d9cde"
                                     data-topic-guid="e86bfd0ca2a14f0fb522f806e23ce8e2"
                                     class="notice unread no-content"
                                     data-created-at="2018-05-17 16:05:40 +0800"
                                     data-key-id="186090497">

                                    <a class="link"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/7c01689b05c7464fabd0814e2d2d9cde"
                                       data-stack
                                       data-stack-root
                                       data-parent-name="全部通知"
                                       data-parent-url="/teams/982b79584a39484eb9e17459a6e1deff/notifications/">

    <span class="title">
        <span class="actor member">OrionPax</span>

      <span class="action">编辑了日程</span>
      <span class="target">需求设计</span>
    </span>

                                    </a>

                                    <div class="date" data-readable-time="2018-05-17T16:05:40+08:00"></div>

                                    <a class="mark-read"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/7c01689b05c7464fabd0814e2d2d9cde/read"
                                       title="标记为已读"
                                       data-remote="true"
                                       data-method="post"
                                       data-loading><i class="twr twr-check"></i></a>
                                </div>

                                <div data-notification-guid="995ddee00642453984ad251189f50b06"
                                     data-topic-guid="d2869aecfc7b4f56a46fcddd4b20193f"
                                     class="notice unread no-content"
                                     data-created-at="2018-05-17 16:02:13 +0800"
                                     data-key-id="186088835">

                                    <a class="link"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/995ddee00642453984ad251189f50b06"
                                       data-stack
                                       data-stack-root
                                       data-parent-name="全部通知"
                                       data-parent-url="/teams/982b79584a39484eb9e17459a6e1deff/notifications/">

    <span class="title">
        <span class="actor member">OrionPax</span>

      <span class="action">编辑了日程</span>
      <span class="target">项目需求分析</span>
    </span>

                                    </a>

                                    <div class="date" data-readable-time="2018-05-17T16:02:13+08:00"></div>

                                    <a class="mark-read"
                                       href="/teams/982b79584a39484eb9e17459a6e1deff/notifications/995ddee00642453984ad251189f50b06/read"
                                       title="标记为已读"
                                       data-remote="true"
                                       data-method="post"
                                       data-loading><i class="twr twr-check"></i></a>
                                </div>

                            </div>
                        </div>
                        <div class="noti-pop-empty hide">- 没有新通知 -</div>
                        <div class="noti-pop-footer">
                            <a class="noti-settings" data-stack="true" data-stack-root="true"
                               href="/members/ce2b30066f034bf9a69113963da165fd/notification_settings">
                                <i class="twr twr-cog"></i> 通知设置
                            </a> <a class="noti-all-link" data-stack="true" data-stack-root="true"
                                    href="/teams/982b79584a39484eb9e17459a6e1deff/notifications">查看全部通知</a>
                        </div>
                    </div>
                </div>
                <div class="account-info">
                    <div class="member-settings">
                        <a class="link-member-menu ab-test-old" href="javascript:;" data-new-feature="false">
                            <span class="twr twr-caret-down"></span>
                            <img class="avatar" src="/assets/default_avatars/noon.jpg" alt="Noon"/>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script id="tpl-member-menu" type="text/html">
        <ul class="menu">
            <li><a data-stack="true" data-stack-root="true" href="/members/ce2b30066f034bf9a69113963da165fd/settings">个人设置</a>
            </li>
            <li><a data-stack="true" data-stack-root="true"
                   href="/members/ce2b30066f034bf9a69113963da165fd/notification_settings">通知设置</a></li>
            <li><a data-stack="true" data-stack-root="true"
                   href="/members/ce2b30066f034bf9a69113963da165fd/stars">我的关注</a></li>
            <li class="part-line"></li>
            <li><a target="_blank" href="/choices">企业服务精选</a></li>
            <li><a target="_blank" href="/downloads">下载客户端</a></li>
            <li><a target="_blank" href="/help">帮助中心</a></li>
            <li><a id="link-roadmap" target="_blank" href="/roadmap">最新功能</a></li>
            <li><a rel="nofollow" data-method="DELETE" href="/users/sign_out">退出</a></li>
        </ul>
    </script>
    <script id="tpl-team-menu" type="text/html">
        <ul class="menu">

            <li><a href="/teams/982b79584a39484eb9e17459a6e1deff/external_apps" data-stack data-stack-root>应用中心</a></li>


            <li>
                <a class="js-feature-migrated" data-migrated-feature="team-stats" href="javascript:;">团队统计</a>
            </li>

            <li>
                <a href="/teams/982b79584a39484eb9e17459a6e1deff/upgrade" data-stack data-stack-root>
                    了解 Pro 版
                </a>
            </li>

            <p class="title"><span>切换团队</span></p>
            <ul class="menu scroll team-list">
                <li>
                    <a href="/teams/7feef4ba8611443ebd06db497618beb4">alikes
                    </a>
                </li>
            </ul>
            <li class="part-line"></li>

            <li class="small"><a href="/launchpad?skip=1">创建/管理团队</a></li>
        </ul>
    </script>


    <div class="container workspace">
        <div class="page">
            <a href="/teams/982b79584a39484eb9e17459a6e1deff/calendars" class="link-page-behind" data-stack
               data-stack-fluid>日历</a>
        </div>
        <div class="page">


            <div class="page-inner" data-since="2018-05-21 14:21:49 UTC"

                 data-page-name="创建日程" id="page-calendar-event-new">

                <h3 class="page-title">创建日程</h3>

                <div class="cal-event-form">
                    <form class="form form-event" action="/teams/982b79584a39484eb9e17459a6e1deff/calendar_events"
                          method="post" accept-charset="utf-8" data-remote="true">

                        <div class="form-item">
                            <textarea name="content" id="txt-event-content" class="no-border" rows="1"
                                      placeholder="在这里输入日程内容" data-validate="required"
                                      data-validate-msg="请填写日程内容"></textarea>
                        </div>

                        <div class="form-item">
                            <label>日历</label>

                            <select name="caleventable_guid" id="select-cal" disabled>
                                <option value="e26956389763492f891259d7d9c5b94d" data-project="true" selected
                                        data-member-guids="[&quot;f7e254d7f54e40dbb93a33b737752fbc&quot;, &quot;ce2b30066f034bf9a69113963da165fd&quot;]">
                                    Flower
                                </option>
                            </select>


                            <input type="hidden" name="caleventable_type" value="Project"/>
                        </div>

                        <div class="form-item">
                            <label>类型</label>
                            <label class="all-day-event">
                                <input type="checkbox" class="cb-all-day"/>
                                全天事件
                            </label>
                        </div>

                        <div class="form-item event-time">
                            <label>开始</label>
                            <input type="datetime" id="start_moment" name="starts_at" value="2018-05-21T00:00:00"/>
                        </div>

                        <div class="form-item event-time">
                            <label>结束</label>
                            <input type="datetime" id="end_moment" name="ends_at" value="2018-05-21T23:59:59"/>
                        </div>

                        <div class="form-item event-schedule-every">
                            <label>重复</label>
                            <select class="cb-repeat" name="schedule_every" id="select-schedule-every">
                                <option value="0">不重复</option>
                                <option value="4">每日</option>
                                <option value="2">每周</option>
                                <option value="3">每月</option>
                                <option value="1">每年</option>
                                <option value="5">隔周</option>
                            </select>
                        </div>

                        <div class="form-item event-schedule-until until-active hide">
                            <label>直到</label>
                            <input type="date" id="until_moment" name="schedule_until" value="2018-05-21 23:59:59"/>
                        </div>

                        <div class="form-item event-schedule-interval hide">
                            <label>间隔</label>
                            <select class="cb-repeat" name="schedule_interval" id="select-schedule-interval">
                                <option value="1">无间隔</option>
                                <option value="2">一周</option>
                                <option value="3">二周</option>
                                <option value="4">三周</option>
                                <option value="5">四周</option>
                            </select>
                        </div>

                        <div class="form-item event-schedule-weekdays hide">
                            <ul class="checkbox-group">
                                <li>
                                    <input type="checkbox" name="schedule_weekdays[]" id="weekdays-1" value="1"/>
                                    <label for="weekdays-1">一</label>
                                </li>
                                <li>
                                    <input type="checkbox" name="schedule_weekdays[]" id="weekdays-2" value="2"/>
                                    <label for="weekdays-2">二</label>
                                </li>
                                <li>
                                    <input type="checkbox" name="schedule_weekdays[]" id="weekdays-3" value="3"/>
                                    <label for="weekdays-3">三</label>
                                </li>
                                <li>
                                    <input type="checkbox" name="schedule_weekdays[]" id="weekdays-4" value="4"/>
                                    <label for="weekdays-4">四</label>
                                </li>
                                <li>
                                    <input type="checkbox" name="schedule_weekdays[]" id="weekdays-5" value="5"/>
                                    <label for="weekdays-5">五</label>
                                </li>
                                <li>
                                    <input type="checkbox" name="schedule_weekdays[]" id="weekdays-6" value="6"/>
                                    <label for="weekdays-6">六</label>
                                </li>
                                <li>
                                    <input type="checkbox" name="schedule_weekdays[]" id="weekdays-0" value="0"/>
                                    <label for="weekdays-0">日</label>
                                </li>
                            </ul>
                        </div>

                        <div class="form-item event-remind">
                            <label>提醒</label>
                            <select id="select-remind" name="remind_time">
                                <option value="">不提醒</option>
                                <option value="" class="one-hour-ahead">提前一小时</option>
                                <option value="" class="one-day-ahead">提前一天</option>
                                <option value="" class="one-week-ahead">提前一周</option>
                            </select>
                        </div>

                        <div class="form-item event-location">
                            <label>地点</label>
                            <input type="text" name="location" id="txt-event-location" value=""/>
                        </div>

                        <div class="form-item event-show-creator">
                            <label>
                                <input type="checkbox" name="is_show_creator" checked/>
                                在月视图显示创建者
                            </label>
                        </div>

                        <div class="form-item cal-members-field">
                            <h4>日程参与人</h4>

                            <div class="manage-members">
                                <div class="add-member">
                                    <select id="select-add-member"></select>

                                    <div class="group-select">
                                        <span class="all" data-subgroup="-1" unselectable="on">所有人</span>
                                    </div>
                                </div>

                                <div class="members member-checkbox-list">
                                    <label title="OrionPax" class="member"
                                           data-guid="f7e254d7f54e40dbb93a33b737752fbc"
                                           data-subgroup="[]"
                                           data-shortcut-key="OrionPax orionpax OrionPax">

                                        <input type="checkbox" name="" id="" value="f7e254d7f54e40dbb93a33b737752fbc"/>
                                        <span class="name">OrionPax</span>
                                    </label>
                                    <label title="浮点农国" class="member"
                                           data-guid="ce2b30066f034bf9a69113963da165fd"
                                           data-subgroup="[]"
                                           data-shortcut-key="浮点农国 fudiannongguo fdng">

                                        <input type="checkbox" name="" id="" value="ce2b30066f034bf9a69113963da165fd"/>
                                        <span class="name">浮点农国</span>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-item visitor-lock" data-visible-to="member">
                            <div class="form-field">
                                <label>
                                    <input type="checkbox" name="invisible_for_visitor" class="cb-visitor-lock"/>
                                    对访客隐藏这个日程
                                </label>
                            </div>
                        </div>

                        <div class="buttons">
                            <button type="submit" class="btn btn-primary btn-save-event" data-disable-with="正在提交...">
                                添加
                            </button>
                            <a href="javascript:;" class="link-cancel">取消</a>
                        </div>
                    </form>
                </div>
            </div>


        </div>
    </div>

    <div class="footer">
        &copy; 彩程设计
    </div>


</div>

<input type="hidden" id="d18n-enabled" value="false">
<input type="hidden" id="server-time" value="2018-05-21 22:21:49">

<input type="hidden" id="team-guid" value="982b79584a39484eb9e17459a6e1deff">
<input type="hidden" id="team-name" value="HYLT">
<input type="hidden" id="team-enable-pusher" value="true">

<input type="hidden" id="user-id" value="7432036">
<input type="hidden" id="user-email" value="2449832339@qq.com">

<input type="hidden" id="unused-bubbles" value="12,13">
<input type="hidden" id="member-id" value="12535517">
<input type="hidden" id="member-guid" value="ce2b30066f034bf9a69113963da165fd">
<input type="hidden" id="member-nickname" value="浮点农国">
<input type="hidden" id="member-avatar" value="/assets/default_avatars/noon.jpg">
<input type="hidden" id="member-timezone" value="Asia/Shanghai">
<input type="hidden" id="conn-guid" value="a0990cfa-0e6a-4d3e-b76f-8d285f72dcff">


<input type="hidden" id="electron" value="false">

<script>
    //<![CDATA[
    window.gon = {};
    gon.oss_direct_upload = true;
    //]]>
</script>

<a id="back-to-top" href="javascript:;">
    <i class="twr twr-chevron-up"></i>
</a>
<a id="link-to-help" data-intercom="false" target="_blank" href="/help">
    <span class="twr twr-help"></span>
</a>
<script id="IntercomSettingsScriptTag">window.intercomSettings = {
    "hide_default_launcher": true,
    "guid": "ce2b30066f034bf9a69113963da165fd",
    "name": "浮点农国",
    "email": "2449832339@qq.com",
    "user_id": 12535517,
    "desktop_notification_enabled": false,
    "wechat_notification_enabled": true,
    "email_notification_enabled": false,
    "ai_notify_enabled": false,
    "role": 0,
    "user_guid": "f7eba6660ed54cec965e9058ee595fc5",
    "avatar": "https://tower.im/assets/default_avatars/noon.jpg",
    "comment": null,
    "has_wechat": false,
    "wechat": null,
    "has_dingtalk": false,
    "dingtalk": "浮点农国",
    "two_factor_auth": false,
    "teams": 2,
    "projects": 2,
    "starred_projects": 0,
    "calendars": 0,
    "open_todos": 0,
    "closed_todos": 0,
    "messages_created": 0,
    "uploads_created": 0,
    "attachments_uploaded": 0,
    "comments_created": 0,
    "resources_starred": 0,
    "weekly_reports_created": 0,
    "events_involved": 2,
    "unread_notifications": 29,
    "email_received": 0,
    "data_updated_at": "2018-05-21T06:53:20.499Z",
    "user_hash": "99bb70a8e9ae5b39924f6bc16c6a8f29e44b0b2227bd29c578f9873989e91402",
    "app_id": "xbtsuf77",
    "company": {
        "id": 701217,
        "name": "HYLT",
        "created_at": "2018-05-17T01:24:47.000Z",
        "guid": "982b79584a39484eb9e17459a6e1deff",
        "next_charge_date": null,
        "plan": "pro_trial",
        "ever_paid": false,
        "total_paid": 0,
        "alipay_used": 0,
        "haopay_used": 0,
        "owner_guid": "f7e254d7f54e40dbb93a33b737752fbc",
        "has_dingtalk": false,
        "has_yiqixie": false,
        "has_api": false,
        "members": 2,
        "subgroups": 0,
        "active_projects": 2,
        "archived_projects": 0,
        "project_groups": 0,
        "project_templates": 0,
        "calendars": 0,
        "calendar_events": 2,
        "messages": 2,
        "comments": 3,
        "open_todos": 2,
        "closed_todos": 6,
        "documents": 0,
        "files": 0,
        "file_bytesize": 0.0,
        "answers": 0,
        "is_upgraded_to_plus": false
    }
};
(function () {
    var w = window;
    var ic = w.Intercom;
    if (typeof ic === "function") {
        ic('reattach_activator');
        ic('update', intercomSettings);
    } else {
        var d = document;
        var i = function () {
            i.c(arguments)
        };
        i.q = [];
        i.c = function (args) {
            i.q.push(args)
        };
        w.Intercom = i;

        function l() {
            var s = d.createElement('script');
            s.type = 'text/javascript';
            s.async = true;
            s.src = 'https://widget.intercom.io/widget/xbtsuf77';
            var x = d.getElementsByTagName('script')[0];
            x.parentNode.insertBefore(s, x);
        }

        if (w.attachEvent) {
            w.attachEvent('onload', l);
        } else {
            w.addEventListener('load', l, false);
        }
    }
    ;
})()</script>

<script type="text/javascript">
    (function () {
        setTimeout(function () {
            if (!document.querySelector('iframe#intercom-frame')) {
                var w = window;
                var ic = w.Intercom;
                if (ic.toString().length < 100) {
                    var d = document;
                    var i = function () {
                        i.c(arguments)
                    };
                    i.q = [];
                    i.c = function (args) {
                        i.q.push(args)
                    };
                    w.Intercom = i;

                    function l() {
                        var s = d.createElement('script');
                        s.type = 'text/javascript';
                        s.async = true;
                        s.src = 'https://jsintercom.tuanliao.com/widgets/xbtsuf77';
                        var x = d.getElementsByTagName('script')[0];
                        x.parentNode.insertBefore(s, x);
                    }

                    l();
                }
            }
        }, 5000)
    })()
</script>


<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-100449807-1', 'auto', {userId: '12535517'});
    ga('create', 'UA-100449807-2', 'auto', 'teamTracker', {userId: '701217'});

    ga('send', 'pageview', {
        'userId': '12535517',
        'dimension1': '701217 : HYLT',
        'dimension2': '7432036',
        'dimension3': 'pro_trial'
    });
    ga('teamTracker.send', 'pageview', {
        'userId': '701217',
        'dimension1': 'HYLT',
        'dimension2': 11,
        'dimension3': 'pro_trial'
    });

    ga('set', 'dimension4', 'false');
</script>


</body>
</html>