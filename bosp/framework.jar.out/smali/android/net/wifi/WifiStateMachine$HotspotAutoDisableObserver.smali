.class Landroid/net/wifi/WifiStateMachine$HotspotAutoDisableObserver;
.super Landroid/database/ContentObserver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotspotAutoDisableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "handler"

    .prologue
    .line 4285
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    .line 4286
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4287
    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4288
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v1, "wifi_hotspot_auto_disable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4290
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .parameter "selfChange"

    .prologue
    .line 4294
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4295
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_hotspot_auto_disable"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$16802(Landroid/net/wifi/WifiStateMachine;I)I

    .line 4297
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$16800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 4298
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$16700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4299
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$8800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$16900(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4300
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$8800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$16800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x493e0

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$16900(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4305
    :cond_0
    :goto_0
    return-void

    .line 4303
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$8800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$16900(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
