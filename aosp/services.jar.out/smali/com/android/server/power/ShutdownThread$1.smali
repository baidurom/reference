.class final Lcom/android/server/power/ShutdownThread$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 261
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$102(Z)Z

    .line 262
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 269
    :cond_0
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->access$302(Z)Z

    .line 271
    return-void

    .line 262
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
