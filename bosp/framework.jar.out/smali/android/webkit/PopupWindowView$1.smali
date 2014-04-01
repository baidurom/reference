.class Landroid/webkit/PopupWindowView$1;
.super Ljava/lang/Object;
.source "PopupWindowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/PopupWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/PopupWindowView;


# direct methods
.method constructor <init>(Landroid/webkit/PopupWindowView;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Landroid/webkit/PopupWindowView$1;->this$0:Landroid/webkit/PopupWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/webkit/PopupWindowView$1;->this$0:Landroid/webkit/PopupWindowView;

    invoke-virtual {v0}, Landroid/webkit/PopupWindowView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Landroid/webkit/PopupWindowView$1;->this$0:Landroid/webkit/PopupWindowView;

    iget-object v0, v0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 76
    :cond_0
    iget-object v0, p0, Landroid/webkit/PopupWindowView$1;->this$0:Landroid/webkit/PopupWindowView;

    iget-object v0, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/PopupWindowView$1;->this$0:Landroid/webkit/PopupWindowView;

    #getter for: Landroid/webkit/PopupWindowView;->mHider:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/webkit/PopupWindowView;->access$000(Landroid/webkit/PopupWindowView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method
