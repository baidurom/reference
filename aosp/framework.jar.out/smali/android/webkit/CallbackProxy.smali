.class Landroid/webkit/CallbackProxy;
.super Landroid/os/Handler;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CallbackProxy$12;,
        Landroid/webkit/CallbackProxy$UploadFile;,
        Landroid/webkit/CallbackProxy$UploadFileMessageData;,
        Landroid/webkit/CallbackProxy$JsResultReceiver;,
        Landroid/webkit/CallbackProxy$ResultTransport;
    }
.end annotation


# static fields
.field private static final ADD_HISTORY_ITEM:I = 0x87

.field private static final ADD_MESSAGE_TO_CONSOLE:I = 0x81

.field private static final ASYNC_KEYEVENTS:I = 0x74

.field private static final AUTH_CREDENTIALS:I = 0x89

.field private static final AUTH_REQUEST:I = 0x68

.field private static final AUTO_LOGIN:I = 0x8c

.field private static final CLIENT_CERT_REQUEST:I = 0x8d

.field private static final CLOSE_WINDOW:I = 0x6e

.field private static final CREATE_WINDOW:I = 0x6d

.field private static final DOWNLOAD_FILE:I = 0x76

.field private static final EXCEEDED_DATABASE_QUOTA:I = 0x7e

.field private static final GEOLOCATION_PERMISSIONS_HIDE_PROMPT:I = 0x83

.field private static final GEOLOCATION_PERMISSIONS_SHOW_PROMPT:I = 0x82

.field private static final GET_VISITED_HISTORY:I = 0x85

.field private static final HISTORY_INDEX_CHANGED:I = 0x88

.field private static final JS_ALERT:I = 0x70

.field private static final JS_CONFIRM:I = 0x71

.field private static final JS_PROMPT:I = 0x72

.field private static final JS_TIMEOUT:I = 0x80

.field private static final JS_UNLOAD:I = 0x73

.field private static final LOAD_RESOURCE:I = 0x6c

.field private static final LOGTAG:Ljava/lang/String; = "CallbackProxy"

.field private static final NOTIFY:I = 0xc8

.field private static final OPEN_FILE_CHOOSER:I = 0x86

.field private static final OVERRIDE_URL:I = 0x67

.field private static final PAGE_FINISHED:I = 0x79

.field private static final PAGE_STARTED:I = 0x64

.field private static final PERF_PROBE:Z = false

.field private static final PROCEEDED_AFTER_SSL_ERROR:I = 0x90

.field private static final PROGRESS:I = 0x6a

.field private static final REACHED_APPCACHE_MAXSIZE:I = 0x7f

.field private static final RECEIVED_CERTIFICATE:I = 0x7c

.field private static final RECEIVED_ICON:I = 0x65

.field private static final RECEIVED_TITLE:I = 0x66

.field private static final RECEIVED_TOUCH_ICON_URL:I = 0x84

.field private static final REPORT_ERROR:I = 0x77

.field private static final REQUEST_FOCUS:I = 0x7a

.field private static final RESEND_POST_DATA:I = 0x78

.field private static final SAVE_PASSWORD:I = 0x6f

.field private static final SCALE_CHANGED:I = 0x7b

.field private static final SSL_ERROR:I = 0x69

.field private static final SWITCH_OUT_HISTORY:I = 0x7d

.field private static final UPDATE_VISITED:I = 0x6b


# instance fields
.field private final mBackForwardList:Landroid/webkit/WebBackForwardListClassic;

.field private mBlockMessages:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mDownloadListener:Landroid/webkit/DownloadListener;

.field private volatile mLatestProgress:I

.field private mProgressUpdatePending:Z

.field private volatile mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

.field private volatile mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebCoreIdleTime:J

.field private mWebCoreThreadTime:J

.field private final mWebView:Landroid/webkit/WebViewClassic;

.field private volatile mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V
    .locals 1
    .parameter "context"
    .parameter "w"

    .prologue
    .line 183
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    .line 185
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    .line 186
    iput-object p2, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    .line 187
    new-instance v0, Landroid/webkit/WebBackForwardListClassic;

    invoke-direct {v0, p0}, Landroid/webkit/WebBackForwardListClassic;-><init>(Landroid/webkit/CallbackProxy;)V

    iput-object v0, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardListClassic;

    .line 188
    return-void
.end method

