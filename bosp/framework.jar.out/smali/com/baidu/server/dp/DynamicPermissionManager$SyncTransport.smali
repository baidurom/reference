.class Lcom/baidu/server/dp/DynamicPermissionManager$SyncTransport;
.super Lcom/baidu/server/dp/ISyncTransport$Stub;
.source "DynamicPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/dp/DynamicPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncTransport"
.end annotation


# instance fields
.field private mHasResult:Z

.field private mResult:I

.field final synthetic this$0:Lcom/baidu/server/dp/DynamicPermissionManager;


# direct methods
.method constructor <init>(Lcom/baidu/server/dp/DynamicPermissionManager;)V
    .locals 1
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermissionManager$SyncTransport;->this$0:Lcom/baidu/server/dp/DynamicPermissionManager;

    invoke-direct {p0}, Lcom/baidu/server/dp/ISyncTransport$Stub;-><init>()V

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/server/dp/DynamicPermissionManager$SyncTransport;->mHasResult:Z

    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/baidu/server/dp/DynamicPermissionManager$SyncTransport;->mResult:I

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/baidu/server/dp/DynamicPermissionManager$SyncTransport;->mHasResult:Z

    return v0
.end method

.method public localTrans(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 631
    iput p1, p0, Lcom/baidu/server/dp/DynamicPermissionManager$SyncTransport;->mResult:I

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/server/dp/DynamicPermissionManager$SyncTransport;->mHasResult:Z

    .line 634
    monitor-enter p0

    .line 635
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 636
    monitor-exit p0

    .line 637
    return-void

    .line 636
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
