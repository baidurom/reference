.class Lcom/android/server/WifiService$ConnectTypeObserver;
.super Landroid/database/ContentObserver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectTypeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 2006
    iput-object p1, p0, Lcom/android/server/WifiService$ConnectTypeObserver;->this$0:Lcom/android/server/WifiService;

    .line 2007
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2008
    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2009
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_ap_connect_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2011
    const-string v1, "wifi_connect_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2013
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x0

    .line 2017
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2018
    iget-object v2, p0, Lcom/android/server/WifiService$ConnectTypeObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_connect_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2020
    .local v1, connectType:I
    iget-object v2, p0, Lcom/android/server/WifiService$ConnectTypeObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_connect_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2022
    .local v0, cellToWlan:I
    iget-object v2, p0, Lcom/android/server/WifiService$ConnectTypeObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mCellToWiFiPolicy:I
    invoke-static {v2}, Lcom/android/server/WifiService;->access$4300(Lcom/android/server/WifiService;)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/WifiService$ConnectTypeObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mCellToWiFiPolicy:I
    invoke-static {v2}, Lcom/android/server/WifiService;->access$4300(Lcom/android/server/WifiService;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/WifiService$ConnectTypeObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mConnectPolicy:I
    invoke-static {v2}, Lcom/android/server/WifiService;->access$4400(Lcom/android/server/WifiService;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 2023
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService$ConnectTypeObserver;->this$0:Lcom/android/server/WifiService;

    const-wide/16 v3, 0x0

    #setter for: Lcom/android/server/WifiService;->mSuspendNotificationTime:J
    invoke-static {v2, v3, v4}, Lcom/android/server/WifiService;->access$4502(Lcom/android/server/WifiService;J)J

    .line 2025
    :cond_1
    iget-object v2, p0, Lcom/android/server/WifiService$ConnectTypeObserver;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mConnectPolicy:I
    invoke-static {v2, v1}, Lcom/android/server/WifiService;->access$4402(Lcom/android/server/WifiService;I)I

    .line 2026
    iget-object v2, p0, Lcom/android/server/WifiService$ConnectTypeObserver;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mCellToWiFiPolicy:I
    invoke-static {v2, v0}, Lcom/android/server/WifiService;->access$4302(Lcom/android/server/WifiService;I)I

    .line 2027
    iget-object v2, p0, Lcom/android/server/WifiService$ConnectTypeObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2028
    iget-object v2, p0, Lcom/android/server/WifiService$ConnectTypeObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiService$ConnectTypeObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService$ConnectTypeObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mConnectPolicy:I
    invoke-static {v4}, Lcom/android/server/WifiService;->access$4400(Lcom/android/server/WifiService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/WifiService$ConnectTypeObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mCellToWiFiPolicy:I
    invoke-static {v5}, Lcom/android/server/WifiService;->access$4300(Lcom/android/server/WifiService;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;->syncSetConnectPolicy(Lcom/android/internal/util/AsyncChannel;II)Z

    .line 2032
    :goto_0
    return-void

    .line 2030
    :cond_2
    const-string v2, "WifiService"

    const-string v3, "mWifiStateMachineChannel is not initialized"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/SXlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
