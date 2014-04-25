.class Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;
.super Landroid/database/ContentObserver;
.source "SlideLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SlideLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QiYiContentObserver"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;


# direct methods
.method public constructor <init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 683
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    .line 684
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 685
    iput-object p2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;->handler:Landroid/os/Handler;

    .line 686
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 690
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 691
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;->handler:Landroid/os/Handler;

    const v1, 0x9823

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 694
    :cond_0
    return-void
.end method
