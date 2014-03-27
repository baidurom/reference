.class Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 479
    .local v1, paddingBottom:I
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 480
    .local v0, fullScreen:Z
    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2$1;

    invoke-direct {v3, p0, v1, v0}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2$1;-><init>(Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2;IZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 495
    return-void

    .line 479
    .end local v0           #fullScreen:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
