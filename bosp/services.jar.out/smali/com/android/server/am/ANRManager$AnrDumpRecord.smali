.class public Lcom/android/server/am/ANRManager$AnrDumpRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnrDumpRecord"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/server/am/ANRManager;

.field protected mActivity:Lcom/android/server/am/ActivityRecord;

.field protected mAnnotation:Ljava/lang/String;

.field protected mAnrTime:J

.field protected mApp:Lcom/android/server/am/ProcessRecord;

.field protected mCpuInfo:Ljava/lang/String;

.field protected mInfo:Ljava/lang/StringBuilder;

.field protected mIsCancelled:Z

.field protected mIsCompleted:Z

.field protected mParent:Lcom/android/server/am/ActivityRecord;


# direct methods
.method protected constructor <init>(Lcom/android/server/am/ANRManager;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->a:Lcom/android/server/am/ANRManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mInfo:Ljava/lang/StringBuilder;

    .line 629
    iput-object p2, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 630
    iput-object p3, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mActivity:Lcom/android/server/am/ActivityRecord;

    .line 631
    iput-object p4, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mParent:Lcom/android/server/am/ActivityRecord;

    .line 632
    iput-object p5, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mAnnotation:Ljava/lang/String;

    .line 633
    iput-wide p6, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mAnrTime:J

    .line 634
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mIsCancelled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mIsCompleted:Z

    if-eqz v0, :cond_1

    .line 638
    :cond_0
    const/4 v0, 0x0

    .line 640
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    const-string v1, "AnrDumpRecord{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " IsCompleted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mIsCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " IsCancelled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mIsCancelled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
