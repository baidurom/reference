.class public Lcom/android/internal/policy/impl/SimUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SimUnlockScreen$8;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;
    }
.end annotation


# static fields
.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static SIMLOCK_TYPE_PIN:I = 0x0

.field private static SIMLOCK_TYPE_SIMMELOCK:I = 0x0

.field private static final STATE_ENTER_FINISH:I = 0x4

.field private static final STATE_ENTER_NEW:I = 0x2

.field private static final STATE_ENTER_PIN:I = 0x0

.field private static final STATE_ENTER_PUK:I = 0x1

.field private static final STATE_REENTER_NEW:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SimUnlockScreen"

.field static final VERIFY_TYPE_PIN:I = 0x1f5


# instance fields
.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelButton:Landroid/widget/TextView;

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMoreInfoBtn:Landroid/widget/Button;

.field private mNewPinText:Ljava/lang/String;

.field private mOkButton:Landroid/widget/TextView;

.field private mPINRetryCount:I

.field private mPUKRetryCount:I

.field private mPhoneCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

.field private mPinText:Landroid/widget/TextView;

.field private mPukEnterState:I

.field private mPukText:Ljava/lang/String;

.field private mResultPrompt:Landroid/widget/TextView;

.field private mSIMCardName:Landroid/widget/TextView;

.field private mSim2PINRetryCount:I

.field private mSim2PUKRetryCount:I

.field public mSim2State:Lcom/android/internal/telephony/IccCard$State;

.field public mSimId:I

.field public mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mTimesLeft:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private sim1FirstBoot:Z

