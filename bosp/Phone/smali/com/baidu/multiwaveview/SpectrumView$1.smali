.class Lcom/baidu/multiwaveview/SpectrumView$1;
.super Landroid/os/Handler;
.source "SpectrumView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/multiwaveview/SpectrumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/multiwaveview/SpectrumView;


# direct methods
.method constructor <init>(Lcom/baidu/multiwaveview/SpectrumView;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/baidu/multiwaveview/SpectrumView$1;->this$0:Lcom/baidu/multiwaveview/SpectrumView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView$1;->this$0:Lcom/baidu/multiwaveview/SpectrumView;

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/SpectrumView;->postInvalidate()V

    .line 83
    return-void
.end method
