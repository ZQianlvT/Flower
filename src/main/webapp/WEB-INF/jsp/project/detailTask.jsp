<%--
  Created by IntelliJ IDEA.
  User: 徐哲哲
  Date: 2018/5/21
  Time: 22:14
  To change this template use File | Settings | File Templates
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>

    <script type="text/javascript">window.NREUM || (NREUM = {});
    NREUM.info = {
        "beacon": "bam.nr-data.net",
        "errorBeacon": "bam.nr-data.net",
        "licenseKey": "e644b8e723",
        "applicationID": "17322787",
        "transactionName": "el8PEkJZWg4BR04SX11fEklDXlkV",
        "queueTime": 0,
        "applicationTime": 173,
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
        "transactionName": "el8PEkJZWg4BR04SX11fEklDXlkV",
        "queueTime": 0,
        "applicationTime": 173,
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

    <title>数据库表开发 - Flower</title>
    <meta name="renderer" content="webkit">
    <meta name="baidu-site-verification" content="qLDoHdGnb64RHlkm">
    <meta name="alexaVerifyID" content="SIgQikd9LazsFz9M1vPBaQyC4Gw">

    <link rel="dns-prefetch" href="//avatar.tower.im">
    <link rel="dns-prefetch" href="//atttachments.tower.im">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/head/ChatHead.jpg" type="image/x-icon">
    <link rel="icon" href="${pageContext.request.contextPath}/head/ChatHead.jpg" sizes="32x32">
    <link rel="icon" href="${pageContext.request.contextPath}/head/ChatHead.jpg" sizes="64x64">
    <link rel="icon" href="${pageContext.request.contextPath}/head/ChatHead.jpg" sizes="128x128">
    <link rel="apple-touch-icon-precomposed"
          href="${pageContext.request.contextPath}/images/icon@512-c7c654c8348a4af697bb86f952f57923247c48b88fbbed1a472839eb800d2000.png">

    <link rel="stylesheet" media="all"
          href="${pageContext.request.contextPath}/css/application-b82ad007940d21bea7a8c87658d6aa956d8b0aeb0ec12ff0c8282dbb97ee1085.css"/>
    <script src="${pageContext.request.contextPath}/js/application-6079413f7ac9d58f25bf968fe88bbd90bc60f812c817db4644fb1d2543bce6d0.js"></script>


    <meta name="csrf-param" content="authenticity_token"/>
    <meta name="csrf-token"
          content="VV9CDaky9cdtLfldi/+Dh1/6BzzYFIWfnicfLIO6ha16YENbbaqRcLI1XEzBSGfWXVVeVP5J5maHjavOl6il2A=="/>
    <style>
        .todo-wrap>.simple-checkbox{
            display: none;
        }
    </style>
</head>

<body class="">
<div id="page-loading-mask"></div>

<div class="wrapper">


    <div class="header">
        <div class="header-container">
            <h1 class="logo">
                <a href="${pageContext.request.contextPath}/base/goURL/team/updateTeam" class="link-team-menu">
                    ${sessionScope.currTeam.name}
                </a>
            </h1>

            <ul class="nav">
                <li class="" id="nav-project">
                    <a href="${pageContext.request.contextPath}/project/listProject">项目</a>
                </li>
                <li class="dividing"></li>
                <li class="" id="nav-calendar">
                    <a href="${pageContext.request.contextPath}/calendar/prepareCalendar">日历</a>
                </li>
                <li class="dividing"></li>
                <li class="" id="nav-members">
                    <a href="${pageContext.request.contextPath}/team/listTeam">团队</a>
                </li>

                <li id="nav-upgrade">
                    <a href="#"
                       class="link-remaining" data-tower-pro="header-upgrade-ad">
                        本软件完全免费，并不禁止传播。
                    </a>
                </li>

            </ul>

            <div class="command-bar">
                <div class="account-info">
                    <div class="member-settings">
                        <a class="link-member-menu ab-test-old" href="javascript:;" data-new-feature="false">
                            <span class="twr twr-caret-down"></span>
                            <img class="avatar" src="${pageContext.request.contextPath}${sessionScope.currUser.img}" alt="Noon"/>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script id="tpl-member-menu" type="text/html">
        <ul class="menu">
            <li><a  href="${pageContext.request.contextPath}/user/findUser">个人设置</a>
            </li>
            <li class="part-line"></li>
            <li><a rel="nofollow" data-method="DELETE" href="${pageContext.request.contextPath}/user/exit">退出</a></li>
        </ul>
    </script>


    <div class="container workspace">
        <div class="page "
             data-url="/projects/e26956389763492f891259d7d9c5b94d">
            <a href="${pageContext.request.contextPath}/project/detailProject?id=${requestScope.pId}"
               class="link-page-behind">项目详情</a>
        </div>
        <div class="page">


            <div class="page-inner" data-since="2018-05-21 14:12:02 UTC"


                 data-creator-guid="f7e254d7f54e40dbb93a33b737752fbc"
                 data-project-creator="f7e254d7f54e40dbb93a33b737752fbc"
                 data-page-name="数据库表开发" id="page-todo">


                <div class="topic">
                    <div class="project-info">
                    <%--<span>--%>
                        <%--项目：--%>
                        <%--<a href="/projects/e26956389763492f891259d7d9c5b94d"--%>
                           <%--data-stack data-stack-replace data-stack-root--%>
                           <%--data-stack-fluid>Flower</a>--%>
                    <%--</span>--%>

                    </div>
                    <br/>

                    <div class="todolist">
                        <ul class="todos">

                            <li class="todo"
                                data-guid="ec69d30b1b5f4759b823771882da98e8"
                                data-sort="2048.0"
                                data-sequence-mine="0.0"
                                data-sort-url="/projects/e26956389763492f891259d7d9c5b94d/todos/ec69d30b1b5f4759b823771882da98e8/reorder"
                                data-project-guid="e26956389763492f891259d7d9c5b94d" data-project-name="Flower"
                                data-creator-guid="f7e254d7f54e40dbb93a33b737752fbc"
                                data-assignee-guid="f7e254d7f54e40dbb93a33b737752fbc"
                                data-updated-at="1526804923"
                                data-check-items-size="0"
                                data-completed-check-items-size="0"
                            >


                                <div class="todo-wrap">
                                    <input type="checkbox" name="todo-done" />


                                    <span class="todo-content">
                                      <span class="raw">${requestScope.task.name}</span>
                                      <span class="content-non-linkable">
                                        <span class="todo-rest">${requestScope.task.name}</span>
                                      </span>
                                      <span class="content-linkable">
                                        <a class="todo-rest" data-stack="true"
                                           href="https://tower.im/projects/e26956389763492f891259d7d9c5b94d/todos/ec69d30b1b5f4759b823771882da98e8">${requestScope.task.name}</a>
                                      </span>
                                    </span>

                                    <%--<span class="todo-detail">--%>

          <%--<a class="label todo-assign-due" href="javascript:;" data-request-members="e26956389763492f891259d7d9c5b94d">--%>
              <%--<span class="assignee" data-guid="f7e254d7f54e40dbb93a33b737752fbc"--%>
                    <%--data-gavatar="https://avatar.tower.im/3e2790283b5947f7bb2da54a779c60f3">--%>
                <%--OrionPax--%>
              <%--</span>--%>

              <%--<span class="due" data-date="2018-05-21T23:59:59+08:00">2018-05-21</span>--%>
          <%--</a>--%>


    <%--</span>--%>

                                    <a class="label todo-proj" title="Flower - 开发" data-stack="true"
                                       href="/projects/e26956389763492f891259d7d9c5b94d/lists/7eea1fdab77c4e6a84ec744bb869c7a6/show">Flower
                                        - 开发</a>
                                </div>
                            </li>

                        </ul>
                    </div>



                </div>


                <div class="comments streams">
                    <%--<div class="event event-common event-todo-add" id="event-176798292"--%>
                         <%--data-ancestor-guid="e26956389763492f891259d7d9c5b94d"--%>
                         <%--data-ancestor-name="Flower"--%>
                         <%--data-ancestor-url="/projects/e26956389763492f891259d7d9c5b94d">--%>

                        <%--<a class="from" data-stack="true" href="/members/f7e254d7f54e40dbb93a33b737752fbc"><img--%>
                                <%--class="avatar" alt="OrionPax"--%>
                                <%--src="https://avatar.tower.im/3e2790283b5947f7bb2da54a779c60f3"/></a>--%>
                        <%--<i class="icon-event"></i>--%>

                        <%--<div class="event-main">--%>
                            <%--<div class="event-head">--%>
                                <%--<span class="event-actor">--%>
                                <%--<a class="link-member" data-stack="true" href="/members/f7e254d7f54e40dbb93a33b737752fbc">OrionPax</a>--%>
                            <%--</span>--%>
                                                <%--<span class="event-action">--%>
                                <%--创建了任务--%>
                            <%--</span>--%>
                                                <%--<span class="event-text">--%>
                                <%--<span class="emphasize">--%>
                                    <%--<a class="todo-rest" data-stack="true"--%>
                                       <%--href="/projects/e26956389763492f891259d7d9c5b94d/todos/ec69d30b1b5f4759b823771882da98e8">数据库表开发</a>--%>
                                <%--</span>--%>
                            <%--</span>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--</div>--%>

                    <div class="event event-common event-todo-due_at_changed" id="event-176798300"
                         data-ancestor-guid="e26956389763492f891259d7d9c5b94d"
                         data-ancestor-name="Flower"
                         data-ancestor-url="/projects/e26956389763492f891259d7d9c5b94d">

                        <a class="from" data-stack="true" href="/members/f7e254d7f54e40dbb93a33b737752fbc"><img
                                class="avatar" alt="OrionPax"
                                src="https://avatar.tower.im/3e2790283b5947f7bb2da54a779c60f3"/></a>
                        <i class="icon-event"></i>

                        <div class="event-main">
                            <div class="event-head">
                                <span class="event-actor">
                            <%--<a class="link-member" data-stack="true" href="/members/f7e254d7f54e40dbb93a33b737752fbc">OrionPax</a>--%>
                                </span>
                                                    <span class="event-action">
                                    将任务完成时间设置为 <span
                                                            data-readable-date="<fmt:formatDate value='${requestScope.task.endTime}' pattern="yyyy-MM-dd"/>">没有截止日期</span>
                                </span>
                                                    <span class="event-text">
                                    <span class="emphasize">
                                        <a class="todo-rest" data-stack="true"
                                           href="/projects/e26956389763492f891259d7d9c5b94d/todos/ec69d30b1b5f4759b823771882da98e8">数据库表开发</a>
                                    </span>
                                </span>
                            </div>
                        </div>
                    </div>

                    <div class="event event-common event-todo-assign" id="event-176798301"
                         data-ancestor-guid="e26956389763492f891259d7d9c5b94d"
                         data-ancestor-name="Flower"
                         data-ancestor-url="/projects/e26956389763492f891259d7d9c5b94d">

                        <a class="from" data-stack="true" href="/members/f7e254d7f54e40dbb93a33b737752fbc"><img
                                class="avatar" alt="OrionPax"
                                src="https://avatar.tower.im/3e2790283b5947f7bb2da54a779c60f3"/></a>
                        <i class="icon-event"></i>

                        <div class="event-main">
                            <div class="event-head">
                                <span class="event-actor">
			</span>
                                <span class="event-action">
				将任务指派给了 ${requestScope.task.user.name}
			</span>
                                <span class="event-text">
				<span class="emphasize">
					<a class="todo-rest" data-stack="true"
                       href="/projects/e26956389763492f891259d7d9c5b94d/todos/ec69d30b1b5f4759b823771882da98e8">数据库表开发</a>
				</span>
			</span>
                            </div>
                        </div>
                    </div>


                </div>

                <script type="text/html" id="tpl-fold-comment">
                    <div class="event event-common event-fold-comment" id="event-fold">
                        <i class="icon-event"></i>

                        <div class="event-main">
                            <div class="event-head">
                                <a href="javascript:;" class="link-fold-comment">查看更早的 {{ comments_num }} 条讨论</a>
                            </div>
                        </div>
                    </div>
                </script>

                <script type="text/html" id="tpl-todo-form">

                    <li class="todo-form">
                        <form class="form form-edit-todo" method="post" data-remote="true">
                            <div class="form-body">
                                <input type="checkbox" name="todo-done" disabled/>
                                <textarea name="todo_content" class="todo-content no-border" placeholder="新的任务"
                                          data-validate="custom" data-validate-msg=""></textarea>

                                <div class="todo-toolbar">
                                    <a href="javascript:;" class="add-tag" title="点击添加标签">#</a>
                                    <a href="javascript:;" class="add-priority" title="点击添加优先级">!</a>
                                </div>

                                <a href="javascript:;" class="todo-label">
                                    <span class="assignee">未指派</span> ·
                                    <span class="due">没有截止时间</span>
                                </a>
                            </div>
                            <div class="buttons create-buttons">
                                <button type="submit" class="btn btn-primary btn-create-todo"
                                        data-disable-with="正在保存...">添加任务
                                </button>
                                <a href="javascript:;" class="btn-cancel-todo">取消</a>
                            </div>
                            <div class="buttons edit-buttons">
                                <button type="submit" class="btn btn-primary btn-update-todo"
                                        data-disable-with="正在保存...">保存
                                </button>
                                <a href="javascript:;" class="btn-cancel-update-todo">取消</a>
                            </div>

                            <input type="hidden" name="assignee_guid" class="hidden-assignee" value="-1"/>
                            <input type="hidden" name="due_at" class="hidden-due-date" value=""/>
                        </form>
                    </li>


                </script>

                <script type="text/html" id="tpl-todo-popover">
                    <div class="todo-popover">
                        <div class="select-assignee">
                            <h3>将任务指派给</h3>
                            <div class="assignee-wrapper">
                                <select id="txt-assignee"></select>
                            </div>
                        </div>

                        <div class="select-due-date">
                            <h3>任务截止时间</h3>
                            <div class="due-date-wrapper">
                                <input type="text" class="txt-due-date" placeholder="选择截止时间"/>
                                <a href="javascript:;" class="link-remove-due-date" title="取消截止时间"><span
                                        class='twr twr-times'></span></a>

                                <div class="due-date-picker">
                                    <div class="cal-wrapper">
                                        <div class="cal-shortcuts">
                                            <a href="javascript:;" class="link-cal-shortcut today">[今天]</a>
                                            <a href="javascript:;" class="link-cal-shortcut tomorrow">[明天]</a>
                                            <a href="javascript:;" class="link-cal-shortcut this-friday">[本周]</a>
                                            <a href="javascript:;" class="link-cal-shortcut next-friday">[下周]</a>
                                        </div>
                                        <input type="date" class="hidden-due-date"/>
                                    </div>
                                    <div class="shortcuts-wrapper">
                                        <a href="javascript:;" class="link-date-shortcut today"
                                           data-shortcut="today|td|jintian|jt|今天">今天</a>
                                        <a href="javascript:;" class="link-date-shortcut tomorrow"
                                           data-shortcut="tomorrow|tm|mingtian|mt|明天">明天</a>
                                        <a href="javascript:;" class="link-date-shortcut after-tomorrow"
                                           data-shortcut="houtian|ht|dat|后天">后天</a>
                                        <a href="javascript:;" class="link-date-shortcut monday"
                                           data-shortcut="monday|zhouyi|xingqiyi|zy|xqy|周一|星期一|1">周一</a>
                                        <a href="javascript:;" class="link-date-shortcut tuesday"
                                           data-shortcut="tuesday|zhouer|xingqier|ze|xqe|周二|星期二|2">周二</a>
                                        <a href="javascript:;" class="link-date-shortcut wednesday"
                                           data-shortcut="wednesday|zhousan|xingqisan|zs|xqs|周三|星期三|3">周三</a>
                                        <a href="javascript:;" class="link-date-shortcut thursday"
                                           data-shortcut="thursday|zhousi|xingqisi|zs|xqs|周四|星期四|4">周四</a>
                                        <a href="javascript:;" class="link-date-shortcut friday"
                                           data-shortcut="friday|zhouwu|xingqiwu|zw|xqw|周五|星期五|5">周五</a>
                                        <a href="javascript:;" class="link-date-shortcut saturday"
                                           data-shortcut="saturday|zhouliu|xingqiliu|zl|xql|周六|星期日|6">周六</a>
                                        <a href="javascript:;" class="link-date-shortcut sunday"
                                           data-shortcut="sunday|zhouri|xingqiri|zr|xqr|周日|星期日|7">周日</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </script>

                <script type="text/html" id="tpl-dir-popover">
                    <div class="change-dir-popover">
                        <h3>选择文件夹</h3>
                        <div class="dirs" data-url="/projects/e26956389763492f891259d7d9c5b94d/folders">
                            <div class="node create-folder" data-url="">
                                <i class="icon-folder twr twr-folder"></i>
                                <form class="form" action="/projects/e26956389763492f891259d7d9c5b94d/dirs"
                                      method="post" data-remote="true">
                                    <div class="form-item">
                                        <div class="form-field">
                                            <input type="text" name="name" class="label no-border"
                                                   data-validate="required;length:0,255"
                                                   data-validate-msg="文件夹名称不能为空;文件夹名称最长255个字符" id="txt-dir-name"
                                                   placeholder="创建文件夹">
                                            <a href="javascript:;" class="link-submit-dir disabled">
                                                <i class="twr twr-check-circle"></i>
                                            </a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="remove-dir">
                            <a href="javascript:;" class="link-remove-dir">移出文件夹</a>
                        </div>
                    </div>


                </script>


                <div class="comment comment-form new" style="display: none;">
                    <form class="form form-editor form-new-comment" method="post" data-remote="true"
                          action="/projects/e26956389763492f891259d7d9c5b94d/todos/ec69d30b1b5f4759b823771882da98e8/comments">

                        <a class="avatar-wrap" target="_blank">
                            <img class="avatar">
                        </a>

                        <div class="comment-main">
                            <div class="form-item">
                                <div class="form-field">
                                    <div class="fake-textarea" data-droppable>点击发表评论</div>
                                    <textarea id="txt-new-comment" tabindex="1" autofocus data-validate="custom"
                                              data-autosave="new-comment-content"
                                              data-mention-group="e26956389763492f891259d7d9c5b94d"
                                              data-mention-type="project"
                                              class="comment-content invisible" name="comment_content"></textarea>
                                    <input type="hidden" name="is_html" value="1">
                                </div>
                            </div>

                            <div class="hide form-buttons">
                                <button tabindex="1" type="submit" class="btn btn-primary btn-create-comment"
                                        data-disable-with="正在发送...">发表评论
                                </button>
                                <button tabindex="2" type="button" class="btn btn-x btn-cancel-create-comment">取消
                                </button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>

        </div>
    </div>
    <div class="footer">
        &copy; 晴天设计
    </div>


</div>

<input type="hidden" id="d18n-enabled" value="false">
<input type="hidden" id="server-time" value="2018-05-21 22:12:02">

<input type="hidden" id="team-guid" value="982b79584a39484eb9e17459a6e1deff">
<input type="hidden" id="team-name" value="HYLT">
<input type="hidden" id="team-enable-pusher" value="true">

<input type="hidden" id="user-id" value="7432036">
<input type="hidden" id="user-email" value="2449832339@qq.com">

<input type="hidden" id="unused-bubbles" value="12,13">
<input type="hidden" id="member-id" value="12535517">
<input type="hidden" id="member-guid" value="ce2b30066f034bf9a69113963da165fd">
<input type="hidden" id="member-nickname" value="浮点农国">
<input type="hidden" id="member-avatar" value="${pageContext.request.contextPath}${sessionScope.currUser.img}">
<input type="hidden" id="member-timezone" value="Asia/Shanghai">
<input type="hidden" id="conn-guid" value="c37131dd-3daf-435a-bc9c-2c98d5e1843b">


<input type="hidden" id="electron" value="false">

<script>
    //<![CDATA[
    window.gon = {};
    gon.oss_direct_upload = true;
    //]]>
</script>

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