.method private getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "url"

    .prologue
    .line 899
    move-object v1, p1

    .line 900
    .local v1, title:Ljava/lang/String;
    invoke-static {p1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 902
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    const v3, 0x1040342

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 913
    :goto_0
    return-object v1

    .line 905
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 907
    .local v0, aUrl:Ljava/net/URL;
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    const v3, 0x1040341

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 909
    .end local v0           #aUrl:Ljava/net/URL;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private declared-synchronized sendMessageToUiThreadSync(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1609
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1610
    invoke-static {}, Landroid/webkit/WebCoreThreadWatchdog;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1612
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1617
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/webkit/WebCoreThreadWatchdog;->resume()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1618
    monitor-exit p0

    return-void

    .line 1613
    :catch_0
    move-exception v0

    .line 1614
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "CallbackProxy"

    const-string v2, "Caught exception waiting for synchronous UI message to be processed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    const-string v1, "CallbackProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1609
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"
    .parameter "msgLevel"

    .prologue
    .line 1498
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1508
    :goto_0
    return-void

    .line 1502
    :cond_0
    const/16 v1, 0x81

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1503
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "sourceID"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lineNumber"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1506
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "msgLevel"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1507
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected declared-synchronized blockMessages()V
    .locals 1

    .prologue
    .line 191
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/webkit/CallbackProxy;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method canShowAlertDialog()Z
    .locals 1

    .prologue
    .line 1605
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    return v0
.end method

.method public createWindow(ZZ)Landroid/webkit/BrowserFrame;
    .locals 9
    .parameter "dialog"
    .parameter "userGesture"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1246
    iget-object v7, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v7, :cond_0

    move-object v4, v6

    .line 1266
    :goto_0
    return-object v4

    .line 1250
    :cond_0
    new-instance v2, Landroid/webkit/WebView$WebViewTransport;

    iget-object v7, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v7}, Landroid/webkit/WebView$WebViewTransport;-><init>(Landroid/webkit/WebView;)V

    .line 1252
    .local v2, transport:Landroid/webkit/WebView$WebViewTransport;
    const/16 v7, 0xc8

    invoke-virtual {p0, v7}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1253
    .local v1, msg:Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1254
    const/16 v8, 0x6d

    if-eqz p1, :cond_1

    move v7, v4

    :goto_1
    if-eqz p2, :cond_2

    :goto_2
    invoke-virtual {p0, v8, v7, v4, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1256
    invoke-virtual {v2}, Landroid/webkit/WebView$WebViewTransport;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v3

    .line 1257
    .local v3, w:Landroid/webkit/WebViewClassic;
    if-eqz v3, :cond_3

    .line 1258
    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    .line 1261
    .local v0, core:Landroid/webkit/WebViewCore;
    if-eqz v0, :cond_3

    .line 1262
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->initializeSubwindow()V

    .line 1263
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v4

    goto :goto_0

    .end local v0           #core:Landroid/webkit/WebViewCore;
    .end local v3           #w:Landroid/webkit/WebViewClassic;
    :cond_1
    move v7, v5

    .line 1254
    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    .restart local v3       #w:Landroid/webkit/WebViewClassic;
    :cond_3
    move-object v4, v6

    .line 1266
    goto :goto_0
.end method

.method public doUpdateVisitedHistory(Ljava/lang/String;Z)V
    .locals 3
    .parameter "url"
    .parameter "isReload"

    .prologue
    const/4 v1, 0x0

    .line 1100
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1104
    :goto_0
    return-void

    .line 1103
    :cond_0
    const/16 v2, 0x6b

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getBackForwardList()Landroid/webkit/WebBackForwardListClassic;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardListClassic;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 888
    iget v0, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    return v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1522
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1528
    :goto_0
    return-void

    .line 1525
    :cond_0
    const/16 v1, 0x85

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1526
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1527
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 65
    .parameter "msg"

    .prologue
    .line 308
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/CallbackProxy;->messagesBlocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 311
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 312
    .local v61, startedUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v61

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewClassic;->onPageStarted(Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 314
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    move-object/from16 v0, v61

    invoke-virtual {v10, v11, v0, v4}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 320
    .end local v61           #startedUrl:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Ljava/lang/String;

    .line 321
    .local v39, finishedUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewClassic;->onPageFinished(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    move-object/from16 v0, v39

    invoke-virtual {v4, v10, v0}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    .end local v39           #finishedUrl:Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 329
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11, v4}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 334
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 335
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_2

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v4, v10}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 341
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 342
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v11, v4}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 348
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 349
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v55, v0

    .line 350
    .local v55, reasonCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "description"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 351
    .local v35, description:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "failingUrl"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 352
    .local v38, failUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    move/from16 v0, v55

    move-object/from16 v1, v35

    move-object/from16 v2, v38

    invoke-virtual {v4, v10, v0, v1, v2}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 358
    .end local v35           #description:Ljava/lang/String;
    .end local v38           #failUrl:Ljava/lang/String;
    .end local v55           #reasonCode:I
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "resend"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v57

    check-cast v57, Landroid/os/Message;

    .line 360
    .local v57, resend:Landroid/os/Message;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "dontResend"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v36

    check-cast v36, Landroid/os/Message;

    .line 362
    .local v36, dontResend:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_3

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    invoke-virtual {v4, v10, v0, v1}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 366
    :cond_3
    invoke-virtual/range {v36 .. v36}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 371
    .end local v36           #dontResend:Landroid/os/Message;
    .end local v57           #resend:Landroid/os/Message;
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 372
    .local v52, overrideUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v51

    .line 373
    .local v51, override:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/webkit/CallbackProxy$ResultTransport;

    .line 375
    .local v58, result:Landroid/webkit/CallbackProxy$ResultTransport;,"Landroid/webkit/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    monitor-enter p0

    .line 376
    :try_start_0
    invoke-static/range {v51 .. v51}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Landroid/webkit/CallbackProxy$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 378
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 382
    .end local v51           #override:Z
    .end local v52           #overrideUrl:Ljava/lang/String;
    .end local v58           #result:Landroid/webkit/CallbackProxy$ResultTransport;,"Landroid/webkit/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 383
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/webkit/HttpAuthHandler;

    .line 384
    .local v40, handler:Landroid/webkit/HttpAuthHandler;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "host"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 385
    .local v41, host:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "realm"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 386
    .local v54, realm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v54

    invoke-virtual {v4, v10, v0, v1, v2}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 392
    .end local v40           #handler:Landroid/webkit/HttpAuthHandler;
    .end local v41           #host:Ljava/lang/String;
    .end local v54           #realm:Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 393
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Ljava/util/HashMap;

    .line 395
    .local v46, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v20

    const-string v4, "handler"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/SslErrorHandler;

    const-string v10, "error"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/http/SslError;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v4, v10}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto/16 :goto_0

    .line 402
    .end local v46           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    instance-of v4, v4, Landroid/webkit/WebViewClientClassicExt;

    if-eqz v4, :cond_0

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    check-cast v4, Landroid/webkit/WebViewClientClassicExt;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/http/SslError;

    invoke-virtual {v4, v11, v10}, Landroid/webkit/WebViewClientClassicExt;->onProceededAfterSslError(Landroid/webkit/WebView;Landroid/net/http/SslError;)V

    goto/16 :goto_0

    .line 410
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    instance-of v4, v4, Landroid/webkit/WebViewClientClassicExt;

    if-eqz v4, :cond_0

    .line 411
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Ljava/util/HashMap;

    .line 412
    .restart local v46       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    check-cast v4, Landroid/webkit/WebViewClientClassicExt;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v20

    const-string v10, "handler"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/webkit/ClientCertRequestHandler;

    const-string v11, "host_and_port"

    move-object/from16 v0, v46

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v10, v11}, Landroid/webkit/WebViewClientClassicExt;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 423
    .end local v46           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_d
    monitor-enter p0

    .line 424
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_4

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    invoke-virtual {v4, v10, v11}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 428
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/CallbackProxy;->mProgressUpdatePending:Z

    .line 429
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 433
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 434
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v4, v10}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 440
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 441
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v11, v4}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 446
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    if-eqz v4, :cond_0

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 448
    .local v5, url:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "userAgent"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 449
    .local v6, userAgent:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "contentDisposition"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 451
    .local v7, contentDisposition:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "mimetype"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 452
    .local v8, mimetype:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "referer"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 453
    .local v9, referer:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "contentLength"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    .line 455
    .local v33, contentLength:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    instance-of v4, v4, Landroid/webkit/BrowserDownloadListener;

    if-eqz v4, :cond_6

    .line 456
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    check-cast v4, Landroid/webkit/BrowserDownloadListener;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual/range {v4 .. v11}, Landroid/webkit/BrowserDownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 459
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    invoke-interface/range {v10 .. v16}, Landroid/webkit/DownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 466
    .end local v5           #url:Ljava/lang/String;
    .end local v6           #userAgent:Ljava/lang/String;
    .end local v7           #contentDisposition:Ljava/lang/String;
    .end local v8           #mimetype:Ljava/lang/String;
    .end local v9           #referer:Ljava/lang/String;
    .end local v33           #contentLength:Ljava/lang/Long;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v23

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_8

    const/4 v4, 0x1

    move v10, v4

    :goto_3
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_9

    const/4 v4, 0x1

    move v11, v4

    :goto_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10, v11, v4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 470
    monitor-enter p0

    .line 471
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 472
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 474
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->dismissZoomControl()V

    goto/16 :goto_0

    .line 467
    :cond_8
    const/4 v4, 0x0

    move v10, v4

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    move v11, v4

    goto :goto_4

    .line 472
    :catchall_2
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4

    .line 479
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 485
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 486
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 491
    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    .line 492
    .local v31, bundle:Landroid/os/Bundle;
    const-string v4, "host"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 493
    .local v59, schemePlusHost:Ljava/lang/String;
    const-string/jumbo v4, "username"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 494
    .local v62, username:Ljava/lang/String;
    const-string/jumbo v4, "password"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 497
    .local v53, password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object/from16 v0, v59

    move-object/from16 v1, v62

    move-object/from16 v2, v53

    invoke-virtual {v10, v0, v1, v2, v4}, Landroid/webkit/WebViewClassic;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 499
    monitor-enter p0

    .line 500
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 501
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v4

    .line 506
    .end local v31           #bundle:Landroid/os/Bundle;
    .end local v53           #password:Ljava/lang/String;
    .end local v59           #schemePlusHost:Ljava/lang/String;
    .end local v62           #username:Ljava/lang/String;
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 507
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/KeyEvent;

    invoke-virtual {v10, v11, v4}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 513
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 514
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Ljava/util/HashMap;

    .line 516
    .restart local v46       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "databaseIdentifier"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 518
    .local v12, databaseIdentifier:Ljava/lang/String;
    const-string/jumbo v4, "url"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 519
    .restart local v5       #url:Ljava/lang/String;
    const-string/jumbo v4, "quota"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 521
    .local v13, quota:J
    const-string/jumbo v4, "totalQuota"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 523
    .local v17, totalQuota:J
    const-string v4, "estimatedDatabaseSize"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 525
    .local v15, estimatedDatabaseSize:J
    const-string/jumbo v4, "quotaUpdater"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/webkit/WebStorage$QuotaUpdater;

    .line 528
    .local v19, quotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v11, v5

    invoke-virtual/range {v10 .. v19}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto/16 :goto_0

    .line 535
    .end local v5           #url:Ljava/lang/String;
    .end local v12           #databaseIdentifier:Ljava/lang/String;
    .end local v13           #quota:J
    .end local v15           #estimatedDatabaseSize:J
    .end local v17           #totalQuota:J
    .end local v19           #quotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;
    .end local v46           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 536
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Ljava/util/HashMap;

    .line 538
    .restart local v46       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "requiredStorage"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 540
    .local v21, requiredStorage:J
    const-string/jumbo v4, "quota"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 542
    .restart local v13       #quota:J
    const-string/jumbo v4, "quotaUpdater"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/webkit/WebStorage$QuotaUpdater;

    .line 545
    .restart local v19       #quotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v20, v0

    move-wide/from16 v23, v13

    move-object/from16 v25, v19

    invoke-virtual/range {v20 .. v25}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto/16 :goto_0

    .line 551
    .end local v13           #quota:J
    .end local v19           #quotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;
    .end local v21           #requiredStorage:J
    .end local v46           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 552
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Ljava/util/HashMap;

    .line 554
    .restart local v46       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "origin"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/String;

    .line 555
    .local v50, origin:Ljava/lang/String;
    const-string v4, "callback"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/webkit/GeolocationPermissions$Callback;

    .line 558
    .local v32, callback:Landroid/webkit/GeolocationPermissions$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, v50

    move-object/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto/16 :goto_0

    .line 564
    .end local v32           #callback:Landroid/webkit/GeolocationPermissions$Callback;
    .end local v46           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v50           #origin:Ljava/lang/String;
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto/16 :goto_0

    .line 570
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 571
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Landroid/webkit/CallbackProxy$JsResultReceiver;

    .line 572
    .local v56, receiver:Landroid/webkit/CallbackProxy$JsResultReceiver;
    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    move-object/from16 v28, v0

    .line 573
    .local v28, res:Landroid/webkit/JsResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "message"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 574
    .local v26, message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 575
    .restart local v5       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v4, v10, v5, v0, v1}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 577
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/CallbackProxy;->canShowAlertDialog()Z

    move-result v4

    if-nez v4, :cond_a

    .line 578
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 579
    invoke-virtual/range {v56 .. v56}, Landroid/webkit/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 582
    :cond_a
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkit/CallbackProxy;->getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v10, 0x104000a

    new-instance v11, Landroid/webkit/CallbackProxy$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v11, v0, v1}, Landroid/webkit/CallbackProxy$2;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v10, Landroid/webkit/CallbackProxy$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v10, v0, v1}, Landroid/webkit/CallbackProxy$1;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 602
    :cond_b
    invoke-virtual/range {v56 .. v56}, Landroid/webkit/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 607
    .end local v5           #url:Ljava/lang/String;
    .end local v26           #message:Ljava/lang/String;
    .end local v28           #res:Landroid/webkit/JsResult;
    .end local v56           #receiver:Landroid/webkit/CallbackProxy$JsResultReceiver;
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 608
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Landroid/webkit/CallbackProxy$JsResultReceiver;

    .line 609
    .restart local v56       #receiver:Landroid/webkit/CallbackProxy$JsResultReceiver;
    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    move-object/from16 v28, v0

    .line 610
    .restart local v28       #res:Landroid/webkit/JsResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "message"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 611
    .restart local v26       #message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 612
    .restart local v5       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v4, v10, v5, v0, v1}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 614
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/CallbackProxy;->canShowAlertDialog()Z

    move-result v4

    if-nez v4, :cond_c

    .line 615
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 616
    invoke-virtual/range {v56 .. v56}, Landroid/webkit/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 619
    :cond_c
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkit/CallbackProxy;->getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v10, 0x104000a

    new-instance v11, Landroid/webkit/CallbackProxy$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v11, v0, v1}, Landroid/webkit/CallbackProxy$5;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v10, 0x104

    new-instance v11, Landroid/webkit/CallbackProxy$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v11, v0, v1}, Landroid/webkit/CallbackProxy$4;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v10, Landroid/webkit/CallbackProxy$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v10, v0, v1}, Landroid/webkit/CallbackProxy$3;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 647
    :cond_d
    invoke-virtual/range {v56 .. v56}, Landroid/webkit/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 652
    .end local v5           #url:Ljava/lang/String;
    .end local v26           #message:Ljava/lang/String;
    .end local v28           #res:Landroid/webkit/JsResult;
    .end local v56           #receiver:Landroid/webkit/CallbackProxy$JsResultReceiver;
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 653
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Landroid/webkit/CallbackProxy$JsResultReceiver;

    .line 654
    .restart local v56       #receiver:Landroid/webkit/CallbackProxy$JsResultReceiver;
    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    move-object/from16 v28, v0

    .line 655
    .local v28, res:Landroid/webkit/JsPromptResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "message"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 656
    .restart local v26       #message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "default"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 657
    .local v27, defaultVal:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 658
    .restart local v5       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v24

    move-object/from16 v25, v5

    invoke-virtual/range {v23 .. v28}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/CallbackProxy;->canShowAlertDialog()Z

    move-result v4

    if-nez v4, :cond_e

    .line 661
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 662
    invoke-virtual/range {v56 .. v56}, Landroid/webkit/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 665
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v37

    .line 667
    .local v37, factory:Landroid/view/LayoutInflater;
    const v4, 0x109004d

    const/4 v10, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v64

    .line 669
    .local v64, view:Landroid/view/View;
    const v4, 0x102029f

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v63

    check-cast v63, Landroid/widget/EditText;

    .line 671
    .local v63, v:Landroid/widget/EditText;
    move-object/from16 v0, v63

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 672
    const v4, 0x102000b

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkit/CallbackProxy;->getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v10, 0x104000a

    new-instance v11, Landroid/webkit/CallbackProxy$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v63

    invoke-direct {v11, v0, v1, v2}, Landroid/webkit/CallbackProxy$8;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v10, 0x104

    new-instance v11, Landroid/webkit/CallbackProxy$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v11, v0, v1}, Landroid/webkit/CallbackProxy$7;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v10, Landroid/webkit/CallbackProxy$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v10, v0, v1}, Landroid/webkit/CallbackProxy$6;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 705
    .end local v37           #factory:Landroid/view/LayoutInflater;
    .end local v63           #v:Landroid/widget/EditText;
    .end local v64           #view:Landroid/view/View;
    :cond_f
    invoke-virtual/range {v56 .. v56}, Landroid/webkit/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 710
    .end local v5           #url:Ljava/lang/String;
    .end local v26           #message:Ljava/lang/String;
    .end local v27           #defaultVal:Ljava/lang/String;
    .end local v28           #res:Landroid/webkit/JsPromptResult;
    .end local v56           #receiver:Landroid/webkit/CallbackProxy$JsResultReceiver;
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 711
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Landroid/webkit/CallbackProxy$JsResultReceiver;

    .line 712
    .restart local v56       #receiver:Landroid/webkit/CallbackProxy$JsResultReceiver;
    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    move-object/from16 v28, v0

    .line 713
    .local v28, res:Landroid/webkit/JsResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "message"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 714
    .restart local v26       #message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 715
    .restart local v5       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v4, v10, v5, v0, v1}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 717
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/CallbackProxy;->canShowAlertDialog()Z

    move-result v4

    if-nez v4, :cond_10

    .line 718
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 719
    invoke-virtual/range {v56 .. v56}, Landroid/webkit/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 722
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    const v10, 0x1040343

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v26, v11, v20

    invoke-virtual {v4, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    .line 724
    .local v45, m:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v10, 0x104000a

    new-instance v11, Landroid/webkit/CallbackProxy$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v11, v0, v1}, Landroid/webkit/CallbackProxy$11;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v10, 0x104

    new-instance v11, Landroid/webkit/CallbackProxy$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v11, v0, v1}, Landroid/webkit/CallbackProxy$10;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v10, Landroid/webkit/CallbackProxy$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v10, v0, v1}, Landroid/webkit/CallbackProxy$9;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 752
    .end local v45           #m:Ljava/lang/String;
    :cond_11
    invoke-virtual/range {v56 .. v56}, Landroid/webkit/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 757
    .end local v5           #url:Ljava/lang/String;
    .end local v26           #message:Ljava/lang/String;
    .end local v28           #res:Landroid/webkit/JsResult;
    .end local v56           #receiver:Landroid/webkit/CallbackProxy$JsResultReceiver;
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 758
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Landroid/webkit/CallbackProxy$JsResultReceiver;

    .line 759
    .restart local v56       #receiver:Landroid/webkit/CallbackProxy$JsResultReceiver;
    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    move-object/from16 v28, v0

    .line 760
    .restart local v28       #res:Landroid/webkit/JsResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 761
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 765
    :goto_5
    invoke-virtual/range {v56 .. v56}, Landroid/webkit/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 763
    :cond_12
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/JsPromptResult;->cancel()V

    goto :goto_5

    .line 770
    .end local v28           #res:Landroid/webkit/JsResult;
    .end local v56           #receiver:Landroid/webkit/CallbackProxy$JsResultReceiver;
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/http/SslCertificate;

    invoke-virtual {v10, v4}, Landroid/webkit/WebViewClassic;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto/16 :goto_0

    .line 774
    :pswitch_20
    monitor-enter p0

    .line 775
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 776
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v4

    .line 780
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 781
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v20, "old"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string/jumbo v23, "new"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v10, v11, v0}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto/16 :goto_0

    .line 787
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    goto/16 :goto_0

    .line 791
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 794
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "message"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 795
    .restart local v26       #message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "sourceID"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 796
    .local v60, sourceID:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "lineNumber"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v42

    .line 797
    .local v42, lineNumber:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "msgLevel"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v48

    .line 798
    .local v48, msgLevel:I
    invoke-static {}, Landroid/webkit/ConsoleMessage$MessageLevel;->values()[Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v4

    array-length v0, v4

    move/from16 v49, v0

    .line 800
    .local v49, numberOfMessageLevels:I
    if-ltz v48, :cond_13

    move/from16 v0, v48

    move/from16 v1, v49

    if-lt v0, v1, :cond_14

    .line 801
    :cond_13
    const/16 v48, 0x0

    .line 804
    :cond_14
    invoke-static {}, Landroid/webkit/ConsoleMessage$MessageLevel;->values()[Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v4

    aget-object v47, v4, v48

    .line 807
    .local v47, messageLevel:Landroid/webkit/ConsoleMessage$MessageLevel;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    new-instance v10, Landroid/webkit/ConsoleMessage;

    move-object/from16 v0, v26

    move-object/from16 v1, v60

    move/from16 v2, v42

    move-object/from16 v3, v47

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/webkit/ConsoleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ConsoleMessage$MessageLevel;)V

    invoke-virtual {v4, v10}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 811
    const-string v44, "Web Console"

    .line 812
    .local v44, logTag:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " at "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ":"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 814
    .local v43, logMessage:Ljava/lang/String;
    sget-object v4, Landroid/webkit/CallbackProxy$12;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual/range {v47 .. v47}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v10

    aget v4, v4, v10

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 816
    :pswitch_24
    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 819
    :pswitch_25
    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 822
    :pswitch_26
    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 825
    :pswitch_27
    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 828
    :pswitch_28
    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 836
    .end local v26           #message:Ljava/lang/String;
    .end local v42           #lineNumber:I
    .end local v43           #logMessage:Ljava/lang/String;
    .end local v44           #logTag:Ljava/lang/String;
    .end local v47           #messageLevel:Landroid/webkit/ConsoleMessage$MessageLevel;
    .end local v48           #msgLevel:I
    .end local v49           #numberOfMessageLevels:I
    .end local v60           #sourceID:Ljava/lang/String;
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 837
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/ValueCallback;

    invoke-virtual {v10, v4}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto/16 :goto_0

    .line 842
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 843
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/webkit/CallbackProxy$UploadFileMessageData;

    .line 844
    .local v34, data:Landroid/webkit/CallbackProxy$UploadFileMessageData;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual/range {v34 .. v34}, Landroid/webkit/CallbackProxy$UploadFileMessageData;->getUploadFile()Landroid/webkit/CallbackProxy$UploadFile;

    move-result-object v10

    invoke-virtual/range {v34 .. v34}, Landroid/webkit/CallbackProxy$UploadFileMessageData;->getAcceptType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v34 .. v34}, Landroid/webkit/CallbackProxy$UploadFileMessageData;->getCapture()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v10, v11, v0}, Landroid/webkit/WebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 850
    .end local v34           #data:Landroid/webkit/CallbackProxy$UploadFileMessageData;
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-eqz v4, :cond_0

    .line 851
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/WebHistoryItem;

    invoke-virtual {v10, v4}, Landroid/webkit/WebBackForwardListClient;->onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V

    goto/16 :goto_0

    .line 857
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-eqz v4, :cond_0

    .line 858
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/WebHistoryItem;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v4, v11}, Landroid/webkit/WebBackForwardListClient;->onIndexChanged(Landroid/webkit/WebHistoryItem;I)V

    goto/16 :goto_0

    .line 863
    :pswitch_2d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "host"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 864
    .restart local v41       #host:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "realm"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 865
    .restart local v54       #realm:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "username"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 866
    .restart local v62       #username:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "password"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 867
    .restart local v53       #password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    move-object/from16 v2, v62

    move-object/from16 v3, v53

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 872
    .end local v41           #host:Ljava/lang/String;
    .end local v53           #password:Ljava/lang/String;
    .end local v54           #realm:Ljava/lang/String;
    .end local v62           #username:Ljava/lang/String;
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 873
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "realm"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 874
    .restart local v54       #realm:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "account"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 875
    .local v29, account:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "args"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 876
    .local v30, args:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    move-object/from16 v0, v54

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v4, v10, v0, v1, v2}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_15
        :pswitch_0
        :pswitch_10
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_12
        :pswitch_21
        :pswitch_1f
        :pswitch_22
        :pswitch_16
        :pswitch_17
        :pswitch_1e
        :pswitch_23
        :pswitch_18
        :pswitch_19
        :pswitch_4
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_0
        :pswitch_0
        :pswitch_2e
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_20
    .end packed-switch

    .line 814
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
    .end packed-switch
