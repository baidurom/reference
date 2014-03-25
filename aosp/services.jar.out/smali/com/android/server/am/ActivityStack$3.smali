.class Lcom/android/server/am/ActivityStack$3;
.super Ljava/lang/Object;
.source "ActivityStack.java"

# interfaces
.implements Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStack;->convertLaunchRecord(Lcom/android/server/am/ActivityRecord;)Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;

.field final synthetic val$actRec:Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 925
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iput-object p2, p0, Lcom/android/server/am/ActivityStack$3;->val$actRec:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->val$actRec:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLaunchedProcess()Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack$3;->val$actRec:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->convertProcessRecord(Lcom/android/server/am/ProcessRecord;)Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method public getRecords()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 945
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;>;"
    iget-object v5, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v5, v5, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v6

    .line 947
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v5, v5, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 948
    .local v4, size:I
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LTK] mService.mPidsSelfLocked size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 950
    iget-object v5, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v5, v5, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 951
    .local v3, proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_0

    iget-boolean v5, v3, Lcom/android/server/am/ProcessRecord;->killedBackground:Z

    if-eqz v5, :cond_1

    .line 949
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 952
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityStack;->convertProcessRecord(Lcom/android/server/am/ProcessRecord;)Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;

    move-result-object v2

    .line 953
    .local v2, newRec:Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;
    if-eqz v2, :cond_0

    .line 954
    iget-boolean v5, v3, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v5, :cond_0

    .line 955
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 957
    .end local v0           #i:I
    .end local v2           #newRec:Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;
    .end local v3           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #i:I
    .restart local v4       #size:I
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 958
    return-object v1
.end method

.method public getWaitProcess()Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->val$actRec:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_0

    .line 940
    const/4 v0, 0x0

    .line 941
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack$3;->val$actRec:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->convertProcessRecord(Lcom/android/server/am/ProcessRecord;)Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;

    move-result-object v0

    goto :goto_0
.end method

.method public isLaunchingHomeActivity()Z
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$3;->val$actRec:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    return v0
.end method
