.class Lcom/baidu/internal/keyguard/slide/SlideLockScreen$7;
.super Landroid/os/Handler;
.source "SlideLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SlideLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$7;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 681
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 683
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$7;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYimyAdapter:Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$1600(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$7;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYimyAdapter:Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$1600(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 681
    :pswitch_data_0
    .packed-switch 0x9823
        :pswitch_0
    .end packed-switch
.end method
