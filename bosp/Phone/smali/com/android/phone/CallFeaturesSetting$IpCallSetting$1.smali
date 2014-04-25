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
    .line 350
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 355
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 357
    :pswitch_0
    invoke-static {}, Landroid/telephony/BaiduTelephonyManager;->getDefault()Landroid/telephony/BaiduTelephonyManager;

    move-result-object v3

    .line 358
    .local v3, telMgr:Landroid/telephony/BaiduTelephonyManager;
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/BaiduTelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, phoneNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 360
    .local v1, location:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 362
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    invoke-static {v4, v2, v5, v5}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->getPhoneLocation(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_1

    .line 365
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->access$100(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iget-object v4, v4, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    if-eqz v4, :cond_1

    .line 367
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iget-object v5, v5, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget-wide v5, v5, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimId:J

    invoke-static {v4, v1, v5, v6}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->setIpSelfLocation(Landroid/content/Context;Ljava/lang/String;J)I

    goto :goto_0

    .line 372
    :cond_1
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v1, :cond_0

    .line 375
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    const-class v5, Lcom/android/phone/QueryLocation;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "localSimId"

    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    invoke-virtual {v4, v0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
