.class Landroid/net/wifi/WifiStateMachine$GPRSObserver;
.super Landroid/database/ContentObserver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GPRSObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 4363
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$GPRSObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    .line 4364
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4365
    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4366
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "gprs_connection_sim_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4368
    const-string v1, "gprs_connection_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4370
    const-string/jumbo v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4372
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x1

    .line 4376
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4378
    const/4 v2, -0x1

    .line 4380
    .local v2, slot:I
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$GPRSObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gprs_connection_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 4381
    .local v0, currentDataConnectionMultiSimId:J
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$GPRSObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    .line 4385
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$GPRSObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v3, v4, Landroid/net/wifi/WifiStateMachine;->mIsGPRSDisabled:Z

    .line 4389
    return-void

    .line 4385
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
