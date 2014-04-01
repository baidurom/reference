.class Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MmsContent;
.super Landroid/database/ContentObserver;
.source "HotwordLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmsContent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;


# direct methods
.method public constructor <init>(Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MmsContent;->this$0:Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;

    .line 232
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 233
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 237
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.keyguard.internal.SMS_UNREAD_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MmsContent;->this$0:Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;->access$000(Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HotwordKeyguardView"

    const-string v3, "Send ACTION_SMS_UNREAD_UPDATED fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
