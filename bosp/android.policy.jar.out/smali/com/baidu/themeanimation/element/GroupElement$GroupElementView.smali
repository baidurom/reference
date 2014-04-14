.class public Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;
.super Landroid/widget/RelativeLayout;
.source "GroupElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/GroupElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupElementView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/themeanimation/element/GroupElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/GroupElement;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;->this$0:Lcom/baidu/themeanimation/element/GroupElement;

    .line 69
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/GroupElement;->genLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void
.end method
