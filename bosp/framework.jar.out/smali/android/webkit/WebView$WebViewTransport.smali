.class public Landroid/webkit/WebView$WebViewTransport;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewTransport"
.end annotation


# instance fields
.field private mWebview:Landroid/webkit/WebView;

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Landroid/webkit/WebView$WebViewTransport;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView$WebViewTransport;->mWebview:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebView(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "webview"

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/WebView$WebViewTransport;->mWebview:Landroid/webkit/WebView;

    .line 289
    iget-object v0, p0, Landroid/webkit/WebView$WebViewTransport;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;
    invoke-static {v0}, Landroid/webkit/WebView;->access$000(Landroid/webkit/WebView;)Landroid/webkit/WebViewProvider;

    move-result-object v0

    instance-of v0, v0, Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Landroid/webkit/WebView$WebViewTransport;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;
    invoke-static {v0}, Landroid/webkit/WebView;->access$000(Landroid/webkit/WebView;)Landroid/webkit/WebViewProvider;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClassic;

    iget-object v1, p0, Landroid/webkit/WebView$WebViewTransport;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->setWebViewTransportRef(Landroid/webkit/WebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_0
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
