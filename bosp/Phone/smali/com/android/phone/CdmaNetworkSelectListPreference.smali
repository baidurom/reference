.class public Lcom/android/phone/CdmaNetworkSelectListPreference;
.super Landroid/preference/ListPreference;
.source "CdmaNetworkSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaNetworkSelectListPreference$1;,
        Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CdmaNetworkSelectListPreference"


# instance fields
.field private final CDMA_EvDo:Ljava/lang/String;

.field private final ONLY_CDMA:Ljava/lang/String;

.field private final ONLY_EvDo:Ljava/lang/String;

.field private mHandler:Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaNetworkSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const-string v0, "CDMA/EvDo"

    iput-object v0, p0, Lcom/android/phone/CdmaNetworkSelectListPreference;->CDMA_EvDo:Ljava/lang/String;

    .line 39
    const-string v0, "CDMA only"

    iput-object v0, p0, Lcom/android/phone/CdmaNetworkSelectListPreference;->ONLY_CDMA:Ljava/lang/String;

    .line 40
    const-string v0, "EvDo only"

    iput-object v0, p0, Lcom/android/phone/CdmaNetworkSelectListPreference;->ONLY_EvDo:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaNetworkSelectListPreference;Lcom/android/phone/CdmaNetworkSelectListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaNetworkSelectListPreference;->mHandler:Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;

    .line 48
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaNetworkSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 49
    new-instance v0, Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaNetworkSelectListPreference;Lcom/android/phone/CdmaNetworkSelectListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaNetworkSelectListPreference;->mHandler:Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;

    .line 52
    iget-object v0, p0, Lcom/android/phone/CdmaNetworkSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaNetworkSelectListPreference;->mHandler:Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaNetworkSelectListPreference;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaNetworkSelectListPreference;->setNetworkTypeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaNetworkSelectListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/CdmaNetworkSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private setNetworkTypeSettingValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/phone/CdmaNetworkSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/phone/CdmaNetworkSelectListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaNetworkSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method private update()V
    .locals 5

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/phone/CdmaNetworkSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SelectedNetworkType"

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, netWorkType:I
    const-string v1, "CDMA/EvDo"

    .line 156
    .local v1, networkTypeSetting:Ljava/lang/String;
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 157
    const-string v1, "CDMA only"

    .line 161
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaNetworkSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/phone/CdmaNetworkSelectListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaNetworkSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    return-void

    .line 158
    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 159
    const-string v1, "EvDo only"

    goto :goto_0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/CdmaNetworkSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, newValue:Ljava/lang/String;
    const/4 v0, 0x4

    .line 77
    .local v0, networkType:I
    const-string v2, "CDMA only"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    const/4 v0, 0x5

    .line 82
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CdmaNetworkSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/CdmaNetworkSelectListPreference;->mHandler:Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/CdmaNetworkSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SelectedNetworkType"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CdmaNetworkSelectListPreference;->setNetworkTypeSettingValue(Ljava/lang/String;)V

    .line 89
    return-void

    .line 79
    :cond_1
    const-string v2, "EvDo only"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const/4 v0, 0x6

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 62
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method
