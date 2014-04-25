.class Lcom/baidu/internal/keyguard/slide/SpectrumView$1;
.super Landroid/os/Handler;
.source "SpectrumView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SpectrumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SpectrumView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SpectrumView;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$1;->this$0:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$1;->this$0:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->postInvalidate()V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$1;->this$0:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$1;->this$0:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    iget v1, v1, Lcom/baidu/internal/keyguard/slide/SpectrumView;->lastAngle:F

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->setRotation(F)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
