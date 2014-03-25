.class Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$6;
.super Ljava/lang/Object;
.source "SmartMultiUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->updateNotifyNum(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$6;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$6;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->invalidate()V

    .line 1092
    return-void
.end method
