.class Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->customIpPrefix(Landroid/content/Context;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$needQueryLocation:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;Landroid/view/View;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->val$needQueryLocation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 586
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->val$view:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, customIpPrefix:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iget-object v2, v2, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    if-eqz v2, :cond_0

    .line 589
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iget-object v3, v3, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget-wide v3, v3, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimId:J

    invoke-static {v2, v0, v3, v4}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->setIpCustomPrefix(Landroid/content/Context;Ljava/lang/String;J)I

    .line 591
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 592
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->access$300(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 600
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iget-object v2, v2, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    if-eqz v2, :cond_1

    .line 602
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iget-object v3, v3, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget-wide v3, v3, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimId:J

    invoke-static {v2, v0, v3, v4}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->setIpPrefix(Landroid/content/Context;Ljava/lang/String;J)I

    .line 604
    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->val$needQueryLocation:Z

    if-eqz v2, :cond_2

    .line 605
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iget-object v2, v2, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mHanlder:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 607
    :cond_2
    return-void

    .line 595
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->values:I
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->access$400(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, ipPrefix:[Ljava/lang/String;
    aget-object v0, v1, v5

    .line 597
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->access$300(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;->val$context:Landroid/content/Context;

    const v3, 0x7f0b02e4

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