.end method

.method protected declared-synchronized messagesBlocked()Z
    .locals 1

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/CallbackProxy;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCloseWindow(Landroid/webkit/WebViewClassic;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 1282
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1286
    :goto_0
    return-void

    .line 1285
    :cond_0
    const/16 v0, 0x6e

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 3
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "referer"
    .parameter "contentLength"

    .prologue
    .line 1168
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    if-nez v2, :cond_0

    .line 1170
    const/4 v2, 0x0

    .line 1182
    :goto_0
    return v2

    .line 1173
    :cond_0
    const/16 v2, 0x76

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1174
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1175
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string/jumbo v2, "userAgent"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const-string/jumbo v2, "mimetype"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const-string/jumbo v2, "referer"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const-string v2, "contentLength"

    invoke-virtual {v0, v2, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1180
    const-string v2, "contentDisposition"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1182
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 4
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "quota"
    .parameter "estimatedDatabaseSize"
    .parameter "totalQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1404
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1407
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 1421
    :goto_0
    return-void

    .line 1411
    :cond_0
    const/16 v2, 0x7e

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1412
    .local v0, exceededQuota:Landroid/os/Message;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1413
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "databaseIdentifier"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    const-string/jumbo v2, "quota"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    const-string v2, "estimatedDatabaseSize"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    const-string/jumbo v2, "totalQuota"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    const-string/jumbo v2, "quotaUpdater"

    invoke-virtual {v1, v2, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1420
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .parameter "dontResend"
    .parameter "resend"

    .prologue
    .line 1013
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 1014
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1023
    :goto_0
    return-void

    .line 1018
    :cond_0
    const/16 v2, 0x78

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1019
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1020
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "resend"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1021
    const-string v2, "dontResend"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1022
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 2

    .prologue
    .line 1478
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1484
    :goto_0
    return-void

    .line 1482
    :cond_0
    const/16 v1, 0x83

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1483
    .local v0, hideMessage:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 1460
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1471
    :goto_0
    return-void

    .line 1464
    :cond_0
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1466
    .local v1, showMessage:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1467
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    const-string v2, "callback"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1470
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onIndexChanged(Landroid/webkit/WebHistoryItem;I)V
    .locals 3
    .parameter "item"
    .parameter "index"

    .prologue
    .line 1591
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-nez v1, :cond_0

    .line 1596
    :goto_0
    return-void

    .line 1594
    :cond_0
    const/16 v1, 0x88

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1595
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onJsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "url"
    .parameter "message"

    .prologue
    .line 1331
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1339
    :goto_0
    return-void

    .line 1334
    :cond_0
    new-instance v1, Landroid/webkit/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkit/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V

    .line 1335
    .local v1, result:Landroid/webkit/CallbackProxy$JsResultReceiver;
    const/16 v2, 0x70

    invoke-virtual {p0, v2, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1336
    .local v0, alert:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    invoke-direct {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "url"
    .parameter "message"

    .prologue
    .line 1373
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1374
    const/4 v2, 0x1

    .line 1381
    :goto_0
    return v2

    .line 1376
    :cond_0
    new-instance v1, Landroid/webkit/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkit/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V

    .line 1377
    .local v1, result:Landroid/webkit/CallbackProxy$JsResultReceiver;
    const/16 v2, 0x73

    invoke-virtual {p0, v2, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1378
    .local v0, confirm:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    invoke-direct {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1381
    iget-object v2, v1, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkit/JsPromptResult;->getResult()Z

    move-result v2

    goto :goto_0
.end method

.method public onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "url"
    .parameter "message"

    .prologue
    .line 1344
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1345
    const/4 v2, 0x0

    .line 1352
    :goto_0
    return v2

    .line 1347
    :cond_0
    new-instance v1, Landroid/webkit/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkit/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V

    .line 1348
    .local v1, result:Landroid/webkit/CallbackProxy$JsResultReceiver;
    const/16 v2, 0x71

    invoke-virtual {p0, v2, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1349
    .local v0, confirm:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    invoke-direct {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1352
    iget-object v2, v1, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkit/JsPromptResult;->getResult()Z

    move-result v2

    goto :goto_0
.end method

.method public onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"

    .prologue
    const/4 v2, 0x0

    .line 1358
    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v3, :cond_0

    .line 1367
    :goto_0
    return-object v2

    .line 1361
    :cond_0
    new-instance v1, Landroid/webkit/CallbackProxy$JsResultReceiver;

    invoke-direct {v1, p0, v2}, Landroid/webkit/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V

    .line 1362
    .local v1, result:Landroid/webkit/CallbackProxy$JsResultReceiver;
    const/16 v2, 0x72

    invoke-virtual {p0, v2, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1363
    .local v0, prompt:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    invoke-direct {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1367
    iget-object v2, v1, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkit/JsPromptResult;->getStringResult()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onJsTimeout()Z
    .locals 3

    .prologue
    .line 1512
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1513
    const/4 v2, 0x1

    .line 1518
    :goto_0
    return v2

    .line 1515
    :cond_0
    new-instance v0, Landroid/webkit/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/webkit/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V

    .line 1516
    .local v0, result:Landroid/webkit/CallbackProxy$JsResultReceiver;
    const/16 v2, 0x80

    invoke-virtual {p0, v2, v0}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1517
    .local v1, timeout:Landroid/os/Message;
    invoke-direct {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1518
    iget-object v2, v0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkit/JsPromptResult;->getResult()Z

    move-result v2

    goto :goto_0
.end method

.method onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1583
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-nez v1, :cond_0

    .line 1588
    :goto_0
    return-void

    .line 1586
    :cond_0
    const/16 v1, 0x87

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1587
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 984
    const/16 v1, 0x79

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 985
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 986
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 969
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 970
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 971
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 973
    return-void
.end method

.method public onProceededAfterSslError(Landroid/net/http/SslError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 1069
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    instance-of v1, v1, Landroid/webkit/WebViewClientClassicExt;

    if-nez v1, :cond_1

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1073
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1074
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onProgressChanged(I)V
    .locals 1
    .parameter "newProgress"

    .prologue
    .line 1226
    monitor-enter p0

    .line 1229
    :try_start_0
    iget v0, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    if-ne v0, p1, :cond_0

    .line 1230
    monitor-exit p0

    .line 1241
    :goto_0
    return-void

    .line 1232
    :cond_0
    iput p1, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    .line 1233
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_1

    .line 1234
    monitor-exit p0

    goto :goto_0

    .line 1240
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1236
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/CallbackProxy;->mProgressUpdatePending:Z

    if-nez v0, :cond_2

    .line 1237
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendEmptyMessage(I)Z

    .line 1238
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/CallbackProxy;->mProgressUpdatePending:Z

    .line 1240
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 4
    .parameter "requiredStorage"
    .parameter "quota"
    .parameter "quotaUpdater"

    .prologue
    .line 1435
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1438
    invoke-interface {p5, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 1449
    :goto_0
    return-void

    .line 1442
    :cond_0
    const/16 v2, 0x7f

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1443
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1444
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "requiredStorage"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    const-string/jumbo v2, "quota"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    const-string/jumbo v2, "quotaUpdater"

    invoke-virtual {v0, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1448
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .parameter "certificate"

    .prologue
    .line 1094
    const/16 v0, 0x7c

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1095
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V
    .locals 3
    .parameter "handler"
    .parameter "host_and_port"

    .prologue
    .line 1080
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    instance-of v2, v2, Landroid/webkit/WebViewClientClassicExt;

    if-nez v2, :cond_1

    .line 1081
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/ClientCertRequestHandler;->cancel()V

    .line 1090
    :goto_0
    return-void

    .line 1084
    :cond_1
    const/16 v2, 0x8d

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1085
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1086
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "handler"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    const-string v2, "host_and_port"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1089
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 998
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    .line 1007
    :goto_0
    return-void

    .line 1002
    :cond_0
    const/16 v1, 0x77

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1003
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1004
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "failingUrl"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1212
    const/16 v1, 0x89

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1213
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "realm"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1218
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "handler"
    .parameter "hostName"
    .parameter "realmName"

    .prologue
    .line 1043
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    .line 1044
    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 1051
    :goto_0
    return-void

    .line 1047
    :cond_0
    const/16 v1, 0x68

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1048
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "realm"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 1291
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardListClassic;

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardListClassic;->getCurrentItem()Landroid/webkit/WebHistoryItemClassic;

    move-result-object v0

    .line 1292
    .local v0, i:Landroid/webkit/WebHistoryItemClassic;
    if-eqz v0, :cond_0

    .line 1293
    invoke-virtual {v0, p1}, Landroid/webkit/WebHistoryItemClassic;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 1297
    :cond_0
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_1

    .line 1301
    :goto_0
    return-void

    .line 1300
    :cond_1
    const/16 v1, 0x65

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "realm"
    .parameter "account"
    .parameter "args"

    .prologue
    .line 1144
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 1153
    :goto_0
    return-void

    .line 1147
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1148
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1149
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "realm"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string v2, "account"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const-string v2, "args"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 1056
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 1057
    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 1066
    :goto_0
    return-void

    .line 1060
    :cond_0
    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1061
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1062
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "handler"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const-string v2, "error"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1065
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 1322
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1326
    :goto_0
    return-void

    .line 1325
    :cond_0
    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onReceivedTouchIconUrl(Ljava/lang/String;Z)V
    .locals 4
    .parameter "url"
    .parameter "precomposed"

    .prologue
    const/4 v2, 0x0

    .line 1306
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardListClassic;

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardListClassic;->getCurrentItem()Landroid/webkit/WebHistoryItemClassic;

    move-result-object v0

    .line 1307
    .local v0, i:Landroid/webkit/WebHistoryItemClassic;
    if-eqz v0, :cond_0

    .line 1308
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebHistoryItemClassic;->setTouchIconUrl(Ljava/lang/String;Z)V

    .line 1312
    :cond_0
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_1

    .line 1317
    :goto_0
    return-void

    .line 1315
    :cond_1
    const/16 v3, 0x84

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v3, v1, v2, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onRequestFocus()V
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1277
    :goto_0
    return-void

    .line 1276
    :cond_0
    const/16 v0, 0x7a

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 3
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"
    .parameter "resumeMsg"

    .prologue
    .line 1198
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object p4

    .line 1200
    const/16 v2, 0x6f

    invoke-virtual {p0, v2, p4}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1201
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1202
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "host"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string/jumbo v2, "username"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-direct {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1207
    const/4 v2, 0x0

    return v2
.end method

.method public onScaleChanged(FF)V
    .locals 3
    .parameter "oldScale"
    .parameter "newScale"

    .prologue
    .line 1131
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 1139
    :goto_0
    return-void

    .line 1134
    :cond_0
    const/16 v2, 0x7b

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1135
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1136
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "old"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1137
    const-string/jumbo v2, "new"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1138
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onTooManyRedirects(Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .parameter "cancelMsg"
    .parameter "continueMsg"

    .prologue
    .line 992
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1122
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1126
    :goto_0
    return-void

    .line 1125
    :cond_0
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method openFileChooser(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .parameter "acceptType"
    .parameter "capture"

    .prologue
    const/4 v3, 0x0

    .line 1571
    iget-object v4, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v4, :cond_0

    .line 1579
    :goto_0
    return-object v3

    .line 1574
    :cond_0
    const/16 v4, 0x86

    invoke-virtual {p0, v4}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1575
    .local v1, myMessage:Landroid/os/Message;
    new-instance v2, Landroid/webkit/CallbackProxy$UploadFile;

    invoke-direct {v2, p0, v3}, Landroid/webkit/CallbackProxy$UploadFile;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V

    .line 1576
    .local v2, uploadFile:Landroid/webkit/CallbackProxy$UploadFile;
    new-instance v0, Landroid/webkit/CallbackProxy$UploadFileMessageData;

    invoke-direct {v0, v2, p1, p2}, Landroid/webkit/CallbackProxy$UploadFileMessageData;-><init>(Landroid/webkit/CallbackProxy$UploadFile;Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    .local v0, data:Landroid/webkit/CallbackProxy$UploadFileMessageData;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1578
    invoke-direct {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1579
    invoke-virtual {v2}, Landroid/webkit/CallbackProxy$UploadFile;->getResult()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 241
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    .line 242
    return-void
.end method

.method setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 253
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    .line 254
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 225
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 226
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 209
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 210
    return-void
.end method

.method shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .parameter "url"

    .prologue
    .line 1107
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_1

    .line 1108
    const/4 v0, 0x0

    .line 1116
    :cond_0
    :goto_0
    return-object v0

    .line 1111
    :cond_1
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 1113
    .local v0, r:Landroid/webkit/WebResourceResponse;
    if-nez v0, :cond_0

    .line 1114
    const/16 v1, 0x6c

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 4
    .parameter "url"

    .prologue
    .line 1031
    new-instance v1, Landroid/webkit/CallbackProxy$ResultTransport;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/CallbackProxy$ResultTransport;-><init>(Ljava/lang/Object;)V

    .line 1032
    .local v1, res:Landroid/webkit/CallbackProxy$ResultTransport;,"Landroid/webkit/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1033
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1035
    invoke-direct {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1036
    invoke-virtual {v1}, Landroid/webkit/CallbackProxy$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method protected shutdown()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 201
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 202
    return-void
.end method

.method switchOutDrawHistory()V
    .locals 1

    .prologue
    .line 895
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 896
    return-void
.end method

.method public uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 296
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uiOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 4
    .parameter "overrideUrl"

    .prologue
    .line 265
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 266
    :cond_0
    const/4 v1, 0x0

    .line 289
    :goto_0
    return v1

    .line 268
    :cond_1
    const/4 v1, 0x0

    .line 269
    .local v1, override:Z
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v2, :cond_2

    .line 270
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 273
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    :try_start_0
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    const/4 v1, 0x1

    goto :goto_0

    .line 284
    :catch_0
    move-exception v2

    goto :goto_0
.end method
