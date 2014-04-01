.class Lcom/mediatek/audioprofile/AudioProfileService$5;
.super Landroid/content/BroadcastReceiver;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 416
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, action:Ljava/lang/String;
    const-string v7, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mUpgradeReceiver>>> update profile: action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v2

    .line 419
    .local v2, defaultRingtoneUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v1

    .line 420
    .local v1, defaultNotificationUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v3

    .line 422
    .local v3, defaultVideoCallUri:Landroid/net/Uri;
    const-string v7, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 423
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->access$700(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 424
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;
    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 425
    .local v5, profileKey:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->access$700(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 427
    .local v6, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v7, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-nez v7, :cond_1

    .line 428
    iput-object v2, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 431
    :cond_1
    iget-object v7, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-nez v7, :cond_2

    .line 432
    iput-object v1, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 435
    :cond_2
    iget-object v7, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    if-nez v7, :cond_0

    .line 436
    iput-object v3, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    goto :goto_0

    .line 439
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #profileKey:Ljava/lang/String;
    .end local v6           #profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1500(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v8}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1400(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/BroadcastReceiver;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 442
    const-string v7, "AudioProfileService"

    const-string/jumbo v8, "mUpgradeReceiver<<< unregister receiver!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void
.end method
