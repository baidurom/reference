.class Lcom/android/server/am/ActivityManagerService$18;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->stopUserLocked(ILandroid/app/IStopUserCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$callback:Landroid/app/IStopUserCallback;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/app/IStopUserCallback;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14464
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$18;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$18;->val$callback:Landroid/app/IStopUserCallback;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$18;->val$userId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 14468
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$18;->val$callback:Landroid/app/IStopUserCallback;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$18;->val$userId:I

    invoke-interface {v0, v1}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14471
    :goto_0
    return-void

    .line 14469
    :catch_0
    move-exception v0

    goto :goto_0
.end method
