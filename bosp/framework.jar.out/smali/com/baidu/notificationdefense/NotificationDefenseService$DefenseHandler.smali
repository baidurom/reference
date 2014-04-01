.class Lcom/baidu/notificationdefense/NotificationDefenseService$DefenseHandler;
.super Landroid/os/Handler;
.source "NotificationDefenseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/notificationdefense/NotificationDefenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefenseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/notificationdefense/NotificationDefenseService;


# direct methods
.method public constructor <init>(Lcom/baidu/notificationdefense/NotificationDefenseService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/baidu/notificationdefense/NotificationDefenseService$DefenseHandler;->this$0:Lcom/baidu/notificationdefense/NotificationDefenseService;

    .line 221
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 222
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 227
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 241
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 231
    .local v1, pkg:Ljava/lang/String;
    const-string/jumbo v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 232
    .local v0, nm:Landroid/app/INotificationManager;
    if-eqz v0, :cond_0

    .line 235
    :try_start_0
    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v2

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
