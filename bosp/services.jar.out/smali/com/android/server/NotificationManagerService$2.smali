.class Lcom/android/server/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 358
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, action:Ljava/lang/String;
    const/4 v6, 0x0

    .line 362
    .local v6, queryRestart:Z
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 367
    :cond_0
    const/4 v4, 0x0

    .line 368
    .local v4, pkgList:[Ljava/lang/String;
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 369
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 383
    :goto_0
    if-eqz v4, :cond_3

    array-length v8, v4

    if-lez v8, :cond_3

    .line 384
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v1, v2

    .line 385
    .local v5, pkgName:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    if-nez v6, :cond_5

    move v8, v9

    :goto_2
    invoke-virtual {v11, v5, v10, v10, v8}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 370
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 371
    const-string v8, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 373
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 374
    .local v7, uri:Landroid/net/Uri;
    if-nez v7, :cond_4

    .line 418
    .end local v4           #pkgList:[Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_3
    :goto_3
    return-void

    .line 377
    .restart local v4       #pkgList:[Ljava/lang/String;
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_4
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 378
    .restart local v5       #pkgName:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 381
    new-array v4, v9, [Ljava/lang/String;

    .end local v4           #pkgList:[Ljava/lang/String;
    aput-object v5, v4, v10

    .restart local v4       #pkgList:[Ljava/lang/String;
    goto :goto_0

    .end local v7           #uri:Landroid/net/Uri;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_5
    move v8, v10

    .line 385
    goto :goto_2

    .line 388
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #pkgList:[Ljava/lang/String;
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_6
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 391
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v8, v9}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    goto :goto_3

    .line 392
    :cond_7
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 393
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v8, v10}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 394
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    goto :goto_3

    .line 395
    :cond_8
    const-string v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 396
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    #setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v8, v9}, Lcom/android/server/NotificationManagerService;->access$1302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 398
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    #setter for: Lcom/android/server/NotificationManagerService;->mCallRinging:Z
    invoke-static {v8, v9}, Lcom/android/server/NotificationManagerService;->access$1402(Lcom/android/server/NotificationManagerService;Z)Z

    .line 400
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    goto :goto_3

    .line 401
    :cond_9
    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 403
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 404
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v8, v11}, Lcom/android/server/NotificationManagerService;->access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 405
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_3

    .line 406
    :cond_a
    const-string v8, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 407
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mIPOBootup:Z
    invoke-static {v8, v9}, Lcom/android/server/NotificationManagerService;->access$1602(Lcom/android/server/NotificationManagerService;Z)Z

    .line 408
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 409
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_3

    .line 411
    :cond_b
    const-string v8, "com.android.server.NotificationService.turnoffLight"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 413
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 414
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v8, v11}, Lcom/android/server/NotificationManagerService;->access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 415
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_3
.end method
