.class Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting$IpCallSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 2170
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 2175
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 2197
    :cond_0
    :goto_0
    return-void

    .line 2177
    :pswitch_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 2178
    .local v3, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 2179
    .local v2, phoneNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2180
    .local v1, location:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2182
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    invoke-static {v4, v2, v5, v5}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->getPhoneLocation(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 2184
    if-eqz v1, :cond_1

    .line 2185
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    invoke-virtual {v4}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ip_call_self_location"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2186
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->access$600(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2190
    :cond_1
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v1, :cond_0

    .line 2193
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    const-class v5, Lcom/android/phone/QueryLocation;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2194
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    invoke-virtual {v4, v0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
