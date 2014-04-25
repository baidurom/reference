.class public Lcom/android/phone/UnlockPUKLock;
.super Landroid/app/Activity;
.source "UnlockPUKLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/UnlockPUKLock$TouchInput;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DIALOG_ENTERNUMBER:I = 0x78

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field public static final LOGTAG:Ljava/lang/String; = "UnlockPUKLock "

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final MSG1:I = 0x64

.field private static final MSG2:I = 0x66

.field private static final MSG3:I = 0x68

.field private static final MSG4:I = 0x6a

.field public static final START_TYPE:Ljava/lang/String; = "start_type"

.field public static final START_TYPE_REQ:Ljava/lang/String; = "request"

.field public static final START_TYPE_RSP:Ljava/lang/String; = "response"

.field static final VERIFY_RESULT:Ljava/lang/String; = "verfiy_result"

.field static final VERIFY_TYPE:Ljava/lang/String; = "verfiy_type"

.field static final VERIFY_TYPE_PIN:I = 0x1f5

.field static final VERIFY_TYPE_PIN2:I = 0x1f8

.field static final VERIFY_TYPE_PUK:I = 0x1f6

.field static final VERIFY_TYPE_PUK2:I = 0x1f9

.field static final VERIFY_TYPE_SIMMELOCK:I = 0x1f7

.field private static result:Z

.field public static strWrongCode:Ljava/lang/String;


# instance fields
.field public PwdLength:I

.field public iSIMMEUnlockNo:I

.field private mDismissButton:Landroid/widget/ImageView;

.field public mHandler:Landroid/os/Handler;

.field public mPwdDisplay:Landroid/widget/TextView;

.field public mPwdLeftChances:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUnlockActionNotify:Landroid/widget/TextView;

.field private mUnlockEmptyForSingleCard:Landroid/widget/TextView;

.field private mUnlockForSIMNotify:Landroid/widget/TextView;

.field private mUnlockResultNotify:Landroid/widget/TextView;

.field private mUnlockRetriesNotify:Landroid/widget/TextView;

.field private mUnlockSIMNameNotify:Landroid/widget/TextView;

.field private mbackspace:Landroid/widget/ImageView;

.field private mbtnEmergencyCall:Landroid/widget/Button;

.field public progressDialog:Landroid/app/ProgressDialog;

.field public retryCount:I

.field public strConPIN:Ljava/lang/String;

.field public strOriPIN:Ljava/lang/String;

.field public strPUK:Ljava/lang/String;

.field public strPUKUnlockPhase:Ljava/lang/String;

.field public strPwd:Ljava/lang/String;

