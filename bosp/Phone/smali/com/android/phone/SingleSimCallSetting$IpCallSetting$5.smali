.class Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;
.super Ljava/lang/Object;
.source "SingleSimCallSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->showIpPrefixListDialogFirstTime(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SingleSimCallSetting$IpCallSetting;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$firstSet:Z

.field final synthetic val$ipPrefix:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/SingleSimCallSetting$IpCallSetting;[Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;->this$0:Lcom/android/phone/SingleSimCallSetting$IpCallSetting;

    iput-object p2, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;->val$ipPrefix:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;->val$firstSet:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 615
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;->val$ipPrefix:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    .line 617
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 618
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;->this$0:Lcom/android/phone/SingleSimCallSetting$IpCallSetting;

    iget-object v1, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;->this$0:Lcom/android/phone/SingleSimCallSetting$IpCallSetting;

    #calls: Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getAnEditText()Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->access$400(Lcom/android/phone/SingleSimCallSetting$IpCallSetting;)Landroid/widget/EditText;

    move-result-object v2

    #calls: Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->customIpPrefix(Landroid/content/Context;Landroid/view/View;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->access$500(Lcom/android/phone/SingleSimCallSetting$IpCallSetting;Landroid/content/Context;Landroid/view/View;Z)V

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ipprefix"

    iget-object v2, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;->val$ipPrefix:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 622
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;->this$0:Lcom/android/phone/SingleSimCallSetting$IpCallSetting;

    #getter for: Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->access$200(Lcom/android/phone/SingleSimCallSetting$IpCallSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;->val$ipPrefix:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 623
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 625
    iget-boolean v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;->val$firstSet:Z

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;->this$0:Lcom/android/phone/SingleSimCallSetting$IpCallSetting;

    iget-object v0, v0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mHanlder:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
