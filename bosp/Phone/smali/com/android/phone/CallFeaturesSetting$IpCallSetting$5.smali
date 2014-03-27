.class Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->showIpPrefixListDialogFirstTime(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ipPrefix:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2419
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->val$ipPrefix:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 2424
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->val$ipPrefix:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2426
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2427
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getAnEditText()Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->access$900(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)Landroid/widget/EditText;

    move-result-object v2

    #calls: Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->customIpPrefix(Landroid/content/Context;Landroid/view/View;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->access$1000(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;Landroid/content/Context;Landroid/view/View;Z)V

    .line 2436
    :goto_0
    return-void

    .line 2429
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ip_call_prefix"

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->val$ipPrefix:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2431
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->access$700(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->val$ipPrefix:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2432
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2434
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting$IpCallSetting;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mHanlder:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
