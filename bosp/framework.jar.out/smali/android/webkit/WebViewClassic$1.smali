.class Landroid/webkit/WebViewClassic$1;
.super Landroid/content/BroadcastReceiver;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic;->setupThemeChangedListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 1434
    iput-object p1, p0, Landroid/webkit/WebViewClassic$1;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1436
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1437
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.THEME_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1438
    iget-object v1, p0, Landroid/webkit/WebViewClassic$1;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->purgeFontCache()V

    .line 1440
    :cond_0
    return-void
.end method
