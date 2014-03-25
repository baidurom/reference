.class Lcom/android/server/am/AppErrorDialog$2;
.super Ljava/lang/Object;
.source "AppErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    #getter for: Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->access$100(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    #getter for: Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->access$200(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    #getter for: Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->access$200(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    if-ne v0, v2, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    #getter for: Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->access$200(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 186
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    #getter for: Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->access$300(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    #getter for: Lcom/android/server/am/AppErrorDialog;->mResultType:I
    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 188
    return-void

    .line 186
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
