.class public Lcom/android/phone/UnlockPINLock;
.super Landroid/app/Activity;
.source "UnlockPINLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/UnlockPINLock$TouchInput;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DIALOG_ENTERNUMBER:I = 0x78

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field public static final LOGTAG:Ljava/lang/String; = "UnlockPINLock "

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

.field public static iSIMMEUnlockNo:I

.field private static result:Z

.field public static strPwd:Ljava/lang/String;

.field public static strWrongCode:Ljava/lang/String;


# instance fields
.field public PwdLength:I

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

.field public tempstrPwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/UnlockPINLock;->result:Z

    .line 83
    sput-object v1, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    .line 101
    sput-object v1, Lcom/android/phone/UnlockPINLock;->strWrongCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    iput v1, p0, Lcom/android/phone/UnlockPINLock;->retryCount:I

    .line 76
    iput-object v0, p0, Lcom/android/phone/UnlockPINLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 77
    iput-object v0, p0, Lcom/android/phone/UnlockPINLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 80
    iput-object v0, p0, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    .line 81
    iput-object v0, p0, Lcom/android/phone/UnlockPINLock;->mUnlockEmptyForSingleCard:Landroid/widget/TextView;

    .line 82
    iput v1, p0, Lcom/android/phone/UnlockPINLock;->PwdLength:I

    .line 84
    iput-object v0, p0, Lcom/android/phone/UnlockPINLock;->tempstrPwd:Ljava/lang/String;

    .line 85
    iput v1, p0, Lcom/android/phone/UnlockPINLock;->mPwdLeftChances:I

    .line 597
    new-instance v0, Lcom/android/phone/UnlockPINLock$4;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPINLock$4;-><init>(Lcom/android/phone/UnlockPINLock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock;->mHandler:Landroid/os/Handler;

    .line 917
    new-instance v0, Lcom/android/phone/UnlockPINLock$8;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPINLock$8;-><init>(Lcom/android/phone/UnlockPINLock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/UnlockPINLock;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock;->mUnlockResultNotify:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/phone/UnlockPINLock;->result:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    sput-boolean p0, Lcom/android/phone/UnlockPINLock;->result:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/phone/UnlockPINLock;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPINLock;->getRetryPinCount(I)I

    move-result v0

    return v0
.end method

.method public static bCharNumber(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 964
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 965
    const/4 v0, 0x1

    .line 967
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
    .line 973
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 974
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/phone/UnlockPINLock;->bCharNumber(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 975
    const/4 v1, 0x0

    .line 978
    :goto_1
    return v1

    .line 973
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getRetryPinCount(I)I
    .locals 2
    .parameter "simId"

    .prologue
    const/4 v1, -0x1

    .line 901
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 902
    const-string v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 904
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getRetryPukCount(I)I
    .locals 2
    .parameter "simId"

    .prologue
    const/4 v1, -0x1

    .line 895
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 896
    const-string v0, "gsm.sim.retry.puk1.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 898
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private unlockPIN(Ljava/lang/String;)V
    .locals 4
    .parameter "strPwd"

    .prologue
    .line 742
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 743
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_0

    .line 745
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/phone/UnlockPINLock;->getRetryPinCount(I)I

    move-result v1

    .line 746
    .local v1, retryCount:I
    if-lez v1, :cond_0

    .line 748
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][new Thread][Start]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance v2, Lcom/android/phone/UnlockPINLock$5;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/UnlockPINLock$5;-><init>(Lcom/android/phone/UnlockPINLock;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/phone/UnlockPINLock$5;->start()V

    .line 769
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][new Thread][Finsish]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
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

    .line 951
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 952
    long-to-int v2, p1

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 953
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    const-string v2, "UnlockPINLock "

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

    .line 954
    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 959
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-object v1
.end method

.method public getOptrNameBySlotId(J)Ljava/lang/String;
    .locals 4
    .parameter "Slot"

    .prologue
    .line 935
    const-string v1, "UnlockPINLock "

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

    .line 936
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 937
    long-to-int v1, p1

    invoke-static {p0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 938
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    const-string v1, "UnlockPINLock "

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

    .line 939
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 940
    const-string v1, "UnlockPINLock "

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

    .line 941
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 946
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 943
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 946
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 577
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 578
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/high16 v5, 0x2

    const/4 v7, -0x1

    const v6, 0x7f0b03f8

    .line 104
    const-string v3, "UnlockPINLock "

    const-string v4, "[onCreate]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->requestWindowFeature(I)Z

    .line 108
    const v3, 0x7f040046

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 114
    .local v2, win:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 115
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, -0x8000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 116
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 117
    const v3, 0x7f07012b

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    .line 120
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 121
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 124
    const v3, 0x7f07012c

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mbackspace:Landroid/widget/ImageView;

    .line 125
    const v3, 0x7f070125

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mbtnEmergencyCall:Landroid/widget/Button;

    .line 126
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b03f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 130
    const-string v3, "UnlockPINLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onCreate][iSIMMEUnlockNo]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    .line 132
    const-string v3, "PINLEFTRETRIES"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/UnlockPINLock;->retryCount:I

    .line 133
    const-string v3, "WRONGCODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/UnlockPINLock;->strWrongCode:Ljava/lang/String;

    .line 135
    :cond_0
    const-string v3, "UnlockPINLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onCreate][strWrongCode]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/UnlockPINLock;->strWrongCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const v3, 0x7f070126

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockResultNotify:Landroid/widget/TextView;

    .line 137
    sget-object v3, Lcom/android/phone/UnlockPINLock;->strWrongCode:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/phone/UnlockPINLock;->strWrongCode:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    const-string v3, "UnlockPINLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onCreate][Set Wrong code String]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockResultNotify:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_1
    const v3, 0x7f07012d

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 143
    new-instance v3, Lcom/android/phone/UnlockPINLock$TouchInput;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockPINLock$TouchInput;-><init>(Lcom/android/phone/UnlockPINLock;)V

    .line 145
    :cond_2
    const v3, 0x7f070124

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mDismissButton:Landroid/widget/ImageView;

    .line 147
    const v3, 0x7f070127

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockActionNotify:Landroid/widget/TextView;

    .line 148
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v4, 0x7f0b03fe

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const v3, 0x7f070128

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    .line 153
    const v3, 0x7f070131

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 154
    const v3, 0x7f070133

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 165
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mbackspace:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/phone/UnlockPINLock$1;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPINLock$1;-><init>(Lcom/android/phone/UnlockPINLock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mbackspace:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/phone/UnlockPINLock$2;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPINLock$2;-><init>(Lcom/android/phone/UnlockPINLock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 193
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mbtnEmergencyCall:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/UnlockPINLock$3;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPINLock$3;-><init>(Lcom/android/phone/UnlockPINLock;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const-string v3, "UnlockPINLock "

    const-string v4, "[unlock][onCreate]-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 241
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 584
    const-string v0, "UnlockPINLock "

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

    .line 585
    sparse-switch p1, :sswitch_data_0

    .line 593
    const-string v0, "UnlockPINLock "

    const-string v1, "[onKey][Pressed invalid Key]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 590
    :sswitch_0
    const-string v0, "UnlockPINLock "

    const-string v1, "[onKeyDown][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v0, 0x1

    goto :goto_0

    .line 585
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
    .line 909
    const-string v0, "UnlockPINLock "

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

    .line 910
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 911
    const-string v0, "UnlockPINLock "

    const-string v1, "[onKeyLongPress][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v0, 0x1

    .line 914
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockPINLock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 248
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const v7, 0x7f0b03f2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 257
    const-string v3, "UnlockPINLock "

    const-string v4, "[onResume]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPINLock;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/UnlockPINLock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 282
    const-string v3, "UnlockPINLock "

    const-string v4, "[onResume][GEMINI Card]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 284
    .local v1, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    sget v3, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    if-nez v3, :cond_1

    .line 286
    const-string v3, "UnlockPINLock "

    const-string v4, "[onResume][GEMINI Card][SIM1]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_0

    .line 288
    const-string v3, "UnlockPINLock "

    const-string v4, "[onResume][GEMINI Card][SIM1][PIN_REQUIRED]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0, v5}, Lcom/android/phone/UnlockPINLock;->getRetryPinCount(I)I

    move-result v2

    .line 291
    .local v2, retryCount:I
    const-string v3, "UnlockPINLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onResume][GEMINI Card][SIM1][PIN Retries Left] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

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

    .line 318
    :goto_0
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    sget v4, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/UnlockPINLock;->getOptrNameBySlotId(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .end local v2           #retryCount:I
    :goto_1
    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->finish()V

    goto :goto_1

    .line 301
    :cond_1
    const-string v3, "UnlockPINLock "

    const-string v4, "[onResume][GEMINI Card][SIM2]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_2

    .line 304
    const-string v3, "UnlockPINLock "

    const-string v4, "[onResume][GEMINI Card][SIM2][PIN_REQUIRED]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0, v6}, Lcom/android/phone/UnlockPINLock;->getRetryPinCount(I)I

    move-result v2

    .line 306
    .restart local v2       #retryCount:I
    const-string v3, "UnlockPINLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onResume][GEMINI Card][SIM2][PIN Retries Left] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v3, p0, Lcom/android/phone/UnlockPINLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

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

    .line 309
    .end local v2           #retryCount:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/UnlockPINLock;->finish()V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 230
    return-void
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 0
    .parameter "keyEventCode"

    .prologue
    .line 336
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .parameter "verifyType"
    .parameter "bRet"

    .prologue
    .line 876
    const-string v1, "UnlockPINLock "

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

    .line 878
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 882
    .local v0, retIntent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 883
    const-string v1, "UnlockPINLock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :goto_0
    return-void

    .line 886
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 888
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 890
    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockPINLock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public unlockPIN(ILjava/lang/String;)V
    .locals 6
    .parameter "simId"
    .parameter "strPwd"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 781
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 782
    .local v0, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    if-nez p1, :cond_2

    .line 784
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM1]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 788
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM1][PIN_REQUIRED]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-direct {p0, v4}, Lcom/android/phone/UnlockPINLock;->getRetryPinCount(I)I

    move-result v1

    .line 790
    .local v1, retryCount:I
    const-string v2, "UnlockPINLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPIN][Gemini Card][SIM1][PIN_REQUIRED][retryCount] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    if-lez v1, :cond_0

    .line 793
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM1][new Thread][Start]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v2, Lcom/android/phone/UnlockPINLock$6;

    invoke-direct {v2, p0, p2}, Lcom/android/phone/UnlockPINLock$6;-><init>(Lcom/android/phone/UnlockPINLock;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/phone/UnlockPINLock$6;->start()V

    .line 813
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM1][new Thread][Finsish]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_0
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM1]-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    .end local v1           #retryCount:I
    :cond_1
    :goto_0
    return-void

    .line 823
    :cond_2
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM2]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 827
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM2][PIN_REQUIRED]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-direct {p0, v5}, Lcom/android/phone/UnlockPINLock;->getRetryPinCount(I)I

    move-result v1

    .line 829
    .restart local v1       #retryCount:I
    const-string v2, "UnlockPINLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPIN][Gemini Card][SIM2][PIN_REQUIRED][retryCount] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    if-lez v1, :cond_3

    .line 832
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM2][new Thread][Start]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance v2, Lcom/android/phone/UnlockPINLock$7;

    invoke-direct {v2, p0, p2}, Lcom/android/phone/UnlockPINLock$7;-><init>(Lcom/android/phone/UnlockPINLock;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/phone/UnlockPINLock$7;->start()V

    .line 853
    const-string v2, "UnlockPINLock "

    const-string v3, "[unlockPIN][Gemini Card][SIM2][new Thread][Finsish]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_3
    const-string v2, "UnlockPINLock "

    const-string v3, "[Gemini Card][SetSIMLock][SIM 2]-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 983
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 985
    .local v0, newState:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 987
    const v1, 0x7f0b0407

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 991
    :goto_0
    return-void

    .line 989
    :cond_0
    const v1, 0x7f0b03f7

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
