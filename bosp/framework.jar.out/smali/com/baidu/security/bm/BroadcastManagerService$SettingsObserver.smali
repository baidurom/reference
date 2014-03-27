.class Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BroadcastManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/security/bm/BroadcastManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSysBlack:Landroid/net/Uri;

.field private mThirdWhite:Landroid/net/Uri;

.field final synthetic this$0:Lcom/baidu/security/bm/BroadcastManagerService;


# direct methods
.method constructor <init>(Lcom/baidu/security/bm/BroadcastManagerService;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->this$0:Lcom/baidu/security/bm/BroadcastManagerService;

    .line 1048
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1044
    sget-object v0, Lcom/baidu/security/bm/AutoLaunchController;->SYS_BLACK_KEY:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->mSysBlack:Landroid/net/Uri;

    .line 1045
    sget-object v0, Lcom/baidu/security/bm/AutoLaunchController;->THIRD_WHITE_KEY:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->mThirdWhite:Landroid/net/Uri;

    .line 1049
    iput-object p3, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->mContext:Landroid/content/Context;

    .line 1050
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1064
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1065
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    .line 1071
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->mSysBlack:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1072
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->this$0:Lcom/baidu/security/bm/BroadcastManagerService;

    #getter for: Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;
    invoke-static {v2}, Lcom/baidu/security/bm/BroadcastManagerService;->access$100(Lcom/baidu/security/bm/BroadcastManagerService;)Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1073
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->this$0:Lcom/baidu/security/bm/BroadcastManagerService;

    #getter for: Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;
    invoke-static {v2}, Lcom/baidu/security/bm/BroadcastManagerService;->access$100(Lcom/baidu/security/bm/BroadcastManagerService;)Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1083
    :goto_0
    return-void

    .line 1074
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->mThirdWhite:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1075
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->this$0:Lcom/baidu/security/bm/BroadcastManagerService;

    #getter for: Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;
    invoke-static {v2}, Lcom/baidu/security/bm/BroadcastManagerService;->access$100(Lcom/baidu/security/bm/BroadcastManagerService;)Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1076
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->this$0:Lcom/baidu/security/bm/BroadcastManagerService;

    #getter for: Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;
    invoke-static {v2}, Lcom/baidu/security/bm/BroadcastManagerService;->access$100(Lcom/baidu/security/bm/BroadcastManagerService;)Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1078
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->this$0:Lcom/baidu/security/bm/BroadcastManagerService;

    #getter for: Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;
    invoke-static {v2}, Lcom/baidu/security/bm/BroadcastManagerService;->access$100(Lcom/baidu/security/bm/BroadcastManagerService;)Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1079
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->this$0:Lcom/baidu/security/bm/BroadcastManagerService;

    #getter for: Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;
    invoke-static {v2}, Lcom/baidu/security/bm/BroadcastManagerService;->access$100(Lcom/baidu/security/bm/BroadcastManagerService;)Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1080
    .local v1, msg2:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->this$0:Lcom/baidu/security/bm/BroadcastManagerService;

    #getter for: Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;
    invoke-static {v2}, Lcom/baidu/security/bm/BroadcastManagerService;->access$100(Lcom/baidu/security/bm/BroadcastManagerService;)Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1081
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->this$0:Lcom/baidu/security/bm/BroadcastManagerService;

    #getter for: Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;
    invoke-static {v2}, Lcom/baidu/security/bm/BroadcastManagerService;->access$100(Lcom/baidu/security/bm/BroadcastManagerService;)Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method startObserving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1053
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1054
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->mSysBlack:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1055
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->mThirdWhite:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1056
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/baidu/security/bm/BroadcastManagerService$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1060
    return-void
.end method
