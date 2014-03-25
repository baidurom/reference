.class Lcom/android/server/am/ActivityStack$2;
.super Ljava/lang/Object;
.source "ActivityStack.java"

# interfaces
.implements Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStack;->convertProcessRecord(Lcom/android/server/am/ProcessRecord;)Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;

.field final synthetic val$pr:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 894
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$2;->this$0:Lcom/android/server/am/ActivityStack;

    iput-object p2, p0, Lcom/android/server/am/ActivityStack$2;->val$pr:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdj()I
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$2;->val$pr:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$2;->val$pr:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPause3DUsage()J
    .locals 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$2;->val$pr:Lcom/android/server/am/ProcessRecord;

    iget-wide v0, v0, Lcom/android/server/am/ProcessRecord;->pause3DUsage:J

    return-wide v0
.end method

.method public getPauseAppMemUsage()J
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$2;->val$pr:Lcom/android/server/am/ProcessRecord;

    iget-wide v0, v0, Lcom/android/server/am/ProcessRecord;->pauseAppMemUsage:J

    return-wide v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$2;->val$pr:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    return v0
.end method

.method public isLowMemory()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x40

    .line 909
    const-string v1, "isLowMemory"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 910
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 911
    .local v0, outInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack$2;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 912
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 913
    iget-boolean v1, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    return v1
.end method

.method public setKilledLTK(Z)I
    .locals 1
    .parameter "kill"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$2;->val$pr:Lcom/android/server/am/ProcessRecord;

    iput-boolean p1, v0, Lcom/android/server/am/ProcessRecord;->killedLTK:Z

    .line 906
    const/4 v0, 0x0

    return v0
.end method
