.class final Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayBlankerImpl"
.end annotation


# instance fields
.field private mBlanked:Z

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2576
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2576
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public blankAllDisplays()V
    .locals 1

    .prologue
    .line 2581
    monitor-enter p0

    .line 2582
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    .line 2583
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->blankAllDisplaysFromPowerManager()V

    .line 2584
    const/4 v0, 0x0

    #calls: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2800(Z)V

    .line 2585
    const/4 v0, 0x1

    #calls: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2900(Z)V

    .line 2586
    monitor-exit p0

    .line 2587
    return-void

    .line 2586
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2601
    monitor-enter p0

    .line 2602
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blanked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2603
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unblankAllDisplays()V
    .locals 1

    .prologue
    .line 2591
    monitor-enter p0

    .line 2592
    const/4 v0, 0x0

    :try_start_0
    #calls: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2900(Z)V

    .line 2593
    const/4 v0, 0x1

    #calls: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2800(Z)V

    .line 2594
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->unblankAllDisplaysFromPowerManager()V

    .line 2595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    .line 2596
    monitor-exit p0

    .line 2597
    return-void

    .line 2596
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
