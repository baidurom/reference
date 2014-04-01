.class Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$4;
.super Ljava/lang/Object;
.source "SmartMultiUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setNotificationTextClr(ZI)V
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
    .line 224
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->invalidate()V

    .line 228
    return-void
.end method
