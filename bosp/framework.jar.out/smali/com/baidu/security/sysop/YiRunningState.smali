.class public Lcom/baidu/security/sysop/YiRunningState;
.super Ljava/lang/Object;
.source "YiRunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/security/sysop/YiRunningState$ServiceProcessComparator;,
        Lcom/baidu/security/sysop/YiRunningState$MergedItem;,
        Lcom/baidu/security/sysop/YiRunningState$ProcessItem;,
        Lcom/baidu/security/sysop/YiRunningState$ServiceItem;,
        Lcom/baidu/security/sysop/YiRunningState$BaseItem;,
        Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static final MAX_SERVICES:I = 0x64

.field private static final SHOW_LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "YiRunningState"


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field public mBackgroundProcessMemory:J

.field mFilteredBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mFilteredMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field public mForegroundProcessMemory:J

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field protected mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field public mNumBackgroundProcesses:I

.field public mNumForegroundProcesses:I

.field public mNumServiceProcesses:I

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/baidu/security/sysop/YiRunningState$ServiceProcessComparator;

.field public mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/security/sysop/YiRunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z

.field mWhiteListEmptyItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mWhiteListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mYiPm:Lcom/baidu/security/sysop/YiProcessManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Lcom/baidu/security/sysop/YiRunningState$ServiceProcessComparator;

    invoke-direct {v0}, Lcom/baidu/security/sysop/YiRunningState$ServiceProcessComparator;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessComparator:Lcom/baidu/security/sysop/YiRunningState$ServiceProcessComparator;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mSequence:I

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mItems:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mFilteredMergedItems:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mFilteredBackgroundItems:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mWhiteListItems:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mWhiteListEmptyItems:Ljava/util/ArrayList;

    .line 585
    invoke-static {p1}, Lcom/baidu/security/sysop/YiProcessManager;->getInstance(Landroid/content/Context;)Lcom/baidu/security/sysop/YiProcessManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mYiPm:Lcom/baidu/security/sysop/YiProcessManager;

    .line 586
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/baidu/security/sysop/YiProcessManager;)V
    .locals 1
    .parameter "context"
    .parameter "processManager"

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Lcom/baidu/security/sysop/YiRunningState$ServiceProcessComparator;

    invoke-direct {v0}, Lcom/baidu/security/sysop/YiRunningState$ServiceProcessComparator;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessComparator:Lcom/baidu/security/sysop/YiRunningState$ServiceProcessComparator;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mSequence:I

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mItems:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mFilteredMergedItems:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mFilteredBackgroundItems:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mWhiteListItems:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mWhiteListEmptyItems:Ljava/util/ArrayList;

    .line 589
    if-nez p2, :cond_0

    .line 590
    invoke-static {p1}, Lcom/baidu/security/sysop/YiProcessManager;->getInstance(Landroid/content/Context;)Lcom/baidu/security/sysop/YiProcessManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mYiPm:Lcom/baidu/security/sysop/YiProcessManager;

    .line 595
    :goto_0
    return-void

    .line 593
    :cond_0
    iput-object p2, p0, Lcom/baidu/security/sysop/YiRunningState;->mYiPm:Lcom/baidu/security/sysop/YiProcessManager;

    goto :goto_0
.end method

