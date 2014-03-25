.class Lcom/android/server/display/WifiDisplayAdapter$6$1;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter$6;->onDisplayDisconnecting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayAdapter$6;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter$6;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$6$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, #string@wifi_display_notification_title#t

    const/4 v8, 0x1

    .line 594
    const/4 v1, 0x0

    .line 595
    .local v1, counter:I
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$6$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$6;

    iget-object v5, v5, Lcom/android/server/display/WifiDisplayAdapter$6;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v5}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 596
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 597
    .local v4, r:Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 599
    .local v2, iSmallIcon:I
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$6$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$6;

    iget-object v5, v5, Lcom/android/server/display/WifiDisplayAdapter$6;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mInDisconnectingThread:Z
    invoke-static {v5, v8}, Lcom/android/server/display/WifiDisplayAdapter;->access$1502(Lcom/android/server/display/WifiDisplayAdapter;Z)Z

    .line 602
    :goto_0
    const/16 v5, 0x1e

    if-le v5, v1, :cond_1

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$6$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$6;

    iget-object v5, v5, Lcom/android/server/display/WifiDisplayAdapter$6;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 603
    const-string v5, "WifiDisplayAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WfdDisConnThread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-int/lit16 v7, v1, 0x14d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    rem-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_0

    .line 606
    const v2, 0x202007a

    .line 610
    :goto_1
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 615
    .local v3, notification:Landroid/app/Notification;
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$6$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$6;

    iget-object v5, v5, Lcom/android/server/display/WifiDisplayAdapter$6;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayAdapter;->access$1600(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/app/NotificationManager;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v10, v9, v3, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 619
    const-wide/16 v5, 0x14d

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 620
    add-int/lit8 v1, v1, 0x1

    .line 622
    goto :goto_0

    .line 608
    .end local v3           #notification:Landroid/app/Notification;
    :cond_0
    const v2, #drawable@ic_notify_wifidisplay#t

    goto :goto_1

    .line 624
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$6$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$6;

    iget-object v5, v5, Lcom/android/server/display/WifiDisplayAdapter$6;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayAdapter;->access$1600(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/app/NotificationManager;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v10, v9, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 631
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$6$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$6;

    iget-object v5, v5, Lcom/android/server/display/WifiDisplayAdapter$6;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mInDisconnectingThread:Z
    invoke-static {v5, v6}, Lcom/android/server/display/WifiDisplayAdapter;->access$1502(Lcom/android/server/display/WifiDisplayAdapter;Z)Z

    .line 633
    return-void
.end method
