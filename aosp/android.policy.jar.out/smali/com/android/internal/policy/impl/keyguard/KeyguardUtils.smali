.class public Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;
.super Ljava/lang/Object;
.source "KeyguardUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxSimId()I
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 69
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v1, v0, :cond_1

    .line 71
    const/4 v0, 0x2

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNavBarHeight(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #bool@config_showNavigationBar#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 102
    .local v0, hasNavBar:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #dimen@navigation_bar_height#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 105
    .local v1, navBarHeight:I
    :goto_0
    return v1

    .line 102
    .end local v1           #navBarHeight:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getNumOfSim()I
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #dimen@status_bar_height#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static final isGemini()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public static final isMediatekGemini3GSwitchSupport()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public static final isMediatekLCASupport()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public static final isMediatekVT3G324MSupport()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public static final isTablet()Z
    .locals 2

    .prologue
    .line 64
    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isTransparentBarSupport()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public static isValidSimId(I)Z
    .locals 1
    .parameter "mSimId"

    .prologue
    .line 91
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getMaxSimId()I

    move-result v0

    if-gt p0, v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldEnableScreenRotation(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "lockscreen.rot_override"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #bool@config_enableLockScreenRotation#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final xlogD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logs"

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public static final xlogE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logs"

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public static final xlogI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logs"

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public static final xlogW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logs"

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method
