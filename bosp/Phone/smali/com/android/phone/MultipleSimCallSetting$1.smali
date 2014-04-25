.class Lcom/android/phone/MultipleSimCallSetting$1;
.super Ljava/lang/Object;
.source "MultipleSimCallSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MultipleSimCallSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MultipleSimCallSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MultipleSimCallSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/phone/MultipleSimCallSetting$1;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 492
    if-nez p2, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting$1;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    #getter for: Lcom/android/phone/MultipleSimCallSetting;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/MultipleSimCallSetting;->access$000(Lcom/android/phone/MultipleSimCallSetting;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/telephony/BaiduTelephonyUtils;->setPreferredVoiceSlot(Landroid/content/Context;I)V

    .line 494
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting$1;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    #getter for: Lcom/android/phone/MultipleSimCallSetting;->defaultCard:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/phone/MultipleSimCallSetting;->access$200(Lcom/android/phone/MultipleSimCallSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$1;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    #getter for: Lcom/android/phone/MultipleSimCallSetting;->simCardName:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/MultipleSimCallSetting;->access$100(Lcom/android/phone/MultipleSimCallSetting;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 502
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 503
    return-void

    .line 495
    :cond_0
    if-ne p2, v2, :cond_1

    .line 496
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting$1;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    #getter for: Lcom/android/phone/MultipleSimCallSetting;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/MultipleSimCallSetting;->access$000(Lcom/android/phone/MultipleSimCallSetting;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/telephony/BaiduTelephonyUtils;->setPreferredVoiceSlot(Landroid/content/Context;I)V

    .line 497
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting$1;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    #getter for: Lcom/android/phone/MultipleSimCallSetting;->defaultCard:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/phone/MultipleSimCallSetting;->access$200(Lcom/android/phone/MultipleSimCallSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$1;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    #getter for: Lcom/android/phone/MultipleSimCallSetting;->simCardName:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/MultipleSimCallSetting;->access$100(Lcom/android/phone/MultipleSimCallSetting;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting$1;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    #getter for: Lcom/android/phone/MultipleSimCallSetting;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/MultipleSimCallSetting;->access$000(Lcom/android/phone/MultipleSimCallSetting;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/telephony/BaiduTelephonyUtils;->setPreferredVoiceSlot(Landroid/content/Context;I)V

    .line 500
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting$1;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    #getter for: Lcom/android/phone/MultipleSimCallSetting;->defaultCard:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/phone/MultipleSimCallSetting;->access$200(Lcom/android/phone/MultipleSimCallSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    const v1, 0x7f0b0425

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method
