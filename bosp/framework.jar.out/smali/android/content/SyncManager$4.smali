.class Landroid/content/SyncManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-virtual {v0}, Landroid/content/SyncManager;->updateRunningAccounts()V

    .line 216
    iget-object v0, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    const/4 v2, -0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    move-object v4, v1

    invoke-virtual/range {v0 .. v7}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JZ)V

    .line 217
    return-void
.end method
