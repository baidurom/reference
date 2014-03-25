.class Lcom/android/server/location/GpsLocationProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 383
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 386
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "GpsLocationProvider"

    const-string v6, "ALARM_WAKEUP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->startNavigating()V
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)V

    .line 432
    :cond_1
    :goto_0
    return-void

    .line 388
    :cond_2
    const-string v7, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 389
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "GpsLocationProvider"

    const-string v6, "ALARM_TIMEOUT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_3
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->hibernate()V
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 391
    :cond_4
    const-string v7, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 392
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/android/server/location/GpsLocationProvider;->access$400(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    .line 393
    :cond_5
    const-string v7, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 394
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    .line 395
    :cond_6
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 397
    const-string v5, "noConnectivity"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 398
    const/4 v3, 0x1

    .line 404
    .local v3, networkState:I
    :goto_1
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 406
    .local v2, info:Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 408
    .local v1, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 410
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/location/GpsLocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V

    goto :goto_0

    .line 400
    .end local v1           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v3           #networkState:I
    :cond_7
    const/4 v3, 0x2

    .restart local v3       #networkState:I
    goto :goto_1

    .line 413
    .end local v3           #networkState:I
    :cond_8
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 414
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "GpsLocationProvider"

    const-string v8, "ACTION_SCREEN_ON"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_9
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mScreenIsOn:Z
    invoke-static {v7, v5}, Lcom/android/server/location/GpsLocationProvider;->access$702(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 416
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mLongSleeped:Z
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 417
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$900(Lcom/android/server/location/GpsLocationProvider;)V

    .line 418
    :cond_a
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mLongSleeped:Z
    invoke-static {v5, v6}, Lcom/android/server/location/GpsLocationProvider;->access$802(Lcom/android/server/location/GpsLocationProvider;Z)Z

    goto/16 :goto_0

    .line 419
    :cond_b
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 420
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "GpsLocationProvider"

    const-string v7, "ACTION_SCREEN_OFF"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_c
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mScreenIsOn:Z
    invoke-static {v5, v6}, Lcom/android/server/location/GpsLocationProvider;->access$702(Lcom/android/server/location/GpsLocationProvider;Z)Z

    goto/16 :goto_0

    .line 422
    :cond_d
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 423
    const-string v7, "status"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 424
    .local v4, status:I
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_BATTERY_CHANGED status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_e
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v8, 0x2

    if-ne v4, v8, :cond_f

    :goto_2
    iput-boolean v5, v7, Lcom/android/server/location/GpsLocationProvider;->mChargerConnected:Z

    goto/16 :goto_0

    :cond_f
    move v5, v6

    goto :goto_2

    .line 426
    .end local v4           #status:I
    :cond_10
    const-string v5, "com.android.internal.location.ALARM_NEXT_WAKEUP_TIMEOUT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 427
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "GpsLocationProvider"

    const-string v7, "ALARM_LONGSLEEP_WAKEUP_TIMEOUT"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_11
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mLongSleeped:Z
    invoke-static {v5, v6}, Lcom/android/server/location/GpsLocationProvider;->access$802(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 429
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$900(Lcom/android/server/location/GpsLocationProvider;)V

    goto/16 :goto_0
.end method