.field private sim2FirstBoot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->SIMLOCK_TYPE_PIN:I

    .line 137
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->SIMLOCK_TYPE_SIMMELOCK:I

    .line 140
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 9
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"
    .parameter "simId"

    .prologue
    const/high16 v8, -0x100

    const v7, 0x20c0020

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 170
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    .line 80
    iput-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;

    .line 81
    iput-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSIMCardName:Landroid/widget/TextView;

    .line 82
    iput-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mMoreInfoBtn:Landroid/widget/Button;

    .line 88
    iput-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    .line 91
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    .line 92
    iput v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 94
    iput-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 121
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sim1FirstBoot:Z

    .line 122
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sim2FirstBoot:Z

    .line 135
    iput v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    .line 1258
    new-instance v2, Lcom/android/internal/policy/impl/SimUnlockScreen$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$6;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPhoneCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

    .line 171
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 172
    iput-object p4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 173
    iput p6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    .line 174
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    .line 175
    const-string v2, "SimUnlockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimUnlockScreen Constructor, mSimId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCreationOrientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget v2, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    .line 178
    iput-object p5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 180
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 186
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x207000a

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 187
    const v2, 0x20c0023

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const v2, 0x20c0024

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSIMCardName:Landroid/widget/TextView;

    .line 192
    const v2, 0x20c001b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2020042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    const v2, 0x20c001f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 194
    const v2, 0x20c001f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x202001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2020043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    const v2, 0x20c0021

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2020090

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    const v2, 0x20c001e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;

    .line 199
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 200
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    const v2, 0x20c001c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    .line 202
    const v2, 0x20c0022

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 203
    new-instance v2, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;

    invoke-direct {v2, p0, v6}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Lcom/android/internal/policy/impl/SimUnlockScreen$1;)V

    .line 207
    :cond_1
    const v2, 0x20c001d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 208
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 209
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    const v2, 0x20c0021

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 211
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v2, 0x20c001b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 214
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 215
    const v2, 0x20c004b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    .line 216
    const v2, 0x20c004d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    .line 217
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 220
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 221
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 223
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 224
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateSimState()V

    .line 227
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-ne v2, v5, :cond_5

    .line 229
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setFocusable(Z)V

    .line 230
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 231
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 232
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 239
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 242
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerRadioStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$RadioStateCallback;)V

    .line 243
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPhoneCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerPhoneStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;)V

    .line 245
    const-string v2, "gsm.siminfo.ready"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, siminfoupdate:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    const-string v2, "SimUnlockScreen"

    const-string v3, "siminfo already update, we should read value from the siminfo"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->dealwithSIMInfoChanged(I)V

    .line 251
    :cond_4
    return-void

    .line 235
    .end local v1           #siminfoupdate:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setFocusable(Z)V

    .line 236
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setFocusableInTouchMode(Z)V

    goto :goto_0

    .line 91
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->displaythesimcardinfo(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/SimUnlockScreen;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPuk(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/SimUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/CharSequence;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/SimUnlockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSIMCardName(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPinCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/SimUnlockScreen;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPin(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->SIMLOCK_TYPE_PIN:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/SimUnlockScreen;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setSimLockScreenDone(II)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/SimUnlockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPukCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SimUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPUKRetryCount:I

    return v0
.end method

.method private checkPin()V
    .locals 3

    .prologue
    const v2, 0x205007f

    .line 839
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mNewPinText:Ljava/lang/String;

    .line 840
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mNewPinText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 841
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 920
    :goto_0
    return-void

    .line 846
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 849
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 850
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 852
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 855
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 857
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mNewPinText:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->start()V

    .line 919
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private checkPin(I)V
    .locals 3
    .parameter "simId"

    .prologue
    const v2, 0x205007f

    .line 923
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mNewPinText:Ljava/lang/String;

    .line 924
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mNewPinText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 925
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1009
    :goto_0
    return-void

    .line 930
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 934
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 935
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 936
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 938
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 941
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 943
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mNewPinText:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->start()V

    .line 1008
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private checkPuk()V
    .locals 4

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updatePinEnterScreen()V

    .line 732
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 779
    :goto_0
    return-void

    .line 735
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 736
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mNewPinText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->start()V

    .line 778
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private checkPuk(I)V
    .locals 6
    .parameter "simId"

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updatePinEnterScreen()V

    .line 783
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 836
    :goto_0
    return-void

    .line 786
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 787
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$3;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mNewPinText:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/SimUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen$3;->start()V

    .line 835
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private dealWithEnterMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    if-nez v0, :cond_0

    .line 422
    const-string v0, "SimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick, check PIN, mSimId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin(I)V

    .line 452
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    if-ne v2, v0, :cond_1

    .line 426
    const-string v0, "SimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick, check PIN, mSimId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin(I)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    if-nez v0, :cond_2

    .line 430
    const-string v0, "SimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick, check PUK, mSimId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPuk(I)V

    goto :goto_0

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    if-ne v2, v0, :cond_3

    .line 434
    const-string v0, "SimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick, check PUK, mSimId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPuk(I)V

    goto/16 :goto_0

    .line 437
    :cond_3
    const-string v0, "SimUnlockScreen"

    const-string v1, "wrong status"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private dealwithSIMInfoChanged(I)V
    .locals 11
    .parameter "slotId"

    .prologue
    const v10, 0x2050087

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1289
    const/4 v4, 0x0

    .line 1290
    .local v4, operName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1291
    .local v0, bkground:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v5, :cond_0

    .line 1293
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    int-to-long v6, p1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrDrawableBySlot(J)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1299
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    int-to-long v6, p1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrNameBySlot(J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1305
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1306
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1307
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1308
    const v5, 0x20c0023

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1309
    .local v2, forText:Landroid/widget/TextView;
    iget v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    if-ne v8, v5, :cond_2

    .line 1310
    const-string v5, "SimUnlockScreen"

    const-string v6, "SIM2 is first reboot"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sim2FirstBoot:Z

    .line 1312
    const v5, 0x205008a

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1318
    :goto_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mMoreInfoBtn:Landroid/widget/Button;

    if-eqz v5, :cond_3

    .line 1319
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mMoreInfoBtn:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(I)V

    .line 1340
    :cond_1
    :goto_3
    return-void

    .line 1294
    .end local v2           #forText:Landroid/widget/TextView;
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :catch_0
    move-exception v1

    .line 1295
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "SimUnlockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getOptrDrawableBySlot exception, slotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1300
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 1301
    .restart local v1       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "SimUnlockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getOptrNameBySlot exception, slotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1314
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v2       #forText:Landroid/widget/TextView;
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    const-string v5, "SimUnlockScreen"

    const-string v6, "SIM1 is first reboot"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sim1FirstBoot:Z

    .line 1316
    const v5, 0x2050089

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1321
    :cond_3
    const v5, 0x20c0025

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mMoreInfoBtn:Landroid/widget/Button;

    .line 1322
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mMoreInfoBtn:Landroid/widget/Button;

    if-eqz v5, :cond_1

    .line 1323
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mMoreInfoBtn:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1324
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mMoreInfoBtn:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(I)V

    .line 1326
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mMoreInfoBtn:Landroid/widget/Button;

    new-instance v6, Lcom/android/internal/policy/impl/SimUnlockScreen$7;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$7;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method

.method private displaythesimcardinfo(I)V
    .locals 2
    .parameter "slotId"

    .prologue
    const/4 v1, 0x1

    .line 255
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->IsSIMInserted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;->SIM1_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->popupSIMInfoDialog(Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;)V

    .line 264
    :goto_0
    return-void

    .line 257
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->IsSIMInserted(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;->SIM1_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->popupSIMInfoDialog(Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;)V

    goto :goto_0

    .line 259
    :cond_1
    if-ne v1, p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->IsSIMInserted(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;->SIM2_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->popupSIMInfoDialog(Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;)V

    goto :goto_0

    .line 262
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;->SIM2_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->popupSIMInfoDialog(Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;)V

    goto :goto_0
.end method

.method private getRetryPin(I)Ljava/lang/String;
    .locals 6
    .parameter "simId"

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPinCount(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPINRetryCount:I

    .line 653
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPINRetryCount:I

    packed-switch v0, :pswitch_data_0

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x205001a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPINRetryCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 655
    :pswitch_0
    const-string v0, " "

    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getRetryPinCount(I)I
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, -0x1

    .line 634
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 635
    const-string v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 637
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getRetryPuk(I)Ljava/lang/String;
    .locals 6
    .parameter "simId"

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPukCount(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPUKRetryCount:I

    .line 642
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPUKRetryCount:I

    packed-switch v0, :pswitch_data_0

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x205001a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPUKRetryCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 644
    :pswitch_0
    const-string v0, " "

    goto :goto_0

    .line 642
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getRetryPukCount(I)I
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, -0x1

    .line 627
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 628
    const-string v0, "gsm.sim.retry.puk1.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 630
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getSIMCardName(I)V
    .locals 8
    .parameter "slotId"

    .prologue
    const/4 v7, 0x1

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 386
    .local v3, s:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrDrawableBySlot(J)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 390
    :goto_0
    if-eqz v0, :cond_0

    .line 391
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrNameBySlot(J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 399
    :goto_1
    const-string v4, "SimUnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mSimId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    if-eqz v3, :cond_1

    .line 402
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    :goto_2
    return-void

    .line 387
    :catch_0
    move-exception v1

    .line 388
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "SimUnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSIMCardName::getOptrDrawableBySlot exception, slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 396
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 397
    .restart local v1       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "SimUnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSIMCardName::getOptrNameBySlot exception, slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 403
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    if-ne v4, v7, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sim2FirstBoot:Z

    if-nez v4, :cond_3

    :cond_2
    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sim1FirstBoot:Z

    if-eqz v4, :cond_5

    .line 405
    :cond_3
    const-string v4, "SimUnlockScreen"

    const-string v5, "getSIMCardName for the first reboot"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const v4, 0x20c0023

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 407
    .local v2, forText:Landroid/widget/TextView;
    if-ne v7, p1, :cond_4

    .line 408
    const v4, 0x205008a

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 410
    :cond_4
    const v4, 0x2050089

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 413
    .end local v2           #forText:Landroid/widget/TextView;
    :cond_5
    const-string v4, "SimUnlockScreen"

    const-string v5, "getSIMCardName for seaching SIM card"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSIMCardName:Landroid/widget/TextView;

    const v5, 0x2050085

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 591
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v2, #string@lockscreen_sim_unlock_progress_dialog_message#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 594
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 595
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 597
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #bool@config_sf_slowBlur#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private isSimLockDisplay(II)Z
    .locals 10
    .parameter "slot"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v8, 0x1

    const/4 v3, 0x1

    .line 1523
    if-gez p1, :cond_1

    .line 1546
    :cond_0
    :goto_0
    return v2

    .line 1527
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sim_lock_state_setting"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1528
    .local v1, simLockState:Ljava/lang/Long;
    move-object v0, v1

    .line 1530
    .local v0, bitSet:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-int/lit8 v6, p1, 0x2

    ushr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1531
    sget v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->SIMLOCK_TYPE_PIN:I

    if-ne v4, p2, :cond_2

    .line 1532
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_0

    move v2, v3

    .line 1533
    goto :goto_0

    .line 1537
    :cond_2
    sget v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->SIMLOCK_TYPE_SIMMELOCK:I

    if-ne v4, p2, :cond_3

    .line 1538
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    ushr-long/2addr v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1539
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_0

    move v2, v3

    .line 1540
    goto :goto_0

    :cond_3
    move v2, v3

    .line 1546
    goto :goto_0
.end method

.method private popupSIMInfoDialog(Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;)V
    .locals 5
    .parameter "status"

    .prologue
    .line 267
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 268
    .local v1, View:Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 269
    sget-object v3, Lcom/android/internal/policy/impl/SimUnlockScreen$8;->$SwitchMap$com$android$internal$policy$impl$SimUnlockScreen$SIMStatus:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 288
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    .local v2, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v3, 0x2050088

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 290
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 291
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 292
    const v3, #string@ok#t

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 294
    .local v0, SIMCardDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 295
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 296
    return-void

    .line 272
    .end local v0           #SIMCardDialog:Landroid/app/AlertDialog;
    .end local v2           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 276
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 280
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 284
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportDigit(I)V
    .locals 3
    .parameter "digit"

    .prologue
    .line 1058
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1067
    :goto_0
    return-void

    .line 1064
    :cond_1
    const-string v0, "SimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnterDigits = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " input digit is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1066
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_0
.end method

.method private setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    .locals 5
    .parameter "message"
    .parameter "shouldDisplay"

    .prologue
    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 609
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 610
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, #string@ok#t

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 616
    .local v0, newDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 618
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 620
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 624
    .end local v0           #newDialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 622
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;->show()V

    goto :goto_0
.end method

.method private setSimLockScreenDone(II)V
    .locals 6
    .parameter "slot"
    .parameter "type"

    .prologue
    .line 1550
    if-gez p1, :cond_0

    .line 1572
    :goto_0
    return-void

    .line 1554
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->isSimLockDisplay(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1555
    const-string v2, "SimUnlockScreen"

    const-string v3, "setSimLockScreenDone the SimLock display is done"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1559
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_lock_state_setting"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1561
    .local v1, simLockState:Ljava/lang/Long;
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1563
    .local v0, bitSet:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-int/lit8 v4, p1, 0x2

    shl-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1564
    const-string v2, "SimUnlockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimLockScreenDone1 bitset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    sget v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->SIMLOCK_TYPE_SIMMELOCK:I

    if-ne v2, p2, :cond_2

    .line 1566
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1568
    :cond_2
    const-string v2, "SimUnlockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimLockScreenDone2 bitset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1571
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_lock_state_setting"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_0
.end method

.method private updatePinEnterScreen()V
    .locals 6

    .prologue
    const v5, 0x2050013

    const/4 v4, 0x2

    const/4 v3, 0x0

    const v1, 0x20c0023

    const/4 v2, 0x1

    .line 676
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sim2FirstBoot:Z

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x205008a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 684
    :goto_0
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I

    packed-switch v0, :pswitch_data_0

    .line 725
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iput v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 727
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 728
    return-void

    .line 678
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sim1FirstBoot:Z

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x2050089

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 681
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 686
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukText:Ljava/lang/String;

    .line 687
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukText:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->validatePin(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 688
    iput v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I

    .line 689
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 690
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 693
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    const v1, 0x2050015

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 694
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_1

    .line 699
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mNewPinText:Ljava/lang/String;

    .line 700
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mNewPinText:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->validatePin(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 701
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I

    .line 702
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x2050014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 703
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 705
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    const v1, 0x205007f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 706
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    goto/16 :goto_1

    .line 711
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mNewPinText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 712
    iput v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I

    .line 713
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    const v1, 0x2050080

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 715
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    goto/16 :goto_1

    .line 717
    :cond_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I

    .line 718
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 684
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v1, 0x8

    .line 664
    if-eqz p2, :cond_1

    move v0, v1

    .line 666
    .local v0, pinMinimum:I
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 668
    :cond_0
    const/4 v1, 0x0

    .line 670
    :goto_1
    return v1

    .line 664
    .end local v0           #pinMinimum:I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 670
    .restart local v0       #pinMinimum:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->unRegisterRadioStateCallback()V

    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPhoneCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 485
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1131
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1132
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateConfiguration()V

    .line 1133
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 572
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v2, :cond_2

    .line 573
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 574
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 575
    .local v1, len:I
    if-lez v1, :cond_0

    .line 576
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 577
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 579
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 586
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_1
    :goto_0
    return-void

    .line 580
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_3

    .line 581
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_0

    .line 582
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_1

    .line 583
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->dealWithEnterMessage()V

    .line 584
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v3, 0x2710

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1138
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1139
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateConfiguration()V

    .line 1140
    return-void
.end method

.method public onDownloadCalibrationDataUpdate(Z)V
    .locals 0
    .parameter "mClibrationData"

    .prologue
    .line 1285
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 1013
    sparse-switch p1, :sswitch_data_0

    .line 1046
    sget-object v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v2

    .line 1047
    .local v2, match:C
    if-eqz v2, :cond_1

    .line 1048
    add-int/lit8 v3, v2, -0x30

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V

    .line 1054
    .end local v2           #match:C
    :cond_0
    :goto_0
    :sswitch_0
    const/4 v3, 0x1

    :cond_1
    :goto_1
    return v3

    .line 1019
    :sswitch_1
    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-lez v3, :cond_0

    .line 1020
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 1021
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1022
    .local v1, len:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1023
    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-lez v3, :cond_2

    .line 1025
    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1026
    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 1028
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 1034
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->dealWithEnterMessage()V

    goto :goto_0

    .line 1041
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_1

    .line 1013
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLockScreenUpdate(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 1348
    const-string v0, "SimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLockScreenUpdate name update, slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSimId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    if-ne v0, p1, :cond_0

    .line 1351
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSIMCardName(I)V

    .line 1353
    :cond_0
    return-void
.end method

.method public onMissedCallChanged(I)V
    .locals 0
    .parameter "missedCall"

    .prologue
    .line 1364
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public onRadioStateChanged(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 1356
    const-string v0, "SimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioStateChanged, slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSimId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    if-ne v0, p1, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 1360
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 1362
    :cond_0
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1268
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1272
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 458
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 460
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateSimState()V

    .line 464
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 466
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 469
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 470
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    const-string v1, "SimUnlockScreen"

    const-string v2, "IME is showing, we should hide it"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 474
    :cond_0
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1276
    return-void
.end method

.method public onSIMInfoChanged(I)V
    .locals 2
    .parameter "slotId"

    .prologue
    .line 1343
    const-string v0, "SimUnlockScreen"

    const-string v1, "onSIMInfoChanged"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->dealwithSIMInfoChanged(I)V

    .line 1345
    return-void
.end method

.method public onSearchNetworkUpdate(IZ)V
    .locals 0
    .parameter "simId"
    .parameter "switchOn"

    .prologue
    .line 1366
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 1280
    return-void
.end method

.method public onUnlockKeyguard()V
    .locals 0

    .prologue
    .line 1264
    return-void
.end method

.method public onWallpaperSetComplete()V
    .locals 0

    .prologue
    .line 1365
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .parameter "verifyType"
    .parameter "bRet"

    .prologue
    .line 1575
    const-string v1, "SimUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVerifyResult verifyType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1579
    .local v0, retIntent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 1580
    const-string v1, "SimUnlockScreen"

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :goto_0
    return-void

    .line 1583
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1584
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1586
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1071
    const-string v3, "SimUnlockScreen"

    const-string v4, "Call updateSimState in updateConfiguration(), refresh header text."

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateSimState()V

    .line 1074
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1075
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    if-eq v3, v4, :cond_1

    .line 1077
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    iget v3, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-eq v3, v4, :cond_0

    .line 1079
    iget v3, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    .line 1080
    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-ne v3, v2, :cond_2

    move v0, v2

    .line 1081
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 1083
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1084
    const-string v2, "keyguard"

    const-string v3, "we clicked cancel button"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    goto :goto_0

    .line 1080
    .end local v0           #isKeyboardOpen:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1087
    .restart local v0       #isKeyboardOpen:Z
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 1092
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 9
    .parameter "button"

    .prologue
    const/4 v6, 0x0

    .line 1103
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 1106
    .local v2, newState:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 1107
    .local v4, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    .line 1109
    .local v1, isVoiceCapable:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1111
    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    .line 1113
    const v5, #string@lockscreen_return_to_call#t

    .line 1114
    .local v5, textId:I
    const v3, 0x2020093

    .line 1115
    .local v3, phoneCallIcon:I
    invoke-virtual {p1, v3, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1121
    .end local v3           #phoneCallIcon:I
    :goto_1
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    .line 1127
    .end local v5           #textId:I
    :goto_2
    return-void

    .end local v1           #isVoiceCapable:Z
    :cond_0
    move v1, v6

    .line 1107
    goto :goto_0

    .line 1117
    .restart local v1       #isVoiceCapable:Z
    :cond_1
    const v5, #string@lockscreen_emergency_call#t

    .line 1118
    .restart local v5       #textId:I
    const v0, 0x2020093

    .line 1119
    .local v0, emergencyIcon:I
    invoke-virtual {p1, v0, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 1125
    .end local v0           #emergencyIcon:I
    .end local v5           #textId:I
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateSimState()V
    .locals 8

    .prologue
    const v7, 0x2050011

    const v6, #string@keyguard_password_enter_pin_code#t

    const v5, 0x20c0023

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 310
    const-string v0, "SimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimSate, simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sim1FirstBoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sim1FirstBoot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sim2FirstBoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sim2FirstBoot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sim1FirstBoot:Z

    if-eq v3, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sim2FirstBoot:Z

    if-ne v3, v0, :cond_3

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mMoreInfoBtn:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mMoreInfoBtn:Landroid/widget/Button;

    const v1, 0x2050087

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 336
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSIMCardName(I)V

    .line 339
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    if-ne v3, v0, :cond_8

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    .line 341
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_6

    .line 342
    const-string v0, "SimUnlockScreen"

    const-string v1, "updateSimState, mSim2State = PUK_REQUIRED"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPuk(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iput v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I

    .line 352
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sim2FirstBoot:Z

    if-eqz v0, :cond_7

    .line 353
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x205008a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 380
    :goto_2
    return-void

    .line 323
    :cond_5
    const v0, 0x20c0025

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mMoreInfoBtn:Landroid/widget/Button;

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mMoreInfoBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mMoreInfoBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mMoreInfoBtn:Landroid/widget/Button;

    const v1, 0x2050087

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mMoreInfoBtn:Landroid/widget/Button;

    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 346
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSim2State:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_4

    .line 347
    const-string v0, "SimUnlockScreen"

    const-string v1, "updateSimState, mSim2State = PIN_REQUIRED"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPin(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iput v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I

    goto :goto_1

    .line 355
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 357
    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    if-nez v0, :cond_c

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_a

    .line 360
    const-string v0, "SimUnlockScreen"

    const-string v1, "updateSimState1, mSimState = PUK_REQUIRED"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPuk(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iput v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I

    .line 371
    :cond_9
    :goto_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->sim1FirstBoot:Z

    if-eqz v0, :cond_b

    .line 372
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x2050089

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 364
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_9

    .line 365
    const-string v0, "SimUnlockScreen"

    const-string v1, "updateSimState1, mSimState = PIN_REQUIRED"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPin(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iput v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I

    goto :goto_3

    .line 374
    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 378
    :cond_c
    const-string v0, "SimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimState, wrong simId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
