.class Landroid/content/SyncManager$9;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/RegisteredServicesCacheListener",
        "<",
        "Landroid/content/SyncAdapterType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Landroid/content/SyncManager$9;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceChanged(Landroid/content/SyncAdapterType;IZ)V
    .locals 8
    .parameter "type"
    .parameter "userId"
    .parameter "removed"

    .prologue
    const/4 v1, 0x0

    .line 371
    if-nez p3, :cond_0

    .line 372
    iget-object v0, p0, Landroid/content/SyncManager$9;->this$0:Landroid/content/SyncManager;

    const/4 v2, -0x1

    iget-object v3, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v1

    invoke-virtual/range {v0 .. v7}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JZ)V

    .line 375
    :cond_0
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 368
    check-cast p1, Landroid/content/SyncAdapterType;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/SyncManager$9;->onServiceChanged(Landroid/content/SyncAdapterType;IZ)V

    return-void
.end method