.method private filterMergedItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1240
    .local p1, allItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .local p2, filterOutWhiteListItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/baidu/security/sysop/YiRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/baidu/security/sysop/YiRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-gtz v5, :cond_2

    .line 1242
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1282
    :cond_1
    :goto_0
    return-object v4

    .line 1245
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1247
    .local v4, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    const/4 v2, 0x0

    .line 1248
    .local v2, it:Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 1249
    .local v3, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    const/4 v1, 0x0

    .line 1250
    .local v1, ainfo:Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1252
    if-nez p2, :cond_4

    .line 1253
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1254
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    check-cast v3, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 1255
    .restart local v3       #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    invoke-direct {p0, v3}, Lcom/baidu/security/sysop/YiRunningState;->getProtectionType(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 1256
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1261
    :cond_4
    monitor-enter p2

    .line 1262
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1263
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1266
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1267
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    move-object v3, v0

    .line 1268
    invoke-direct {p0, v3}, Lcom/baidu/security/sysop/YiRunningState;->getProtectionType(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)I

    move-result v5

    if-eqz v5, :cond_5

    .line 1269
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1270
    iget-object v5, v3, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    if-eqz v5, :cond_5

    .line 1271
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1279
    :catchall_0
    move-exception v5

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_6
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getProtectionType(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)I
    .locals 10
    .parameter "item"

    .prologue
    .line 1192
    if-eqz p1, :cond_0

    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    if-nez v8, :cond_2

    .line 1193
    :cond_0
    const/4 v6, 0x0

    .line 1236
    :cond_1
    :goto_0
    return v6

    .line 1196
    :cond_2
    const/4 v0, 0x0

    .line 1197
    .local v0, ainfo:Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;
    const/4 v6, 0x0

    .line 1198
    .local v6, ptype:I
    iget-object v8, p0, Lcom/baidu/security/sysop/YiRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget-object v9, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget v9, v9, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ainfo:Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;
    check-cast v0, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;

    .line 1200
    .restart local v0       #ainfo:Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;
    const/4 v4, 0x0

    .line 1201
    .local v4, packageName:Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v8, v0, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v8, :cond_1

    .line 1205
    iget-object v8, v0, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v5, v1, v2

    .line 1206
    .local v5, pkgName:Ljava/lang/String;
    if-eqz v5, :cond_3

    iget-object v8, v0, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1207
    move-object v4, v5

    .line 1205
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1210
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_4
    if-nez v4, :cond_5

    .line 1211
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    if-eqz v8, :cond_5

    .line 1212
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget-object v9, p0, Lcom/baidu/security/sysop/YiRunningState;->mYiPm:Lcom/baidu/security/sysop/YiProcessManager;

    invoke-virtual {v9}, Lcom/baidu/security/sysop/YiProcessManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1213
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_5

    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 1214
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1219
    :cond_5
    if-eqz v4, :cond_6

    .line 1220
    iget-object v8, p0, Lcom/baidu/security/sysop/YiRunningState;->mYiPm:Lcom/baidu/security/sysop/YiProcessManager;

    invoke-virtual {v8, v4}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 1222
    :cond_6
    if-eqz v0, :cond_1

    iget-object v8, v0, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v8, :cond_1

    .line 1223
    iget-object v8, v0, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 1224
    .restart local v5       #pkgName:Ljava/lang/String;
    iget-object v8, p0, Lcom/baidu/security/sysop/YiRunningState;->mYiPm:Lcom/baidu/security/sysop/YiProcessManager;

    invoke-virtual {v8, v5}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v7

    .line 1225
    .local v7, ptypeTmp:I
    if-eqz v7, :cond_7

    .line 1226
    move v6, v7

    .line 1227
    goto :goto_0

    .line 1223
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    const/4 v0, 0x1

    .line 668
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 682
    :cond_0
    :goto_0
    return v0

    .line 671
    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xc8

    if-gt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    .line 682
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pm"
    .parameter "className"
    .parameter "item"

    .prologue
    .line 568
    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 570
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 571
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 581
    .end local v0           #label:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object v0

    .line 576
    :cond_2
    move-object v0, p1

    .line 577
    .local v0, label:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 578
    .local v1, tail:I
    if-ltz v1, :cond_1

    .line 579
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1304
    iget-object v1, p0, Lcom/baidu/security/sysop/YiRunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1305
    :try_start_0
    iget-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getCurrentFilteredBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1316
    iget-object v1, p0, Lcom/baidu/security/sysop/YiRunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1317
    :try_start_0
    iget-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mFilteredBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1318
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getCurrentFilteredMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1310
    iget-object v1, p0, Lcom/baidu/security/sysop/YiRunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1311
    :try_start_0
    iget-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mFilteredMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getCurrentItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$BaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1286
    iget-object v1, p0, Lcom/baidu/security/sysop/YiRunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1287
    :try_start_0
    iget-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1298
    iget-object v1, p0, Lcom/baidu/security/sysop/YiRunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1299
    :try_start_0
    iget-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getCurrentWhiteListBgEmptyItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1322
    iget-object v1, p0, Lcom/baidu/security/sysop/YiRunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1323
    :try_start_0
    iget-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mWhiteListEmptyItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getCurrentWhiteListItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1328
    iget-object v1, p0, Lcom/baidu/security/sysop/YiRunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1329
    :try_start_0
    iget-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mWhiteListItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1330
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 687
    iget-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 688
    iget-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 689
    iget-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 690
    iget-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 691
    iget-object v0, p0, Lcom/baidu/security/sysop/YiRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 692
    return-void
.end method

