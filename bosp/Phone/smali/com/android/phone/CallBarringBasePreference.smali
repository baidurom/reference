.class public Lcom/android/phone/CallBarringBasePreference;
.super Landroid/preference/CheckBoxPreference;
.source "CallBarringBasePreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallBarringBasePreference$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DEFAULT_SIM:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CallBarringBasePreference"

.field private static final PASSWORD_LENGTH:I = 0x4


# instance fields
.field private bResult:Z

.field private isVtCBarring:Z

.field private mCallBarringInterface:Lcom/android/phone/CallBarringInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentClickState:Z

.field private mFacility:Ljava/lang/String;

.field private mHandler:Lcom/android/phone/CallBarringBasePreference$MyHandler;

.field private mServiceClass:I

.field private mSimId:I

.field private mTitle:I

.field private phone:Lcom/android/internal/telephony/Phone;

.field private tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallBarringBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringBasePreference;->setEnabled(Z)V

    .line 71
    iput-object p1, p0, Lcom/android/phone/CallBarringBasePreference;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/android/phone/CallBarringBasePreference$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/CallBarringBasePreference$MyHandler;-><init>(Lcom/android/phone/CallBarringBasePreference;Lcom/android/phone/CallBarringBasePreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->mHandler:Lcom/android/phone/CallBarringBasePreference$MyHandler;

    .line 47
    iput-object v2, p0, Lcom/android/phone/CallBarringBasePreference;->mContext:Landroid/content/Context;

    .line 51
    iput-boolean v1, p0, Lcom/android/phone/CallBarringBasePreference;->mCurrentClickState:Z

    .line 53
    iput-object v2, p0, Lcom/android/phone/CallBarringBasePreference;->mCallBarringInterface:Lcom/android/phone/CallBarringInterface;

    .line 56
    iput-boolean v3, p0, Lcom/android/phone/CallBarringBasePreference;->bResult:Z

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallBarringBasePreference;->mSimId:I

    .line 65
    iput-boolean v1, p0, Lcom/android/phone/CallBarringBasePreference;->isVtCBarring:Z

    .line 66
    iput v3, p0, Lcom/android/phone/CallBarringBasePreference;->mServiceClass:I

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/phone/CallBarringBasePreference;->setEnabled(Z)V

    .line 78
    iput-object p1, p0, Lcom/android/phone/CallBarringBasePreference;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 80
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallBarringBasePreference;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringBasePreference;->validatePassword(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/CallBarringBasePreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/phone/CallBarringBasePreference;->mServiceClass:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallBarringBasePreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallBarringBasePreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->mFacility:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallBarringBasePreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/phone/CallBarringBasePreference;->mCurrentClickState:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallBarringBasePreference;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CallBarringBasePreference;->setCallState(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/CallBarringBasePreference;)Lcom/android/phone/CallBarringInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->mCallBarringInterface:Lcom/android/phone/CallBarringInterface;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallBarringBasePreference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CallBarringBasePreference;->getCallState(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/phone/CallBarringBasePreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/phone/CallBarringBasePreference;->bResult:Z

    return p1
.end method

.method private doPreferenceClick(Ljava/lang/String;)V
    .locals 9
    .parameter "title"

    .prologue
    const/4 v8, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/android/phone/CallBarringBasePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 131
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04001a

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 133
    .local v4, textEntryView:Landroid/view/View;
    const v6, 0x7f07009a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 134
    .local v1, content:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/phone/CallBarringBasePreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0b028a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallBarringBasePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 140
    const v6, 0x7f0b0039

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    const v6, 0x7f0b0035

    new-instance v7, Lcom/android/phone/CallBarringBasePreference$1;

    invoke-direct {v7, p0, v4, p1}, Lcom/android/phone/CallBarringBasePreference$1;-><init>(Lcom/android/phone/CallBarringBasePreference;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 172
    .local v2, dlg:Landroid/app/AlertDialog;
    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 174
    .local v5, window:Landroid/view/Window;
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 175
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 179
    .end local v5           #window:Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private getCallState(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "facility"
    .parameter "password"
    .parameter "reason"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x200

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    if-ne p3, v3, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/phone/CallBarringBasePreference;->mHandler:Lcom/android/phone/CallBarringBasePreference$MyHandler;

    invoke-virtual {v1, v2, v2, v2, v5}, Lcom/android/phone/CallBarringBasePreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 198
    .local v0, m:Landroid/os/Message;
    :goto_0
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    iget v1, p0, Lcom/android/phone/CallBarringBasePreference;->mServiceClass:I

    if-ne v1, v4, :cond_1

    .line 202
    iget-object v1, p0, Lcom/android/phone/CallBarringBasePreference;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/phone/CallBarringBasePreference;->mSimId:I

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getVtFacilityLockGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 219
    :goto_1
    return-void

    .line 194
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallBarringBasePreference;->mHandler:Lcom/android/phone/CallBarringBasePreference$MyHandler;

    invoke-virtual {v1, v2, v2, v3, v5}, Lcom/android/phone/CallBarringBasePreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #m:Landroid/os/Message;
    goto :goto_0

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallBarringBasePreference;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/phone/CallBarringBasePreference;->mSimId:I

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getFacilityLockGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    goto :goto_1

    .line 210
    :cond_2
    iget v1, p0, Lcom/android/phone/CallBarringBasePreference;->mServiceClass:I

    if-ne v1, v4, :cond_3

    .line 212
    iget-object v1, p0, Lcom/android/phone/CallBarringBasePreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/telephony/Phone;->getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 215
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallBarringBasePreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/telephony/Phone;->getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1
.end method

.method private setCallState(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .parameter "facility"
    .parameter "enable"
    .parameter "password"

    .prologue
    const/16 v5, 0x200

    const/4 v3, 0x1

    .line 226
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->mHandler:Lcom/android/phone/CallBarringBasePreference$MyHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/android/phone/CallBarringBasePreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 231
    .local v4, m:Landroid/os/Message;
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget v0, p0, Lcom/android/phone/CallBarringBasePreference;->mServiceClass:I

    if-ne v0, v5, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/android/phone/CallBarringBasePreference;->mSimId:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setVtFacilityLockGemini(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 253
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/android/phone/CallBarringBasePreference;->mSimId:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setFacilityLockGemini(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    goto :goto_0

    .line 243
    :cond_1
    iget v0, p0, Lcom/android/phone/CallBarringBasePreference;->mServiceClass:I

    if-ne v0, v5, :cond_2

    .line 245
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, v4}, Lcom/android/internal/telephony/Phone;->setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, v4}, Lcom/android/internal/telephony/Phone;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private validatePassword(Ljava/lang/String;)Z
    .locals 2
    .parameter "password"

    .prologue
    .line 313
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 314
    :cond_0
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public convertService(I)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    .line 272
    const-string v0, ""

    .line 273
    .local v0, str:Ljava/lang/String;
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallBarringBasePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0279

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_0
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallBarringBasePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0b027a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_1
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallBarringBasePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0b027b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_2
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallBarringBasePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0b027c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_3
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallBarringBasePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0b027d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    :cond_4
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallBarringBasePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0b027e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    :cond_5
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallBarringBasePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0b027f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    :cond_6
    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallBarringBasePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0280

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 307
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 308
    :cond_8
    const-string v1, "Settings/CallBarringBasePreference"

    invoke-static {v1, v0}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-object v0
.end method

.method public getmFacility()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->mFacility:Ljava/lang/String;

    return-object v0
.end method

.method public getmTitle()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/phone/CallBarringBasePreference;->mTitle:I

    return v0
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V
    .locals 3
    .parameter "listener"
    .parameter "skipReading"
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    .line 257
    iput p3, p0, Lcom/android/phone/CallBarringBasePreference;->mSimId:I

    .line 260
    invoke-virtual {p0, p0}, Lcom/android/phone/CallBarringBasePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 261
    iput-object p1, p0, Lcom/android/phone/CallBarringBasePreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 262
    if-nez p2, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "Settings/CallBarringBasePreference"

    const-string v1, "init() is called"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->mFacility:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/CallBarringBasePreference;->getCallState(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 269
    :cond_1
    return-void
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/android/phone/CallBarringBasePreference;->bResult:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 111
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, titleView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #titleView:Landroid/view/View;
    const-string v1, "MIDDLE"

    invoke-static {v1}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 115
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/phone/CallBarringBasePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/CallBarringBasePreference;->mCurrentClickState:Z

    .line 105
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/phone/CallBarringBasePreference;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringBasePreference;->doPreferenceClick(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public setCallState(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->mFacility:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/phone/CallBarringBasePreference;->setCallState(Ljava/lang/String;ZLjava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/phone/CallBarringBasePreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 127
    :cond_0
    return-void
.end method

.method public setRefreshInterface(Lcom/android/phone/CallBarringInterface;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/phone/CallBarringBasePreference;->mCallBarringInterface:Lcom/android/phone/CallBarringInterface;

    .line 84
    return-void
.end method

.method public setServiceClass(I)V
    .locals 0
    .parameter "serviceClass"

    .prologue
    .line 453
    iput p1, p0, Lcom/android/phone/CallBarringBasePreference;->mServiceClass:I

    .line 454
    return-void
.end method

.method public setmFacility(Ljava/lang/String;)V
    .locals 0
    .parameter "mFacility"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/phone/CallBarringBasePreference;->mFacility:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setmTitle(I)V
    .locals 0
    .parameter "mTitle"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/phone/CallBarringBasePreference;->mTitle:I

    .line 91
    return-void
.end method
