.class Lcom/android/server/am/ActivityStack$myThread;
.super Ljava/lang/Thread;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myThread"
.end annotation


# instance fields
.field mTargetActivityRecord:Lcom/android/server/am/ActivityRecord;

.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .parameter
    .parameter "target"

    .prologue
    .line 5447
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$myThread;->this$0:Lcom/android/server/am/ActivityStack;

    .line 5448
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5449
    iput-object p2, p0, Lcom/android/server/am/ActivityStack$myThread;->mTargetActivityRecord:Lcom/android/server/am/ActivityRecord;

    .line 5450
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5453
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$myThread;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 5454
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$myThread;->mTargetActivityRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 5455
    monitor-exit v1

    .line 5456
    return-void

    .line 5455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
