.class Landroid/webkit/WebViewCore$WebCoreThread$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$WebCoreThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore$WebCoreThread;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$WebCoreThread;)V
    .locals 0
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 685
    const-string/jumbo v1, "webkit/webcore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sWebCoreHandler.handleMessage() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " obj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 729
    :goto_0
    const-string/jumbo v1, "webkit/webcore"

    const-string/jumbo v2, "sWebCoreHandler.handleMessage() done"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return-void

    .line 688
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebViewCore;

    .line 689
    .local v0, core:Landroid/webkit/WebViewCore;
    #calls: Landroid/webkit/WebViewCore;->initialize()V
    invoke-static {v0}, Landroid/webkit/WebViewCore;->access$500(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    .line 694
    .end local v0           #core:Landroid/webkit/WebViewCore;
    :sswitch_1
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 700
    :sswitch_2
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 705
    :sswitch_3
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v1, :cond_0

    .line 706
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No WebView has been created in this process!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 709
    :cond_0
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/webkit/JWebCoreJavaBridge;->addPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 713
    :sswitch_4
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v1, :cond_1

    .line 714
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No WebView has been created in this process!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 717
    :cond_1
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/webkit/JWebCoreJavaBridge;->removePackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :sswitch_5
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v1, :cond_2

    .line 722
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No WebView has been created in this process!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 725
    :cond_2
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/ProxyProperties;

    invoke-virtual {v2, v1}, Landroid/webkit/JWebCoreJavaBridge;->updateProxy(Landroid/net/ProxyProperties;)V

    goto :goto_0

    .line 686
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xb9 -> :sswitch_3
        0xba -> :sswitch_4
        0xc1 -> :sswitch_5
    .end sparse-switch
.end method
