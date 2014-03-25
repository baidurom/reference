.class public Lcom/android/server/am/ANRManager$DumpThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DumpThread"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/server/am/ANRManager;

.field private b:[I

.field private c:Ljava/lang/String;

.field protected mResult:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ANRManager;[ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, Lcom/android/server/am/ANRManager$DumpThread;->a:Lcom/android/server/am/ANRManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ANRManager$DumpThread;->mResult:Z

    .line 699
    iput-object p2, p0, Lcom/android/server/am/ANRManager$DumpThread;->b:[I

    .line 700
    iput-object p3, p0, Lcom/android/server/am/ANRManager$DumpThread;->c:Ljava/lang/String;

    .line 701
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 704
    iget-object v1, p0, Lcom/android/server/am/ANRManager$DumpThread;->b:[I

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, v1, v0

    .line 707
    iget-object v4, p0, Lcom/android/server/am/ANRManager$DumpThread;->a:Lcom/android/server/am/ANRManager;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ANRManager;->IsProcDoCoredump(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 709
    iget-object v4, p0, Lcom/android/server/am/ANRManager$DumpThread;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/Debug;->dumpNativeBacktraceToFile(ILjava/lang/String;)V

    .line 710
    const-string v4, "ANRManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DumpNative]DumpThread native process ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 714
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ANRManager$DumpThread;->mResult:Z

    .line 715
    return-void
.end method
