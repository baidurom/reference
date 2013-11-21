.class public Lcom/baidu/server/dp/DynamicPermAlertDialog;
.super Landroid/app/Dialog;
.source "DynamicPermAlertDialog.java"


# static fields
.field private static final CALL_ACTION:I = 0x0

.field private static final DEBUG:Z = false

.field public static final DENY_BUTTON:I = 0x0

.field public static final PERMIT_BUTTON:I = 0x1

.field private static final SEND_SMS_ACTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DynamicPermissionService"


# instance fields
.field private countdownTask:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private mAction:I

.field private mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContentText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCountdown:I

.field private mDenyBtn:Landroid/widget/Button;

.field private mDenyDyanmicPermListener:Landroid/view/View$OnClickListener;

.field private mDeynBtnInitialVal:Ljava/lang/CharSequence;

.field private mInterrupt:Z

.field private mIsRemembered:Z

.field private mIsTimeout:Z

.field private mPermitBtn:Landroid/widget/Button;

.field private mPermitDyanmicPermListener:Landroid/view/View$OnClickListener;

.field private mPhoneNum:Ljava/lang/CharSequence;

.field private mPhoneNumInfoText:Landroid/widget/TextView;

.field private mRememberCbx:Landroid/widget/CheckBox;

.field private mRememberCbxPermListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mRememberTipsText:Landroid/widget/TextView;

.field private mSmsContent:Ljava/lang/CharSequence;

.field private mSmsContentInfoText:Landroid/widget/TextView;

.field private mWarnningContent:Ljava/lang/CharSequence;

.field private mWl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 57
    const v0, #style@Theme.DeviceDefault.Light.Dialog#t

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    const/16 v0, 0x14

    iput v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mCountdown:I

    .line 46
    iput-boolean v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mInterrupt:Z

    .line 48
    iput-boolean v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mIsTimeout:Z

    .line 53
    iput v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mAction:I

    .line 233
    new-instance v0, Lcom/baidu/server/dp/DynamicPermAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/baidu/server/dp/DynamicPermAlertDialog$1;-><init>(Lcom/baidu/server/dp/DynamicPermAlertDialog;)V

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mDenyDyanmicPermListener:Landroid/view/View$OnClickListener;

    .line 244
    new-instance v0, Lcom/baidu/server/dp/DynamicPermAlertDialog$2;

    invoke-direct {v0, p0}, Lcom/baidu/server/dp/DynamicPermAlertDialog$2;-><init>(Lcom/baidu/server/dp/DynamicPermAlertDialog;)V

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPermitDyanmicPermListener:Landroid/view/View$OnClickListener;

    .line 257
    new-instance v0, Lcom/baidu/server/dp/DynamicPermAlertDialog$3;

    invoke-direct {v0, p0}, Lcom/baidu/server/dp/DynamicPermAlertDialog$3;-><init>(Lcom/baidu/server/dp/DynamicPermAlertDialog;)V

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mRememberCbxPermListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 272
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->handler:Landroid/os/Handler;

    .line 274
    new-instance v0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;

    invoke-direct {v0, p0}, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;-><init>(Lcom/baidu/server/dp/DynamicPermAlertDialog;)V

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->countdownTask:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    const/16 v0, 0x14

    iput v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mCountdown:I

    .line 46
    iput-boolean v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mInterrupt:Z

    .line 48
    iput-boolean v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mIsTimeout:Z

    .line 53
    iput v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mAction:I

    .line 233
    new-instance v0, Lcom/baidu/server/dp/DynamicPermAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/baidu/server/dp/DynamicPermAlertDialog$1;-><init>(Lcom/baidu/server/dp/DynamicPermAlertDialog;)V

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mDenyDyanmicPermListener:Landroid/view/View$OnClickListener;

    .line 244
    new-instance v0, Lcom/baidu/server/dp/DynamicPermAlertDialog$2;

    invoke-direct {v0, p0}, Lcom/baidu/server/dp/DynamicPermAlertDialog$2;-><init>(Lcom/baidu/server/dp/DynamicPermAlertDialog;)V

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPermitDyanmicPermListener:Landroid/view/View$OnClickListener;

    .line 257
    new-instance v0, Lcom/baidu/server/dp/DynamicPermAlertDialog$3;

    invoke-direct {v0, p0}, Lcom/baidu/server/dp/DynamicPermAlertDialog$3;-><init>(Lcom/baidu/server/dp/DynamicPermAlertDialog;)V

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mRememberCbxPermListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 272
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->handler:Landroid/os/Handler;

    .line 274
    new-instance v0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;

    invoke-direct {v0, p0}, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;-><init>(Lcom/baidu/server/dp/DynamicPermAlertDialog;)V

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->countdownTask:Ljava/lang/Runnable;

    .line 62
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/server/dp/DynamicPermAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/server/dp/DynamicPermAlertDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mInterrupt:Z

    return v0
.end method