.method public setWatchingBackgroundItems(Z)V
    .locals 2
    .parameter "watching"

    .prologue
    .line 1292
    iget-object v1, p0, Lcom/baidu/security/sysop/YiRunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1293
    :try_start_0
    iput-boolean p1, p0, Lcom/baidu/security/sysop/YiRunningState;->mWatchingBackgroundItems:Z

    .line 1294
    monitor-exit v1

    .line 1295
    return-void

    .line 1294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 60
    .parameter "context"
    .parameter "am"

    .prologue
    .line 695
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    .line 697
    .local v42, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mSequence:I

    move/from16 v56, v0

    add-int/lit8 v56, v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/security/sysop/YiRunningState;->mSequence:I

    .line 699
    const/4 v15, 0x0

    .line 703
    .local v15, changed:Z
    const/16 v56, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v49

    .line 707
    .local v49, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v49, :cond_1

    invoke-interface/range {v49 .. v49}, Ljava/util/List;->size()I

    move-result v9

    .line 708
    .local v9, NS:I
    :goto_0
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    if-ge v0, v9, :cond_3

    .line 709
    move-object/from16 v0, v49

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 713
    .local v50, si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v50

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v56, v0

    if-nez v56, :cond_2

    move-object/from16 v0, v50

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v56, v0

    if-nez v56, :cond_2

    .line 714
    move-object/from16 v0, v49

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 715
    add-int/lit8 v22, v22, -0x1

    .line 716
    add-int/lit8 v9, v9, -0x1

    .line 708
    :cond_0
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 707
    .end local v9           #NS:I
    .end local v22           #i:I
    .end local v50           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 721
    .restart local v9       #NS:I
    .restart local v22       #i:I
    .restart local v50       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v50

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v56, v0

    and-int/lit8 v56, v56, 0x8

    if-eqz v56, :cond_0

    .line 723
    move-object/from16 v0, v49

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 724
    add-int/lit8 v22, v22, -0x1

    .line 725
    add-int/lit8 v9, v9, -0x1

    .line 726
    goto :goto_2

    .line 732
    .end local v50           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v44

    .line 735
    .local v44, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v44, :cond_4

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v7

    .line 736
    .local v7, NP:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/util/SparseArray;->clear()V

    .line 737
    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    if-ge v0, v7, :cond_5

    .line 738
    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 739
    .local v38, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v57, v0

    new-instance v58, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;

    move-object/from16 v0, v58

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v56 .. v58}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 737
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 735
    .end local v7           #NP:I
    .end local v38           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 744
    .restart local v7       #NP:I
    :cond_5
    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    if-ge v0, v9, :cond_7

    .line 745
    move-object/from16 v0, v49

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 746
    .restart local v50       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v50

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v56, v0

    const-wide/16 v58, 0x0

    cmp-long v56, v56, v58

    if-nez v56, :cond_6

    move-object/from16 v0, v50

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v56, v0

    if-lez v56, :cond_6

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v50

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;

    .line 748
    .local v10, ainfo:Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;
    if-eqz v10, :cond_6

    .line 749
    const/16 v56, 0x1

    move/from16 v0, v56

    iput-boolean v0, v10, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;->hasServices:Z

    .line 750
    move-object/from16 v0, v50

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v56, v0

    if-eqz v56, :cond_6

    .line 751
    const/16 v56, 0x1

    move/from16 v0, v56

    iput-boolean v0, v10, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 744
    .end local v10           #ainfo:Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 758
    .end local v50           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    const/16 v22, 0x0

    :goto_6
    move/from16 v0, v22

    if-ge v0, v9, :cond_13

    .line 759
    move-object/from16 v0, v49

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 766
    .restart local v50       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v50

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v56, v0

    const-wide/16 v58, 0x0

    cmp-long v56, v56, v58

    if-nez v56, :cond_b

    move-object/from16 v0, v50

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v56, v0

    if-lez v56, :cond_b

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v50

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;

    .line 768
    .restart local v10       #ainfo:Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;
    if-eqz v10, :cond_b

    iget-boolean v0, v10, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v56, v0

    if-nez v56, :cond_b

    .line 774
    iget-object v0, v10, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v56, v0

    const/16 v57, 0x12c

    move/from16 v0, v56

    move/from16 v1, v57

    if-ge v0, v1, :cond_b

    .line 778
    const/16 v52, 0x0

    .line 779
    .local v52, skip:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    iget-object v0, v10, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #ainfo:Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;
    check-cast v10, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;

    .line 780
    .restart local v10       #ainfo:Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;
    :goto_7
    if-eqz v10, :cond_9

    .line 781
    iget-boolean v0, v10, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;->hasServices:Z

    move/from16 v56, v0

    if-nez v56, :cond_8

    iget-object v0, v10, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Lcom/baidu/security/sysop/YiRunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v56

    if-eqz v56, :cond_a

    .line 782
    :cond_8
    const/16 v52, 0x1

    .line 787
    :cond_9
    if-eqz v52, :cond_b

    .line 758
    .end local v10           #ainfo:Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;
    .end local v52           #skip:Z
    :goto_8
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 785
    .restart local v10       #ainfo:Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;
    .restart local v52       #skip:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    iget-object v0, v10, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #ainfo:Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;
    check-cast v10, Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;

    .restart local v10       #ainfo:Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;
    goto :goto_7

    .line 794
    .end local v10           #ainfo:Lcom/baidu/security/sysop/YiRunningState$AppProcessInfo;
    .end local v52           #skip:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v50

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/util/HashMap;

    .line 795
    .local v45, procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/security/sysop/YiRunningState$ProcessItem;>;"
    if-nez v45, :cond_c

    .line 796
    new-instance v45, Ljava/util/HashMap;

    .end local v45           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/security/sysop/YiRunningState$ProcessItem;>;"
    invoke-direct/range {v45 .. v45}, Ljava/util/HashMap;-><init>()V

    .line 797
    .restart local v45       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/security/sysop/YiRunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v50

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v57, v0

    move-object/from16 v0, v56

    move/from16 v1, v57

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 799
    :cond_c
    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v56, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 800
    .local v43, proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    if-nez v43, :cond_d

    .line 801
    const/4 v15, 0x1

    .line 802
    new-instance v43, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .end local v43           #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    move-object/from16 v0, v50

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v56, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v56

    move-object/from16 v3, v57

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 803
    .restart local v43       #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v56, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v56

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    :cond_d
    move-object/from16 v0, v43

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mCurSeq:I

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mSequence:I

    move/from16 v57, v0

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_11

    .line 807
    move-object/from16 v0, v50

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v56, v0

    const-wide/16 v58, 0x0

    cmp-long v56, v56, v58

    if-nez v56, :cond_12

    move-object/from16 v0, v50

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v39, v0

    .line 808
    .local v39, pid:I
    :goto_9
    move-object/from16 v0, v43

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    move/from16 v56, v0

    move/from16 v0, v39

    move/from16 v1, v56

    if-eq v0, v1, :cond_10

    .line 809
    const/4 v15, 0x1

    .line 810
    move-object/from16 v0, v43

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    move/from16 v56, v0

    move/from16 v0, v56

    move/from16 v1, v39

    if-eq v0, v1, :cond_10

    .line 811
    move-object/from16 v0, v43

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    move/from16 v56, v0

    if-eqz v56, :cond_e

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Landroid/util/SparseArray;->remove(I)V

    .line 814
    :cond_e
    if-eqz v39, :cond_f

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v39

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 817
    :cond_f
    move/from16 v0, v39

    move-object/from16 v1, v43

    iput v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    .line 820
    :cond_10
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/util/SparseArray;->clear()V

    .line 821
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mSequence:I

    move/from16 v56, v0

    move/from16 v0, v56

    move-object/from16 v1, v43

    iput v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mCurSeq:I

    .line 823
    .end local v39           #pid:I
    :cond_11
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v56

    or-int v15, v15, v56

    goto/16 :goto_8

    .line 807
    :cond_12
    const/16 v39, 0x0

    goto :goto_9

    .line 828
    .end local v43           #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    .end local v45           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/security/sysop/YiRunningState$ProcessItem;>;"
    .end local v50           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_13
    const/16 v22, 0x0

    :goto_a
    move/from16 v0, v22

    if-ge v0, v7, :cond_18

    .line 829
    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 830
    .restart local v38       #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 831
    .restart local v43       #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    if-nez v43, :cond_15

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v43

    .end local v43           #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    check-cast v43, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 836
    .restart local v43       #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    if-nez v43, :cond_14

    .line 837
    const/4 v15, 0x1

    .line 838
    new-instance v43, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .end local v43           #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v56, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v56

    move-object/from16 v3, v57

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 839
    .restart local v43       #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v56, v0

    move/from16 v0, v56

    move-object/from16 v1, v43

    iput v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v57, v0

    move-object/from16 v0, v56

    move/from16 v1, v57

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 842
    :cond_14
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/util/SparseArray;->clear()V

    .line 845
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/baidu/security/sysop/YiRunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v56

    if-eqz v56, :cond_17

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v56

    if-nez v56, :cond_16

    .line 847
    const/4 v15, 0x1

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mSequence:I

    move/from16 v56, v0

    move/from16 v0, v56

    move-object/from16 v1, v43

    iput v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mCurSeq:I

    .line 851
    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mInteresting:Z

    .line 852
    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 857
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mSequence:I

    move/from16 v56, v0

    move/from16 v0, v56

    move-object/from16 v1, v43

    iput v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mRunningSeq:I

    .line 858
    move-object/from16 v0, v38

    move-object/from16 v1, v43

    iput-object v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 828
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_a

    .line 854
    :cond_17
    const/16 v56, 0x0

    move/from16 v0, v56

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    .line 863
    .end local v38           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v43           #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 864
    .local v8, NRP:I
    const/16 v22, 0x0

    :goto_c
    move/from16 v0, v22

    if-ge v0, v8, :cond_1d

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 866
    .restart local v43       #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    move-object/from16 v0, v43

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mRunningSeq:I

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mSequence:I

    move/from16 v57, v0

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_1c

    .line 867
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v17, v0

    .line 868
    .local v17, clientPid:I
    if-eqz v17, :cond_1b

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 870
    .local v16, client:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    if-nez v16, :cond_19

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #client:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    check-cast v16, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 873
    .restart local v16       #client:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    :cond_19
    if-eqz v16, :cond_1a

    .line 874
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    move/from16 v57, v0

    move-object/from16 v0, v56

    move/from16 v1, v57

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 882
    .end local v16           #client:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    :cond_1a
    :goto_d
    add-int/lit8 v22, v22, 0x1

    .line 883
    goto :goto_c

    .line 880
    :cond_1b
    const/16 v56, 0x0

    move-object/from16 v0, v56

    move-object/from16 v1, v43

    iput-object v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mClient:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    goto :goto_d

    .line 884
    .end local v17           #clientPid:I
    :cond_1c
    const/4 v15, 0x1

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v57

    invoke-virtual/range {v56 .. v57}, Landroid/util/SparseArray;->remove(I)V

    .line 886
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_c

    .line 891
    .end local v43           #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 892
    .local v6, NHP:I
    const/16 v22, 0x0

    :goto_e
    move/from16 v0, v22

    if-ge v0, v6, :cond_20

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 894
    .restart local v43       #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mInteresting:Z

    move/from16 v56, v0

    if-eqz v56, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v56

    if-nez v56, :cond_1f

    .line 895
    :cond_1e
    const/4 v15, 0x1

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 897
    add-int/lit8 v22, v22, -0x1

    .line 898
    add-int/lit8 v6, v6, -0x1

    .line 892
    :cond_1f
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 905
    .end local v43           #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 906
    .local v5, NAP:I
    const/16 v22, 0x0

    :goto_f
    move/from16 v0, v22

    if-ge v0, v5, :cond_22

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 908
    .restart local v43       #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    move-object/from16 v0, v43

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mCurSeq:I

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mSequence:I

    move/from16 v57, v0

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_21

    .line 909
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mSequence:I

    move/from16 v56, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move/from16 v3, v56

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v56

    or-int v15, v15, v56

    .line 906
    :cond_21
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    .line 914
    .end local v43           #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    :cond_22
    const/16 v55, 0x0

    .line 915
    .local v55, uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v22, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/util/SparseArray;->size()I

    move-result v56

    move/from16 v0, v22

    move/from16 v1, v56

    if-ge v0, v1, :cond_2a

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/util/HashMap;

    .line 917
    .restart local v45       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/security/sysop/YiRunningState$ProcessItem;>;"
    invoke-virtual/range {v45 .. v45}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .line 918
    .local v41, pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/security/sysop/YiRunningState$ProcessItem;>;"
    :cond_23
    :goto_11
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_29

    .line 919
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 920
    .local v38, pi:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    move-object/from16 v0, v38

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mCurSeq:I

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mSequence:I

    move/from16 v57, v0

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_26

    .line 921
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 922
    move-object/from16 v0, v38

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    move/from16 v56, v0

    if-nez v56, :cond_24

    .line 925
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/util/SparseArray;->clear()V

    .line 941
    :cond_24
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v51

    .line 942
    .local v51, sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/security/sysop/YiRunningState$ServiceItem;>;"
    :cond_25
    :goto_12
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_23

    .line 943
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .line 944
    .local v50, si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    move-object/from16 v0, v50

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mCurSeq:I

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mSequence:I

    move/from16 v57, v0

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_25

    .line 945
    const/4 v15, 0x1

    .line 946
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 928
    .end local v50           #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    .end local v51           #sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/security/sysop/YiRunningState$ServiceItem;>;"
    :cond_26
    const/4 v15, 0x1

    .line 929
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->remove()V

    .line 930
    invoke-virtual/range {v45 .. v45}, Ljava/util/HashMap;->size()I

    move-result v56

    if-nez v56, :cond_28

    .line 931
    if-nez v55, :cond_27

    .line 932
    new-instance v55, Ljava/util/ArrayList;

    .end local v55           #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v55 .. v55}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .restart local v55       #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    :cond_28
    move-object/from16 v0, v38

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    move/from16 v56, v0

    if-eqz v56, :cond_23

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    .line 915
    .end local v38           #pi:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    :cond_29
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_10

    .line 952
    .end local v41           #pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/security/sysop/YiRunningState$ProcessItem;>;"
    .end local v45           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/security/sysop/YiRunningState$ProcessItem;>;"
    :cond_2a
    if-eqz v55, :cond_2b

    .line 953
    const/16 v22, 0x0

    :goto_13
    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->size()I

    move-result v56

    move/from16 v0, v22

    move/from16 v1, v56

    if-ge v0, v1, :cond_2b

    .line 954
    move-object/from16 v0, v55

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/Integer;

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Integer;->intValue()I

    move-result v54

    .line 955
    .local v54, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 953
    add-int/lit8 v22, v22, 0x1

    goto :goto_13

    .line 959
    .end local v54           #uid:I
    :cond_2b
    if-eqz v15, :cond_3c

    .line 961
    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    .line 962
    .local v53, sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ProcessItem;>;"
    const/16 v22, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/util/SparseArray;->size()I

    move-result v56

    move/from16 v0, v22

    move/from16 v1, v56

    if-ge v0, v1, :cond_30

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-virtual/range {v56 .. v56}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_15
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_2f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 964
    .restart local v38       #pi:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    const/16 v56, 0x0

    move/from16 v0, v56

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mIsSystem:Z

    .line 965
    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mIsStarted:Z

    .line 966
    const-wide v56, 0x7fffffffffffffffL

    move-wide/from16 v0, v56

    move-object/from16 v2, v38

    iput-wide v0, v2, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mActiveSince:J

    .line 967
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_16
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_2e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .line 968
    .restart local v50       #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v56, v0

    if-eqz v56, :cond_2d

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v56, v0

    and-int/lit8 v56, v56, 0x1

    if-eqz v56, :cond_2d

    .line 971
    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mIsSystem:Z

    .line 973
    :cond_2d
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v56, v0

    if-eqz v56, :cond_2c

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v56, v0

    if-eqz v56, :cond_2c

    .line 975
    const/16 v56, 0x0

    move/from16 v0, v56

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mIsStarted:Z

    .line 976
    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v58, v0

    cmp-long v56, v56, v58

    if-lez v56, :cond_2c

    .line 977
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v56, v0

    move-wide/from16 v0, v56

    move-object/from16 v2, v38

    iput-wide v0, v2, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    .line 981
    .end local v50           #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    :cond_2e
    move-object/from16 v0, v53

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 962
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v38           #pi:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    :cond_2f
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_14

    .line 985
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessComparator:Lcom/baidu/security/sysop/YiRunningState$ServiceProcessComparator;

    move-object/from16 v56, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v56

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 987
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 988
    .local v32, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$BaseItem;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 989
    .local v33, newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->clear()V

    .line 990
    const/16 v22, 0x0

    :goto_17
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->size()I

    move-result v56

    move/from16 v0, v22

    move/from16 v1, v56

    if-ge v0, v1, :cond_38

    .line 991
    move-object/from16 v0, v53

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 992
    .restart local v38       #pi:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    const/16 v56, 0x0

    move/from16 v0, v56

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mNeedDivider:Z

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 996
    .local v18, firstProc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 998
    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    move-object/from16 v0, v38

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    move/from16 v56, v0

    if-lez v56, :cond_31

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    :cond_31
    const/16 v25, 0x0

    .line 1005
    .local v25, mergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    const/16 v21, 0x0

    .line 1006
    .local v21, haveAllMerged:Z
    const/16 v27, 0x0

    .line 1007
    .local v27, needDivider:Z
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_34

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .line 1008
    .restart local v50       #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    move/from16 v0, v27

    move-object/from16 v1, v50

    iput-boolean v0, v1, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mNeedDivider:Z

    .line 1009
    const/16 v27, 0x1

    .line 1010
    move-object/from16 v0, v32

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mMergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    move-object/from16 v56, v0

    if-eqz v56, :cond_33

    .line 1012
    if-eqz v25, :cond_32

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mMergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    move-object/from16 v56, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v56

    if-eq v0, v1, :cond_32

    .line 1013
    const/16 v21, 0x0

    .line 1015
    :cond_32
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mMergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    move-object/from16 v25, v0

    goto :goto_18

    .line 1017
    :cond_33
    const/16 v21, 0x0

    goto :goto_18

    .line 1021
    .end local v50           #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    :cond_34
    if-eqz v21, :cond_35

    if-eqz v25, :cond_35

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v56

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/HashMap;->size()I

    move-result v57

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_37

    .line 1024
    :cond_35
    new-instance v25, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .end local v25           #mergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    invoke-direct/range {v25 .. v25}, Lcom/baidu/security/sysop/YiRunningState$MergedItem;-><init>()V

    .line 1025
    .restart local v25       #mergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v56

    invoke-interface/range {v56 .. v56}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_19
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_36

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .line 1026
    .restart local v50       #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    move-object/from16 v0, v25

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mMergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    goto :goto_19

    .line 1029
    .end local v50           #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    :cond_36
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 1030
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->clear()V

    .line 1031
    move/from16 v26, v18

    .local v26, mpi:I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v56

    add-int/lit8 v56, v56, -0x1

    move/from16 v0, v26

    move/from16 v1, v56

    if-ge v0, v1, :cond_37

    .line 1032
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    add-int/lit8 v26, v26, 0x1

    goto :goto_1a

    .line 1036
    .end local v26           #mpi:I
    :cond_37
    const/16 v56, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1037
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_17

    .line 1042
    .end local v18           #firstProc:I
    .end local v21           #haveAllMerged:Z
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v25           #mergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    .end local v27           #needDivider:Z
    .end local v38           #pi:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1043
    const/16 v22, 0x0

    :goto_1b
    move/from16 v0, v22

    if-ge v0, v6, :cond_3b

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 1045
    .restart local v43       #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mClient:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    move-object/from16 v56, v0

    if-nez v56, :cond_3a

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/HashMap;->size()I

    move-result v56

    if-gtz v56, :cond_3a

    .line 1046
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mMergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    move-object/from16 v56, v0

    if-nez v56, :cond_39

    .line 1047
    new-instance v56, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    invoke-direct/range {v56 .. v56}, Lcom/baidu/security/sysop/YiRunningState$MergedItem;-><init>()V

    move-object/from16 v0, v56

    move-object/from16 v1, v43

    iput-object v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mMergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 1048
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mMergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    move-object/from16 v56, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v56

    iput-object v0, v1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 1050
    :cond_39
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mMergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    move-object/from16 v0, v56

    move-object/from16 v1, p1

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1051
    const/16 v56, 0x0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mMergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    move-object/from16 v57, v0

    move-object/from16 v0, v33

    move/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    :cond_3a
    add-int/lit8 v22, v22, 0x1

    goto :goto_1b

    .line 1056
    .end local v43           #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v57, v0

    monitor-enter v57

    .line 1057
    :try_start_0
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/security/sysop/YiRunningState;->mItems:Ljava/util/ArrayList;

    .line 1058
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/security/sysop/YiRunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 1059
    monitor-exit v57
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    .end local v32           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$BaseItem;>;"
    .end local v33           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .end local v53           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ProcessItem;>;"
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->clear()V

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1066
    const/16 v34, 0x0

    .line 1067
    .local v34, numBackgroundProcesses:I
    const/16 v35, 0x0

    .line 1068
    .local v35, numForegroundProcesses:I
    const/16 v37, 0x0

    .line 1069
    .local v37, numServiceProcesses:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1070
    const/16 v22, 0x0

    :goto_1c
    move/from16 v0, v22

    if-ge v0, v8, :cond_40

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 1072
    .restart local v43       #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    move-object/from16 v0, v43

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mCurSeq:I

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mSequence:I

    move/from16 v57, v0

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_3f

    .line 1075
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v56, v0

    const/16 v57, 0x190

    move/from16 v0, v56

    move/from16 v1, v57

    if-lt v0, v1, :cond_3d

    .line 1077
    add-int/lit8 v34, v34, 0x1

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    :goto_1d
    add-int/lit8 v22, v22, 0x1

    goto :goto_1c

    .line 1059
    .end local v34           #numBackgroundProcesses:I
    .end local v35           #numForegroundProcesses:I
    .end local v37           #numServiceProcesses:I
    .end local v43           #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    .restart local v32       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$BaseItem;>;"
    .restart local v33       #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v53       #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ProcessItem;>;"
    :catchall_0
    move-exception v56

    :try_start_1
    monitor-exit v57
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v56

    .line 1079
    .end local v32           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$BaseItem;>;"
    .end local v33           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .end local v53           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ProcessItem;>;"
    .restart local v34       #numBackgroundProcesses:I
    .restart local v35       #numForegroundProcesses:I
    .restart local v37       #numServiceProcesses:I
    .restart local v43       #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    :cond_3d
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v56, v0

    const/16 v57, 0xc8

    move/from16 v0, v56

    move/from16 v1, v57

    if-gt v0, v1, :cond_3e

    .line 1081
    add-int/lit8 v35, v35, 0x1

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1084
    :cond_3e
    const-string v56, "RunningState"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Unknown non-service process: "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " #"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v43

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1088
    :cond_3f
    add-int/lit8 v37, v37, 0x1

    goto :goto_1d

    .line 1092
    .end local v43           #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    :cond_40
    const-wide/16 v11, 0x0

    .line 1093
    .local v11, backgroundProcessMemory:J
    const-wide/16 v19, 0x0

    .line 1094
    .local v19, foregroundProcessMemory:J
    const-wide/16 v47, 0x0

    .line 1095
    .local v47, serviceProcessMemory:J
    const/16 v28, 0x0

    .line 1097
    .local v28, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 1098
    .local v36, numProc:I
    move/from16 v0, v36

    new-array v0, v0, [I

    move-object/from16 v40, v0

    .line 1099
    .local v40, pids:[I
    const/16 v22, 0x0

    :goto_1e
    move/from16 v0, v22

    move/from16 v1, v36

    if-ge v0, v1, :cond_41

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    move-object/from16 v0, v56

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    move/from16 v56, v0

    aput v56, v40, v22

    .line 1099
    add-int/lit8 v22, v22, 0x1

    goto :goto_1e

    .line 1102
    :cond_41
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v46

    .line 1104
    .local v46, pss:[J
    const/4 v13, 0x0

    .line 1105
    .local v13, bgIndex:I
    const/16 v22, 0x0

    move-object/from16 v29, v28

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .local v29, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    :goto_1f
    :try_start_3
    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v56, v0

    move/from16 v0, v22

    move/from16 v1, v56

    if-ge v0, v1, :cond_48

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 1107
    .restart local v43       #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    aget-wide v56, v46, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mSequence:I

    move/from16 v58, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move-wide/from16 v2, v56

    move/from16 v4, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v56

    or-int v15, v15, v56

    .line 1108
    move-object/from16 v0, v43

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mCurSeq:I

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mSequence:I

    move/from16 v57, v0

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_42

    .line 1109
    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mSize:J

    move-wide/from16 v56, v0

    add-long v47, v47, v56

    move-object/from16 v28, v29

    .line 1105
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    :goto_20
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v29, v28

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    goto :goto_1f

    .line 1110
    :cond_42
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v56, v0

    const/16 v57, 0x190

    move/from16 v0, v56

    move/from16 v1, v57

    if-lt v0, v1, :cond_47

    .line 1112
    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mSize:J

    move-wide/from16 v56, v0

    add-long v11, v11, v56

    .line 1119
    if-eqz v29, :cond_43

    .line 1120
    new-instance v25, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    invoke-direct/range {v25 .. v25}, Lcom/baidu/security/sysop/YiRunningState$MergedItem;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    iput-object v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mMergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 1121
    .restart local v25       #mergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mMergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    move-object/from16 v56, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v56

    iput-object v0, v1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 1122
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v28, v29

    .line 1137
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    :goto_21
    const/16 v56, 0x1

    :try_start_4
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1138
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1139
    add-int/lit8 v13, v13, 0x1

    .line 1140
    goto :goto_20

    .line 1124
    .end local v25           #mergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    :cond_43
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v56

    move/from16 v0, v56

    if-ge v13, v0, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v43

    if-eq v0, v1, :cond_46

    .line 1126
    :cond_44
    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1127
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    const/4 v14, 0x0

    .local v14, bgi:I
    :goto_22
    if-ge v14, v13, :cond_45

    .line 1128
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    move-object/from16 v0, v28

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    add-int/lit8 v14, v14, 0x1

    goto :goto_22

    .line 1130
    :cond_45
    new-instance v25, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    invoke-direct/range {v25 .. v25}, Lcom/baidu/security/sysop/YiRunningState$MergedItem;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    iput-object v0, v1, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mMergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 1131
    .restart local v25       #mergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mMergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    move-object/from16 v56, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v56

    iput-object v0, v1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 1132
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_21

    .line 1145
    .end local v13           #bgIndex:I
    .end local v14           #bgi:I
    .end local v25           #mergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    .end local v36           #numProc:I
    .end local v40           #pids:[I
    .end local v43           #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    .end local v46           #pss:[J
    :catch_0
    move-exception v56

    .line 1148
    :goto_23
    if-nez v28, :cond_49

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v56

    move/from16 v0, v56

    move/from16 v1, v34

    if-le v0, v1, :cond_49

    .line 1151
    new-instance v28, Ljava/util/ArrayList;

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1152
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    const/4 v14, 0x0

    .restart local v14       #bgi:I
    :goto_24
    move/from16 v0, v34

    if-ge v14, v0, :cond_49

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    move-object/from16 v0, v28

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    add-int/lit8 v14, v14, 0x1

    goto :goto_24

    .line 1134
    .end local v14           #bgi:I
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v13       #bgIndex:I
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v36       #numProc:I
    .restart local v40       #pids:[I
    .restart local v43       #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    .restart local v46       #pss:[J
    :cond_46
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .restart local v25       #mergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    goto/16 :goto_21

    .line 1140
    .end local v25           #mergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    :cond_47
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v56, v0

    const/16 v57, 0xc8

    move/from16 v0, v56

    move/from16 v1, v57

    if-gt v0, v1, :cond_4c

    .line 1142
    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mSize:J

    move-wide/from16 v56, v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    add-long v19, v19, v56

    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    goto/16 :goto_20

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .end local v43           #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    :cond_48
    move-object/from16 v28, v29

    .line 1146
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    goto :goto_23

    .line 1158
    .end local v13           #bgIndex:I
    .end local v36           #numProc:I
    .end local v40           #pids:[I
    .end local v46           #pss:[J
    :cond_49
    const/16 v22, 0x0

    :goto_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v56

    move/from16 v0, v22

    move/from16 v1, v56

    if-ge v0, v1, :cond_4a

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    move-object/from16 v0, v56

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1158
    add-int/lit8 v22, v22, 0x1

    goto :goto_25

    .line 1162
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mWhiteListItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-direct {v0, v1, v2}, Lcom/baidu/security/sysop/YiRunningState;->filterMergedItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v31

    .line 1163
    .local v31, newFilteredMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mWhiteListEmptyItems:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/baidu/security/sysop/YiRunningState;->filterMergedItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v30

    .line 1165
    .local v30, newFilteredBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v57, v0

    monitor-enter v57

    .line 1166
    :try_start_8
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/security/sysop/YiRunningState;->mNumBackgroundProcesses:I

    .line 1167
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/security/sysop/YiRunningState;->mNumForegroundProcesses:I

    .line 1168
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/security/sysop/YiRunningState;->mNumServiceProcesses:I

    .line 1169
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/baidu/security/sysop/YiRunningState;->mBackgroundProcessMemory:J

    .line 1170
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/security/sysop/YiRunningState;->mForegroundProcessMemory:J

    .line 1171
    move-wide/from16 v0, v47

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/security/sysop/YiRunningState;->mServiceProcessMemory:J

    .line 1172
    if-eqz v28, :cond_4b

    .line 1173
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/security/sysop/YiRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1174
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/security/sysop/YiRunningState;->mWatchingBackgroundItems:Z

    move/from16 v56, v0

    if-eqz v56, :cond_4b

    .line 1175
    const/4 v15, 0x1

    .line 1179
    :cond_4b
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/security/sysop/YiRunningState;->mFilteredMergedItems:Ljava/util/ArrayList;

    .line 1180
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/security/sysop/YiRunningState;->mFilteredBackgroundItems:Ljava/util/ArrayList;

    .line 1186
    monitor-exit v57

    .line 1188
    return v15

    .line 1186
    :catchall_1
    move-exception v56

    monitor-exit v57
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v56

    .line 1145
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .end local v30           #newFilteredBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .end local v31           #newFilteredMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v13       #bgIndex:I
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v36       #numProc:I
    .restart local v40       #pids:[I
    .restart local v46       #pss:[J
    :catch_1
    move-exception v56

    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    goto/16 :goto_23

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v43       #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    :cond_4c
    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    goto/16 :goto_20
.end method
