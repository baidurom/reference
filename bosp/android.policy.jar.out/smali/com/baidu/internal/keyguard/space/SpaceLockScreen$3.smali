.class Lcom/baidu/internal/keyguard/space/SpaceLockScreen$3;
.super Landroid/database/ContentObserver;
.source "SpaceLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/space/SpaceLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/space/SpaceLockScreen;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$3;->this$0:Lcom/baidu/internal/keyguard/space/SpaceLockScreen;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 146
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$3;->this$0:Lcom/baidu/internal/keyguard/space/SpaceLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->access$000(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SpaceLockScreen"

    const-string v3, "Send ACTION_CALL_MISS_UPDATED fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
