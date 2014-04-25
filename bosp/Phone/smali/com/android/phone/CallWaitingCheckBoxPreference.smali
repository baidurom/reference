.class public Lcom/android/phone/CallWaitingCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CallWaitingCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallWaitingCheckBoxPreference$1;,
        Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_SIM:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CallWaitingCheckBoxPreference"


# instance fields
.field private final DBG:Z

.field private final mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

.field private mServiceClass:I

.field private mSimId:I

.field phone:Lcom/android/internal/telephony/Phone;

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallWaitingCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/CallWaitingCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->DBG:Z

    .line 32
    new-instance v0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CallWaitingCheckBoxPreference;Lcom/android/phone/CallWaitingCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mSimId:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mServiceClass:I

    .line 46
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallWaitingCheckBoxPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mServiceClass:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallWaitingCheckBoxPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mSimId:I

    return v0
.end method


# virtual methods
.method init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V
    .locals 5
    .parameter "listener"
    .parameter "skipReading"
    .parameter "simId"

    .prologue
    const/16 v4, 0x200

    const/4 v3, 0x0

    .line 59
    const-string v0, "Settings/CallWaitingCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init, simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 61
    iput p3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mSimId:I

    .line 67
    if-nez p2, :cond_0

    .line 69
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mServiceClass:I

    if-ne v0, v4, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v1, v3, v3, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mSimId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getVtCallWaitingGemini(Landroid/os/Message;I)V

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 98
    :cond_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v1, v3, v3, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mSimId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCallWaitingGemini(Landroid/os/Message;I)V

    goto :goto_0

    .line 83
    :cond_2
    iget v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mServiceClass:I

    if-ne v0, v4, :cond_3

    .line 85
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v1, v3, v3, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getVtCallWaiting(Landroid/os/Message;)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v1, v3, v3, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected onClick()V
    .locals 5

    .prologue
    const/16 v4, 0x200

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 103
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 104
    invoke-virtual {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 105
    .local v0, toState:Z
    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setChecked(Z)V

    .line 107
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    iget v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mServiceClass:I

    if-ne v1, v4, :cond_2

    .line 111
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v4, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mSimId:I

    invoke-virtual {v1, v0, v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setVtCallWaitingGemini(ZLandroid/os/Message;I)V

    .line 132
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 135
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 105
    goto :goto_0

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v4, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mSimId:I

    invoke-virtual {v1, v0, v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCallWaitingGemini(ZLandroid/os/Message;I)V

    goto :goto_1

    .line 121
    :cond_3
    iget v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mServiceClass:I

    if-ne v1, v4, :cond_4

    .line 123
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v4, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setVtCallWaiting(ZLandroid/os/Message;)V

    goto :goto_1

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v4, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_1
.end method

.method public setServiceClass(I)V
    .locals 0
    .parameter "serviceClass"

    .prologue
    .line 230
    iput p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mServiceClass:I

    .line 231
    return-void
.end method
