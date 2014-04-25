.class public Lcom/android/phone/UnlockPIN2Lock;
.super Landroid/app/Activity;
.source "UnlockPIN2Lock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/UnlockPIN2Lock$TouchInput;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DIALOG_ENTERNUMBER:I = 0x78

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field public static final LOGTAG:Ljava/lang/String; = "UnlockPIN2Lock "

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

    .line 64
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/UnlockPIN2Lock;->result:Z

    .line 81
    sput-object v1, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    .line 99
    sput-object v1, Lcom/android/phone/UnlockPIN2Lock;->strWrongCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    .line 74
    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 75
    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 78
    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    .line 79
    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockEmptyForSingleCard:Landroid/widget/TextView;

    .line 80
    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock;->PwdLength:I

    .line 82
    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->tempstrPwd:Ljava/lang/String;

    .line 83
    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock;->mPwdLeftChances:I

    .line 573
    new-instance v0, Lcom/android/phone/UnlockPIN2Lock$4;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPIN2Lock$4;-><init>(Lcom/android/phone/UnlockPIN2Lock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mHandler:Landroid/os/Handler;

    .line 835
    new-instance v0, Lcom/android/phone/UnlockPIN2Lock$8;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPIN2Lock$8;-><init>(Lcom/android/phone/UnlockPIN2Lock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/UnlockPIN2Lock;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockResultNotify:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/UnlockPIN2Lock;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/UnlockPIN2Lock;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPIN2Lock;->getRetryPuk2Count(I)I

    move-result v0

    return v0
.end method

.method public static bCharNumber(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 879
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 880
    const/4 v0, 0x1

    .line 882
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
    .line 888
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 889
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/phone/UnlockPIN2Lock;->bCharNumber(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 890
    const/4 v1, 0x0

    .line 893
    :goto_1
    return v1

    .line 888
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 893
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getRetryPin2Count(I)I
    .locals 2
    .parameter "simId"

    .prologue
    const/4 v1, -0x1

    .line 818
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 819
    const-string v0, "gsm.sim.retry.pin2.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 821
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.pin2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getRetryPuk2Count(I)I
    .locals 2
    .parameter "simId"

    .prologue
    const/4 v1, -0x1

    .line 812
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 813
    const-string v0, "gsm.sim.retry.puk2.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 815
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private unlockPIN2(Ljava/lang/String;)V
    .locals 6
    .parameter "strPwd"

    .prologue
    .line 703
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 704
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I

    move-result v2

    .line 705
    .local v2, retryCount:I
    if-lez v2, :cond_0

    .line 707
    const-string v3, "UnlockPIN2Lock "

    const-string v4, "[unlockPIN][new Thread][Start]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const-string v3, "UnlockPIN2Lock "

    const-string v4, "[unlockPIN][new Thread][Run]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v3, "UnlockPIN2Lock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[unlockPIN][new Thread][TogetResult][strPwd]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 712
    .local v0, callback_query:Landroid/os/Message;
    new-instance v3, Lcom/android/phone/UnlockPIN2Lock$5;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/android/phone/UnlockPIN2Lock$5;-><init>(Lcom/android/phone/UnlockPIN2Lock;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {v3}, Lcom/android/phone/UnlockPIN2Lock$5;->start()V

    .line 718
    const-string v3, "UnlockPIN2Lock "

    const-string v4, "[unlockPIN][new Thread][Finsish]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    .end local v0           #callback_query:Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "Slot"

    .prologue
    const/4 v1, 0x0

    .line 866
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 867
    long-to-int v2, p1

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 868
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    const-string v2, "UnlockPIN2Lock "

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

    .line 869
    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 874
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-object v1
.end method

.method public getOptrNameBySlotId(J)Ljava/lang/String;
    .locals 4
    .parameter "Slot"

    .prologue
    .line 850
    const-string v1, "UnlockPIN2Lock "

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

    .line 851
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 852
    long-to-int v1, p1

    invoke-static {p0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 853
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    const-string v1, "UnlockPIN2Lock "

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

    .line 854
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 855
    const-string v1, "UnlockPIN2Lock "

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

    .line 856
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 861
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 858
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 861
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 553
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 554
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0b03f8

    const/high16 v5, 0x2

    const/4 v6, -0x1

    .line 102
    const-string v3, "UnlockPIN2Lock "

    const-string v4, "[onCreate]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->requestWindowFeature(I)Z

    .line 106
    const v3, 0x7f040046

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->setContentView(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 112
    .local v2, win:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 113
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, -0x8000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 114
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 115
    const v3, 0x7f07012b

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    .line 118
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 119
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 124
    const v3, 0x7f07012c

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mbackspace:Landroid/widget/ImageView;

    .line 125
    const v3, 0x7f070125

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    .line 126
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b03f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/UnlockPIN2Lock;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 130
    const-string v3, "UnlockPIN2Lock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onCreate][iSIMMEUnlockNo]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    .line 132
    const-string v3, "PINLEFTRETRIES"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    .line 133
    const-string v3, "WRONGCODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/UnlockPIN2Lock;->strWrongCode:Ljava/lang/String;

    .line 135
    :cond_0
    const v3, 0x7f07012d

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 137
    new-instance v3, Lcom/android/phone/UnlockPIN2Lock$TouchInput;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockPIN2Lock$TouchInput;-><init>(Lcom/android/phone/UnlockPIN2Lock;)V

    .line 139
    :cond_1
    const v3, 0x7f070124

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mDismissButton:Landroid/widget/ImageView;

    .line 141
    const v3, 0x7f070126

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockResultNotify:Landroid/widget/TextView;

    .line 142
    sget-object v3, Lcom/android/phone/UnlockPIN2Lock;->strWrongCode:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/phone/UnlockPIN2Lock;->strWrongCode:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockResultNotify:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_2
    const v3, 0x7f070127

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockActionNotify:Landroid/widget/TextView;

    .line 146
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v4, 0x7f0b03fd

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const v3, 0x7f070128

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    .line 151
    const v3, 0x7f070131

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 152
    const v3, 0x7f070133

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 163
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mbackspace:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/phone/UnlockPIN2Lock$1;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPIN2Lock$1;-><init>(Lcom/android/phone/UnlockPIN2Lock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mbackspace:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/phone/UnlockPIN2Lock$2;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPIN2Lock$2;-><init>(Lcom/android/phone/UnlockPIN2Lock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 189
    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/UnlockPIN2Lock$3;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPIN2Lock$3;-><init>(Lcom/android/phone/UnlockPIN2Lock;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const-string v3, "UnlockPIN2Lock "

    const-string v4, "[unlock][onCreate]-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 237
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 560
    const-string v0, "UnlockPIN2Lock "

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

    .line 561
    sparse-switch p1, :sswitch_data_0

    .line 569
    const-string v0, "UnlockPIN2Lock "

    const-string v1, "[onKey][Pressed invalid Key]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 566
    :sswitch_0
    const-string v0, "UnlockPIN2Lock "

    const-string v1, "[onKeyDown][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v0, 0x1

    goto :goto_0

    .line 561
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
    .line 826
    const-string v0, "UnlockPIN2Lock "

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

    .line 827
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 828
    const-string v0, "UnlockPIN2Lock "

    const-string v1, "[onKeyLongPress][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/4 v0, 0x1

    .line 831
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockPIN2Lock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 244
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const v5, 0x7f0b03f2

    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 253
    const-string v2, "UnlockPIN2Lock "

    const-string v3, "[onResume]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockPIN2Lock;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 257
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/UnlockPIN2Lock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    const-string v2, "UnlockPIN2Lock "

    const-string v3, "[onResume][GEMINI Card]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget v2, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    if-nez v2, :cond_0

    .line 275
    const-string v2, "UnlockPIN2Lock "

    const-string v3, "[onResume][GEMINI Card][SIM1]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I

    move-result v1

    .line 278
    .local v1, retryCount:I
    const-string v2, "UnlockPIN2Lock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume][GEMINI Card][SIM1][PIN Retries Left] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :goto_0
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    sget v3, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/UnlockPIN2Lock;->getOptrNameBySlotId(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    return-void

    .line 284
    .end local v1           #retryCount:I
    :cond_0
    const-string v2, "UnlockPIN2Lock "

    const-string v3, "[onResume][GEMINI Card][SIM2]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I

    move-result v1

    .line 287
    .restart local v1       #retryCount:I
    const-string v2, "UnlockPIN2Lock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume][GEMINI Card][SIM2][PIN Retries Left] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 226
    return-void
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 0
    .parameter "keyEventCode"

    .prologue
    .line 311
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .parameter "verifyType"
    .parameter "bRet"

    .prologue
    .line 794
    const-string v1, "UnlockPIN2Lock "

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

    .line 796
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 800
    .local v0, retIntent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 801
    const-string v1, "UnlockPIN2Lock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :goto_0
    return-void

    .line 804
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 806
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 808
    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockPIN2Lock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public unlockPIN2(ILjava/lang/String;)V
    .locals 7
    .parameter "simId"
    .parameter "strPwd"

    .prologue
    .line 726
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 727
    .local v2, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    if-nez p1, :cond_1

    .line 729
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM1]+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I

    move-result v3

    .line 731
    .local v3, retryCount:I
    const-string v4, "UnlockPIN2Lock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[unlockPIN][Gemini Card][SIM1][PIN_REQUIRED][retryCount] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    if-lez v3, :cond_0

    .line 734
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM1][new Thread][Start]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM1][new Thread][Run]+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const-string v4, "UnlockPIN2Lock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[unlockPIN][Gemini Card][SIM1][TogetResult][strPwd]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v4, p0, Lcom/android/phone/UnlockPIN2Lock;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 740
    .local v0, callback_query2:Landroid/os/Message;
    new-instance v4, Lcom/android/phone/UnlockPIN2Lock$6;

    invoke-direct {v4, p0, v2, p2, v0}, Lcom/android/phone/UnlockPIN2Lock$6;-><init>(Lcom/android/phone/UnlockPIN2Lock;Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {v4}, Lcom/android/phone/UnlockPIN2Lock$6;->start()V

    .line 746
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM1][new Thread][Finsish]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .end local v0           #callback_query2:Landroid/os/Message;
    :cond_0
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM1]-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :goto_0
    return-void

    .line 754
    .end local v3           #retryCount:I
    :cond_1
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM2]+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I

    move-result v3

    .line 756
    .restart local v3       #retryCount:I
    const-string v4, "UnlockPIN2Lock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[unlockPIN][Gemini Card][SIM2][PIN_REQUIRED][retryCount] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    if-lez v3, :cond_2

    .line 759
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM2][new Thread][Start]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM2][new Thread][Run]+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const-string v4, "UnlockPIN2Lock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[unlockPIN][Gemini Card][SIM2][TogetResult][strPwd]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v4, p0, Lcom/android/phone/UnlockPIN2Lock;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6a

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 764
    .local v1, callback_query3:Landroid/os/Message;
    new-instance v4, Lcom/android/phone/UnlockPIN2Lock$7;

    invoke-direct {v4, p0, v2, p2, v1}, Lcom/android/phone/UnlockPIN2Lock$7;-><init>(Lcom/android/phone/UnlockPIN2Lock;Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {v4}, Lcom/android/phone/UnlockPIN2Lock$7;->start()V

    .line 771
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[unlockPIN][Gemini Card][SIM2][new Thread][Finsish]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    .end local v1           #callback_query3:Landroid/os/Message;
    :cond_2
    const-string v4, "UnlockPIN2Lock "

    const-string v5, "[Gemini Card][SetSIMLock][SIM 2]-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 898
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 900
    .local v0, newState:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 902
    const v1, 0x7f0b0407

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 906
    :goto_0
    return-void

    .line 904
    :cond_0
    const v1, 0x7f0b03f7

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