.field public tempstrPwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/UnlockPUKLock;->result:Z

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/UnlockPUKLock;->strWrongCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 77
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 80
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    .line 81
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockEmptyForSingleCard:Landroid/widget/TextView;

    .line 82
    iput v1, p0, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    .line 83
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->tempstrPwd:Ljava/lang/String;

    .line 85
    iput v1, p0, Lcom/android/phone/UnlockPUKLock;->mPwdLeftChances:I

    .line 87
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->strPUK:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->strOriPIN:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->strConPIN:Ljava/lang/String;

    .line 101
    iput v1, p0, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    .line 102
    iput v1, p0, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    .line 676
    new-instance v0, Lcom/android/phone/UnlockPUKLock$4;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPUKLock$4;-><init>(Lcom/android/phone/UnlockPUKLock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mHandler:Landroid/os/Handler;

    .line 989
    new-instance v0, Lcom/android/phone/UnlockPUKLock$8;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPUKLock$8;-><init>(Lcom/android/phone/UnlockPUKLock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/phone/UnlockPUKLock;->result:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/phone/UnlockPUKLock;->result:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/phone/UnlockPUKLock;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I

    move-result v0

    return v0
.end method

.method public static bCharNumber(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 1033
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1034
    const/4 v0, 0x1

    .line 1036
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bStringValid(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 1042
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1043
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/phone/UnlockPUKLock;->bCharNumber(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1044
    const/4 v1, 0x0

    .line 1047
    :goto_1
    return v1

    .line 1042
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1047
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getRetryPukCount(I)I
    .locals 2
    .parameter "simId"

    .prologue
    const/4 v1, -0x1

    .line 972
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 973
    const-string v0, "gsm.sim.retry.puk1.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 975
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private unlockPUK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "strPUK"
    .parameter "strPwd"

    .prologue
    .line 802
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 803
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_0

    .line 805
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I

    move-result v1

    .line 806
    .local v1, retryCount:I
    if-lez v1, :cond_0

    .line 808
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][new Thread][Start]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    new-instance v2, Lcom/android/phone/UnlockPUKLock$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/phone/UnlockPUKLock$5;-><init>(Lcom/android/phone/UnlockPUKLock;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/phone/UnlockPUKLock$5;->start()V

    .line 829
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][new Thread][Finsish]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    .end local v1           #retryCount:I
    :cond_0
    return-void
.end method


# virtual methods
.method public getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "Slot"

    .prologue
    const/4 v1, 0x0

    .line 1020
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 1021
    long-to-int v2, p1

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1022
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    const-string v2, "UnlockPUKLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getOptrDrawableBySlotId][info]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1028
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-object v1
.end method

.method public getOptrNameBySlotId(J)Ljava/lang/String;
    .locals 4
    .parameter "Slot"

    .prologue
    .line 1004
    const-string v1, "UnlockPUKLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getOptrNameBySlotId][Slot]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    long-to-int v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 1006
    long-to-int v1, p1

    invoke-static {p0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1007
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    const-string v1, "UnlockPUKLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getOptrNameBySlotId][info]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1009
    const-string v1, "UnlockPUKLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getOptrNameBySlotId][OptrName]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 1015
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 1012
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1015
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 671
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 672
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/high16 v5, 0x2

    const/4 v6, -0x1

    .line 110
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onCreate]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->requestWindowFeature(I)Z

    .line 114
    const v3, 0x7f040046

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->setContentView(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 120
    .local v2, win:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 121
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, -0x8000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 122
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 123
    const v3, 0x7f07012b

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    .line 126
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 127
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 130
    const v3, 0x7f07012c

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mbackspace:Landroid/widget/ImageView;

    .line 131
    const v3, 0x7f070125

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mbtnEmergencyCall:Landroid/widget/Button;

    .line 132
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b03f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 135
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 136
    const-string v3, "UnlockPUKLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onStart][original]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    .line 138
    const-string v3, "PINLEFTRETRIES"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    .line 139
    const-string v3, "PUKPHASE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    .line 140
    const-string v3, "INPUTPUK"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUK:Ljava/lang/String;

    .line 141
    const-string v3, "INPUTORIPIN"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strOriPIN:Ljava/lang/String;

    .line 142
    const-string v3, "INPUTCONPIN"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strConPIN:Ljava/lang/String;

    .line 143
    const-string v3, "WRONGCODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/UnlockPUKLock;->strWrongCode:Ljava/lang/String;

    .line 145
    :cond_0
    const v3, 0x7f070126

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;

    .line 146
    sget-object v3, Lcom/android/phone/UnlockPUKLock;->strWrongCode:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/phone/UnlockPUKLock;->strWrongCode:Ljava/lang/String;

    const v4, 0x7f0b03f8

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/phone/UnlockPUKLock;->strWrongCode:Ljava/lang/String;

    const v4, 0x7f0b0405

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    :cond_1
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;

    sget-object v4, Lcom/android/phone/UnlockPUKLock;->strWrongCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_2
    const v3, 0x7f07012d

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 152
    new-instance v3, Lcom/android/phone/UnlockPUKLock$TouchInput;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockPUKLock$TouchInput;-><init>(Lcom/android/phone/UnlockPUKLock;)V

    .line 154
    :cond_3
    const v3, 0x7f070124

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mDismissButton:Landroid/widget/ImageView;

    .line 156
    const v3, 0x7f070127

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockActionNotify:Landroid/widget/TextView;

    .line 157
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 158
    :cond_4
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v4, 0x7f0b0402

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_5
    :goto_0
    const v3, 0x7f070128

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    .line 169
    const v3, 0x7f070131

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 170
    const v3, 0x7f070133

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 181
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mbackspace:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/phone/UnlockPUKLock$1;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPUKLock$1;-><init>(Lcom/android/phone/UnlockPUKLock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mbackspace:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/phone/UnlockPUKLock$2;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPUKLock$2;-><init>(Lcom/android/phone/UnlockPUKLock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 207
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mbtnEmergencyCall:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/UnlockPUKLock$3;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPUKLock$3;-><init>(Lcom/android/phone/UnlockPUKLock;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const-string v3, "UnlockPUKLock "

    const-string v4, "[unlock][onCreate]-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void

    .line 159
    :cond_6
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 160
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v4, 0x7f0b0403

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 161
    :cond_7
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 162
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v4, 0x7f0b0404

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 250
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    .line 258
    :cond_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UnlockPUKLock "

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 958
    const-string v0, "UnlockPUKLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onKeyDown][Pressed invalid Key][keyCode()]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    sparse-switch p1, :sswitch_data_0

    .line 967
    const-string v0, "UnlockPUKLock "

    const-string v1, "[onKey][Pressed invalid Key]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 964
    :sswitch_0
    const-string v0, "UnlockPUKLock "

    const-string v1, "[onKeyDown][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const/4 v0, 0x1

    goto :goto_0

    .line 959
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 980
    const-string v0, "UnlockPUKLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onKeyLongPress][Long Pressed invalid Key][keyCode()]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 982
    const-string v0, "UnlockPUKLock "

    const-string v1, "[onKeyLongPress][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/4 v0, 0x1

    .line 985
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockPUKLock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 265
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const v8, 0x7f0b03f2

    const/16 v7, 0x1f6

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 272
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onResume]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUKLock;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 276
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/UnlockPUKLock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 302
    :cond_0
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onResume][GEMINI Card]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 304
    .local v1, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget v3, p0, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    if-nez v3, :cond_3

    .line 306
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onResume][GEMINI Card][SIM1]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_1

    .line 308
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onResume][GEMINI Card][SIM1][PUK_REQUIRED]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0, v6}, Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I

    move-result v2

    .line 311
    .local v2, retryCount:I
    const-string v3, "UnlockPUKLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onResume][GEMINI Card][SIM1][PUK Retries Left] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    if-lez v2, :cond_2

    .line 313
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    .end local v1           #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2           #retryCount:I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/UnlockPUKLock;->getOptrNameBySlotId(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :goto_1
    return-void

    .line 315
    .restart local v1       #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .restart local v2       #retryCount:I
    :cond_2
    invoke-virtual {p0, v7, v6}, Lcom/android/phone/UnlockPUKLock;->sendVerifyResult(IZ)V

    .line 316
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto :goto_1

    .line 323
    .end local v2           #retryCount:I
    :cond_3
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onResume][GEMINI Card][SIM2]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_1

    .line 326
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onResume][GEMINI Card][SIM2][PUK_REQUIRED]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-direct {p0, v5}, Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I

    move-result v2

    .line 328
    .restart local v2       #retryCount:I
    const-string v3, "UnlockPUKLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onResume][GEMINI Card][SIM2][PUK Retries Left] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-lez v2, :cond_4

    .line 330
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 332
    :cond_4
    invoke-virtual {p0, v7, v6}, Lcom/android/phone/UnlockPUKLock;->sendVerifyResult(IZ)V

    .line 333
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto :goto_1

    .line 339
    .end local v1           #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2           #retryCount:I
    :cond_5
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 341
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 243
    return-void
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 0
    .parameter "keyEventCode"

    .prologue
    .line 364
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .parameter "verifyType"
    .parameter "bRet"

    .prologue
    .line 938
    const-string v1, "UnlockPUKLock "

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

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 944
    .local v0, retIntent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 945
    const-string v1, "UnlockPUKLock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :goto_0
    return-void

    .line 948
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 950
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 952
    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockPUKLock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public unlockPUK(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "simId"
    .parameter "strPUK"
    .parameter "strPwd"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 841
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 842
    .local v0, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    if-nez p1, :cond_2

    .line 844
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM1]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 848
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM1][PUK_REQUIRED]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-direct {p0, v4}, Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I

    move-result v1

    .line 850
    .local v1, retryCount:I
    const-string v2, "UnlockPUKLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM1][PUK_REQUIRED][retryCount] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    if-lez v1, :cond_0

    .line 853
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM1][new Thread][Start]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    new-instance v2, Lcom/android/phone/UnlockPUKLock$6;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/phone/UnlockPUKLock$6;-><init>(Lcom/android/phone/UnlockPUKLock;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/phone/UnlockPUKLock$6;->start()V

    .line 874
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM1][new Thread][Finsish]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_0
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM1]-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    .end local v1           #retryCount:I
    :cond_1
    :goto_0
    return-void

    .line 884
    :cond_2
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM2]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 888
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM2][PIN_REQUIRED]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-direct {p0, v5}, Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I

    move-result v1

    .line 890
    .restart local v1       #retryCount:I
    const-string v2, "UnlockPUKLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM2][PIN_REQUIRED][retryCount] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    if-lez v1, :cond_3

    .line 893
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM2][new Thread][Start]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    new-instance v2, Lcom/android/phone/UnlockPUKLock$7;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/phone/UnlockPUKLock$7;-><init>(Lcom/android/phone/UnlockPUKLock;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/phone/UnlockPUKLock$7;->start()V

    .line 915
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM2][new Thread][Finsish]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_3
    const-string v2, "UnlockPUKLock "

    const-string v3, "[Gemini Card][SetSIMLock][SIM 2]-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 1052
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1054
    .local v0, newState:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1056
    const v1, 0x7f0b0407

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    :goto_0
    return-void

    .line 1058
    :cond_0
    const v1, 0x7f0b03f7

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
