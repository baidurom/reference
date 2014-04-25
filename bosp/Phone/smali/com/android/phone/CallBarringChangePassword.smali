.class public Lcom/android/phone/CallBarringChangePassword;
.super Lcom/android/phone/EditPinPreference;
.source "CallBarringChangePassword.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallBarringChangePassword$1;,
        Lcom/android/phone/CallBarringChangePassword$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final DEFAULT_SIM:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CallChangePassword"

.field private static final PASSWORD_CHANGE_NEW:I = 0x1

.field private static final PASSWORD_CHANGE_OLD:I = 0x0

.field private static final PASSWORD_CHANGE_REENTER:I = 0x2

.field private static final PASSWORD_LENGTH:I = 0x4


# instance fields
.field private mCallBarringInterface:Lcom/android/phone/CallBarringInterface;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/phone/CallBarringChangePassword$MyHandler;

.field private mNewPassword:Ljava/lang/String;

.field private mOldPassword:Ljava/lang/String;

.field private mPasswordChangeState:I

.field private mSimId:I

.field private phone:Lcom/android/internal/telephony/Phone;

.field private tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallBarringChangePassword;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringChangePassword;->init(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->phone:Lcom/android/internal/telephony/Phone;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditPinPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Lcom/android/phone/CallBarringChangePassword$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallBarringChangePassword$MyHandler;-><init>(Lcom/android/phone/CallBarringChangePassword;Lcom/android/phone/CallBarringChangePassword$1;)V

    iput-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->mHandler:Lcom/android/phone/CallBarringChangePassword$MyHandler;

    .line 41
    iput-object v1, p0, Lcom/android/phone/CallBarringChangePassword;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 45
    iput-object v1, p0, Lcom/android/phone/CallBarringChangePassword;->mContext:Landroid/content/Context;

    .line 47
    iput-object v1, p0, Lcom/android/phone/CallBarringChangePassword;->mCallBarringInterface:Lcom/android/phone/CallBarringInterface;

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallBarringChangePassword;->mSimId:I

    .line 64
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringChangePassword;->init(Landroid/content/Context;)V

    .line 65
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->phone:Lcom/android/internal/telephony/Phone;

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallBarringChangePassword;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallBarringChangePassword;)Lcom/android/phone/CallBarringInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->mCallBarringInterface:Lcom/android/phone/CallBarringInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallBarringChangePassword;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringChangePassword;->displayMessage(I)V

    return-void
.end method

.method private final displayMessage(I)V
    .locals 3
    .parameter "strId"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/CallBarringChangePassword;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 198
    return-void
.end method

.method private final displayPasswordChangeDialog(IZ)V
    .locals 3
    .parameter "strId"
    .parameter "shouldDisplay"

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, msgId:I
    iget v1, p0, Lcom/android/phone/CallBarringChangePassword;->mPasswordChangeState:I

    packed-switch v1, :pswitch_data_0

    .line 84
    :goto_0
    if-eqz p1, :cond_1

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/CallBarringChangePassword;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallBarringChangePassword;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CallBarringChangePassword;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 91
    :goto_1
    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/phone/CallBarringChangePassword;->showPinDialog()V

    .line 94
    :cond_0
    return-void

    .line 73
    :pswitch_0
    const v0, 0x7f0b0283

    .line 74
    goto :goto_0

    .line 76
    :pswitch_1
    const v0, 0x7f0b0284

    .line 77
    goto :goto_0

    .line 79
    :pswitch_2
    const v0, 0x7f0b0286

    .line 80
    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringChangePassword;->setDialogMessage(I)V

    goto :goto_1

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doChangePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "oldPassword"
    .parameter "newPassword"

    .prologue
    const/4 v3, 0x0

    .line 151
    const-string v0, "Settings/CallChangePassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doChangePassword() is called with oldPassword is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "newPassword is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->mHandler:Lcom/android/phone/CallBarringChangePassword$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/android/phone/CallBarringChangePassword$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 157
    .local v4, m:Landroid/os/Message;
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v1, "AB"

    iget v5, p0, Lcom/android/phone/CallBarringChangePassword;->mSimId:I

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->changeBarringPasswordGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 168
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->phone:Lcom/android/internal/telephony/Phone;

    const-string v1, "AB"

    invoke-interface {v0, v1, p1, p2, v4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/phone/CallBarringChangePassword;->mContext:Landroid/content/Context;

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringChangePassword;->setEnabled(Z)V

    .line 179
    invoke-virtual {p0, p0}, Lcom/android/phone/CallBarringChangePassword;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 180
    invoke-direct {p0}, Lcom/android/phone/CallBarringChangePassword;->resetPasswordChangeState()V

    .line 181
    return-void
.end method

.method private final resetPasswordChangeState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/android/phone/CallBarringChangePassword;->mPasswordChangeState:I

    .line 98
    invoke-direct {p0, v0, v0}, Lcom/android/phone/CallBarringChangePassword;->displayPasswordChangeDialog(IZ)V

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->mNewPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->mOldPassword:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private validatePassword(Ljava/lang/String;)Z
    .locals 2
    .parameter "password"

    .prologue
    .line 171
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 172
    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const v1, 0x7f0b0285

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 104
    if-nez p2, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/android/phone/CallBarringChangePassword;->resetPasswordChangeState()V

    .line 146
    :goto_0
    return-void

    .line 108
    :cond_0
    iget v0, p0, Lcom/android/phone/CallBarringChangePassword;->mPasswordChangeState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/CallBarringChangePassword;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->mOldPassword:Ljava/lang/String;

    .line 111
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringChangePassword;->setText(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->mOldPassword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringChangePassword;->validatePassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iput v2, p0, Lcom/android/phone/CallBarringChangePassword;->mPasswordChangeState:I

    .line 114
    invoke-direct {p0, v3, v2}, Lcom/android/phone/CallBarringChangePassword;->displayPasswordChangeDialog(IZ)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallBarringChangePassword;->displayPasswordChangeDialog(IZ)V

    goto :goto_0

    .line 120
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/CallBarringChangePassword;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->mNewPassword:Ljava/lang/String;

    .line 121
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringChangePassword;->setText(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->mNewPassword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringChangePassword;->validatePassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallBarringChangePassword;->mPasswordChangeState:I

    .line 124
    invoke-direct {p0, v3, v2}, Lcom/android/phone/CallBarringChangePassword;->displayPasswordChangeDialog(IZ)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallBarringChangePassword;->displayPasswordChangeDialog(IZ)V

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/CallBarringChangePassword;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    iput v2, p0, Lcom/android/phone/CallBarringChangePassword;->mPasswordChangeState:I

    .line 132
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringChangePassword;->setText(Ljava/lang/String;)V

    .line 133
    const v0, 0x7f0b0287

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallBarringChangePassword;->displayPasswordChangeDialog(IZ)V

    goto :goto_0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallBarringChangePassword;->mOldPassword:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/CallBarringChangePassword;->mNewPassword:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallBarringChangePassword;->doChangePassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringChangePassword;->setText(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/android/phone/CallBarringChangePassword;->resetPasswordChangeState()V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTimeConsumingListener(Lcom/android/phone/TimeConsumingPreferenceListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "simId"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/CallBarringChangePassword;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 187
    check-cast p1, Lcom/android/phone/CallBarringInterface;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/CallBarringChangePassword;->mCallBarringInterface:Lcom/android/phone/CallBarringInterface;

    .line 188
    iput p2, p0, Lcom/android/phone/CallBarringChangePassword;->mSimId:I

    .line 189
    return-void
.end method
