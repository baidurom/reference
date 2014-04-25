.class public Lcom/baidu/phone/BaiduPhoneUtils;
.super Ljava/lang/Object;
.source "BaiduPhoneUtils.java"


# static fields
.field public static final REJECT_SMS_KEY:Ljava/lang/String; = "RejectSmsEnable"

.field private static mIsIpCall:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowInCallRecord(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method static getIpCallPrefix(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "ipprefix"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isIpCall()Z
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/baidu/phone/BaiduPhoneUtils;->mIsIpCall:Z

    return v0
.end method

.method static isIpCallEnabled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, enable:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "ipenabled"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 55
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static processIpCall(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "intent"
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string v2, "ip_call"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.phone.extra.ip"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 29
    .local v1, isIpCall:Z
    :cond_1
    if-nez v1, :cond_2

    .line 30
    invoke-static {p1}, Lcom/baidu/phone/BaiduPhoneUtils;->getIpCallPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, ipPrefix:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 35
    .end local v0           #ipPrefix:Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lcom/baidu/phone/BaiduPhoneUtils;->setIpCall(Z)V

    .line 36
    return-void
.end method

.method public static processPhoneNumber(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "orignalNumber"

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/phone/BaiduPhoneUtils;->isIpCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p0, p2}, Lcom/baidu/phone/BaiduPhoneUtils;->stripIpPrefixForMO(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 42
    .end local p2
    :cond_0
    return-object p2
.end method

.method public static setIpCall(Z)V
    .locals 0
    .parameter "ipcall"

    .prologue
    .line 20
    sput-boolean p0, Lcom/baidu/phone/BaiduPhoneUtils;->mIsIpCall:Z

    .line 21
    return-void
.end method

.method static stripIpPrefixForMO(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    .line 64
    invoke-static {p0}, Lcom/baidu/phone/BaiduPhoneUtils;->isIpCallEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    invoke-static {p0}, Lcom/baidu/phone/BaiduPhoneUtils;->getIpCallPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, prefix:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 74
    .end local v2           #prefix:Ljava/lang/String;
    .end local p1
    .local v1, number:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 69
    .end local v1           #number:Ljava/lang/String;
    .restart local v2       #prefix:Ljava/lang/String;
    .restart local p1
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, index:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .end local v0           #index:I
    .end local v2           #prefix:Ljava/lang/String;
    :cond_1
    move-object v1, p1

    .line 74
    .end local p1
    .restart local v1       #number:Ljava/lang/String;
    goto :goto_0
.end method
