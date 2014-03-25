.class public Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;
.super Ljava/lang/Object;
.source "BaiduKeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager$1;
    }
.end annotation


# static fields
.field public static final BAIDU_KEYGUARD_TYPE_KEY:Ljava/lang/String; = "lockscreen.lockmode_type"

.field public static final LOCK_ACCOUNT:I = 0x7

.field public static final LOCK_BIOMETRIC:I = 0x6

.field public static final LOCK_HOTWORD:I = 0x0

.field public static final LOCK_MULTITHEME:I = 0x2

.field public static final LOCK_PASSWORD:I = 0x5

.field public static final LOCK_PATTERN:I = 0x3

.field public static final LOCK_PIN:I = 0x4

.field public static final LOCK_SIMPIN:I = 0x8

.field public static final LOCK_SIMPUK:I = 0x9

.field public static final LOCK_SLIDE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method public static createBaiduLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Landroid/view/View;
    .locals 10
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "securityMode"

    .prologue
    const v9, #dimen@status_bar_height#t

    const/4 v8, 0x0

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, view:Landroid/view/View;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager$1;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move-object v1, v0

    .line 157
    :goto_1
    return-object v1

    .line 67
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_1

    .line 69
    :pswitch_2
    invoke-static {p0, p3}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->getLockMode(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)I

    move-result v7

    .line 70
    .local v7, mode:I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    new-instance v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    .end local v0           #view:Landroid/view/View;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 73
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 74
    :cond_1
    if-nez v7, :cond_2

    .line 75
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {v0, p0, p4, p2}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 76
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 77
    :cond_2
    const/4 v1, 0x1

    if-ne v1, v7, :cond_0

    .line 78
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    .end local v0           #view:Landroid/view/View;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 80
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 84
    .end local v7           #mode:I
    :pswitch_3
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    .end local v0           #view:Landroid/view/View;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;I)V

    .line 87
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 92
    :pswitch_4
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/AccountUnlockScreen;

    .end local v0           #view:Landroid/view/View;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/AccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 94
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 100
    :pswitch_5
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    .end local v0           #view:Landroid/view/View;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 102
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public static getLockMode(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)I
    .locals 7
    .parameter "context"
    .parameter "updateMonitor"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->ismMultithemLockscreen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    const/4 v1, 0x2

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen.lockmode_type"

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v0, v3

    .line 53
    .local v0, mode:I
    if-eqz v0, :cond_0

    .line 55
    if-ne v2, v0, :cond_0

    move v1, v2

    .line 56
    goto :goto_0
.end method
