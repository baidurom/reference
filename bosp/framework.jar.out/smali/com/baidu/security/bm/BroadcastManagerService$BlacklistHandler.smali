.class Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;
.super Landroid/os/Handler;
.source "BroadcastManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/security/bm/BroadcastManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlacklistHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/security/bm/BroadcastManagerService;


# direct methods
.method constructor <init>(Lcom/baidu/security/bm/BroadcastManagerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->this$0:Lcom/baidu/security/bm/BroadcastManagerService;

    .line 110
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 111
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 114
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 122
    .local v0, newPartApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    invoke-static {v0}, Lcom/baidu/security/bm/AutoLaunchController;->updateBlackList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 131
    .end local v0           #newPartApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 132
    .local v2, packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/baidu/security/bm/SilentAppsController;->addCleanedApps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 136
    .end local v2           #packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, packageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/security/bm/SilentAppsController;->removeCleanedApp(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    .end local v1           #packageName:Ljava/lang/String;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 142
    .restart local v2       #packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/baidu/security/bm/LockedAppsController;->addLockedApps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 146
    .end local v2           #packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 147
    .restart local v2       #packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/baidu/security/bm/LockedAppsController;->removeLockedApps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 151
    .end local v2           #packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_5
    iget-object v3, p0, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->this$0:Lcom/baidu/security/bm/BroadcastManagerService;

    #getter for: Lcom/baidu/security/bm/BroadcastManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/baidu/security/bm/BroadcastManagerService;->access$000(Lcom/baidu/security/bm/BroadcastManagerService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/baidu/security/bm/AutoLaunchController;->updateAppBlackAndWhiteList(Landroid/content/Context;Z)V

    goto :goto_0

    .line 155
    :pswitch_6
    iget-object v3, p0, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->this$0:Lcom/baidu/security/bm/BroadcastManagerService;

    #getter for: Lcom/baidu/security/bm/BroadcastManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/baidu/security/bm/BroadcastManagerService;->access$000(Lcom/baidu/security/bm/BroadcastManagerService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/baidu/security/bm/AutoLaunchController;->updateAppBlackAndWhiteList(Landroid/content/Context;Z)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
