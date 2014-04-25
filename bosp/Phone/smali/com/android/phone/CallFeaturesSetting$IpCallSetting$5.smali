.class Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->showIpPrefixListDialogFirstTime(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$firstSet:Z

.field final synthetic val$ipPrefix:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;[Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->val$ipPrefix:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->val$firstSet:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->val$ipPrefix:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    .line 664
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 665
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getAnEditText()Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->access$500(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)Landroid/widget/EditText;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->val$firstSet:Z

    #calls: Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->customIpPrefix(Landroid/content/Context;Landroid/view/View;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->access$600(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;Landroid/content/Context;Landroid/view/View;Z)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    if-eqz v0, :cond_2

    .line 668
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->val$ipPrefix:[Ljava/lang/String;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iget-object v2, v2, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget-wide v2, v2, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimId:J

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->setIpPrefix(Landroid/content/Context;Ljava/lang/String;J)I

    .line 670
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->access$300(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->val$ipPrefix:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 671
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 673
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->val$firstSet:Z

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
