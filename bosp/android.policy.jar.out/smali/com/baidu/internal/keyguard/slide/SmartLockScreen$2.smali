.class Lcom/baidu/internal/keyguard/slide/SmartLockScreen$2;
.super Ljava/lang/Object;
.source "SmartLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$2;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$2;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidgetMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$800(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;->ping()V

    .line 634
    return-void
.end method