.method static synthetic access$102(Lcom/baidu/server/dp/DynamicPermAlertDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mInterrupt:Z

    return p1
.end method

.method static synthetic access$202(Lcom/baidu/server/dp/DynamicPermAlertDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mIsRemembered:Z

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/server/dp/DynamicPermAlertDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mRememberTipsText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/server/dp/DynamicPermAlertDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mCountdown:I

    return v0
.end method

.method static synthetic access$410(Lcom/baidu/server/dp/DynamicPermAlertDialog;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mCountdown:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mCountdown:I

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/server/dp/DynamicPermAlertDialog;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mDeynBtnInitialVal:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/server/dp/DynamicPermAlertDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mDenyBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/server/dp/DynamicPermAlertDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/baidu/server/dp/DynamicPermAlertDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mIsTimeout:Z

    return p1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 219
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public isRemembered()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mIsRemembered:Z

    return v0
.end method

.method public isTimeout()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mIsTimeout:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 67
    invoke-virtual {p0, v3}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->requestWindowFeature(I)Z

    .line 68
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, #layout@dynamic_perm_dialog#t

    invoke-virtual {p0, v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, #color@transparent#t

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 71
    const v0, #id@deny_btn#t

    invoke-virtual {p0, v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mDenyBtn:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mDenyBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mDenyDyanmicPermListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, #id@permit_btn#t

    invoke-virtual {p0, v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPermitBtn:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPermitBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPermitDyanmicPermListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, #id@remember_cbx#t

    invoke-virtual {p0, v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mRememberCbx:Landroid/widget/CheckBox;

    .line 76
    const v0, #id@dialog_text#t

    invoke-virtual {p0, v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContentText:Landroid/widget/TextView;

    .line 77
    const v0, #id@remember_tips#t

    invoke-virtual {p0, v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mRememberTipsText:Landroid/widget/TextView;

    .line 78
    const v0, #id@dialog_phone_num_text#t

    invoke-virtual {p0, v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPhoneNumInfoText:Landroid/widget/TextView;

    .line 79
    const v0, #id@dialog_sms_content_text#t

    invoke-virtual {p0, v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mSmsContentInfoText:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mRememberCbx:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mRememberCbxPermListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mDenyBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mDeynBtnInitialVal:Ljava/lang/CharSequence;

    .line 85
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mWarnningContent:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mWarnningContent:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPhoneNum:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 94
    iget v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mAction:I

    if-ne v0, v3, :cond_1

    .line 95
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPhoneNumInfoText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContext:Landroid/content/Context;

    const v2, #string@phone_sms_info_msg#t

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPhoneNum:Ljava/lang/CharSequence;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPhoneNumInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :goto_2
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mSmsContent:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mSmsContentInfoText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mSmsContent:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mSmsContentInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :goto_3
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPhoneNumInfoText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContext:Landroid/content/Context;

    const v2, #string@phone_call_info_msg#t

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPhoneNum:Ljava/lang/CharSequence;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPhoneNumInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mSmsContentInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 116
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->countdownTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 118
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "dpdialog"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mWl:Landroid/os/PowerManager$WakeLock;

    .line 119
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 123
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 127
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 131
    return-void
.end method

.method public setButtonText(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "witch"
    .parameter "text"

    .prologue
    .line 134
    if-nez p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mDenyBtn:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPermitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mWarnningContent:Ljava/lang/CharSequence;

    .line 143
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContentText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "appName"
    .parameter "actionName"

    .prologue
    const/16 v9, 0x21

    const/4 v8, 0x1

    const/high16 v7, -0x1

    const/4 v6, 0x0

    .line 149
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 150
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContext:Landroid/content/Context;

    const v4, #string@action_sms#t

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    iput v8, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mAction:I

    .line 155
    :goto_0
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContext:Landroid/content/Context;

    const v4, #string@dynamic_perm_dialog_msg#t

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, actionIndex:I
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 159
    .local v2, style:Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 160
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    .line 161
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v4, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 163
    :cond_0
    iput-object v2, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mWarnningContent:Ljava/lang/CharSequence;

    .line 164
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContentText:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .end local v0           #actionIndex:I
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #style:Landroid/text/SpannableString;
    :cond_1
    return-void

    .line 153
    :cond_2
    iput v6, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mAction:I

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 230
    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 5
    .parameter "phoneNum"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 171
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPhoneNum:Ljava/lang/CharSequence;

    .line 173
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPhoneNumInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPhoneNum:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 175
    iget v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mAction:I

    if-ne v0, v3, :cond_1

    .line 176
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPhoneNumInfoText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContext:Landroid/content/Context;

    const v2, #string@phone_sms_info_msg#t

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPhoneNumInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    :cond_0
    :goto_1
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPhoneNumInfoText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mContext:Landroid/content/Context;

    const v2, #string@phone_call_info_msg#t

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mPhoneNumInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setSmsContent(Ljava/lang/String;)V
    .locals 2
    .parameter "smsConten"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mSmsContent:Ljava/lang/CharSequence;

    .line 189
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mSmsContentInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 190
    if-eqz p1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mSmsContentInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mSmsContentInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog;->mSmsContentInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
