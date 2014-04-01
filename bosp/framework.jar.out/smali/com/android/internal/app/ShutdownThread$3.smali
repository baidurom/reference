.class final Lcom/android/internal/app/ShutdownThread$3;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 288
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

    .line 290
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 291
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$102(Z)Z

    .line 292
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    invoke-static {v2}, Lcom/android/internal/app/ShutdownThread;->access$402(Z)Z

    .line 294
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$200()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 297
    :cond_0
    return-void

    .line 292
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
