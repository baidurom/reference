.class public Lcom/android/phone/UnlockPUK2Lock;
.super Landroid/app/Activity;
.source "UnlockPUK2Lock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/UnlockPUK2Lock$TouchInput;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DIALOG_ENTERNUMBER:I = 0x78

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field public static final LOGTAG:Ljava/lang/String; = "UnlockPUK2Lock "

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
    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/UnlockPUK2Lock;->result:Z

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/UnlockPUK2Lock;->strWrongCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 75
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 78
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    .line 79
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockEmptyForSingleCard:Landroid/widget/TextView;

    .line 80
    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    .line 81
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->tempstrPwd:Ljava/lang/String;

    .line 83
    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock;->mPwdLeftChances:I

    .line 85
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUK:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->strOriPIN:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->strConPIN:Ljava/lang/String;

    .line 99
    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    .line 100
    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    .line 644
    new-instance v0, Lcom/android/phone/UnlockPUK2Lock$4;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPUK2Lock$4;-><init>(Lcom/android/phone/UnlockPUK2Lock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mHandler:Landroid/os/Handler;

    .line 893
    new-instance v0, Lcom/android/phone/UnlockPUK2Lock$8;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockPUK2Lock$8;-><init>(Lcom/android/phone/UnlockPUK2Lock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/UnlockPUK2Lock;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockResultNotify:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/UnlockPUK2Lock;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I

    move-result v0

    return v0
.end method

.method public static bCharNumber(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 937
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 938
    const/4 v0, 0x1

    .line 940
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
    .line 946
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 947
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/phone/UnlockPUK2Lock;->bCharNumber(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 948
    const/4 v1, 0x0

    .line 951
    :goto_1
    return v1

    .line 946
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 951
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getRetryPin2Count(I)I
    .locals 2
    .parameter "simId"

    .prologue
    const/4 v1, -0x1

    .line 876
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 877
    const-string v0, "gsm.sim.retry.pin2.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 879
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

    .line 869
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 870
    const-string v0, "gsm.sim.retry.puk2.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 872
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private unlockPUK2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "strPUK"
    .parameter "strPwd"

    .prologue
    .line 742
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 743
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I

    move-result v6

    .line 744
    .local v6, retryCount:I
    if-lez v6, :cond_0

    .line 746
    const-string v0, "UnlockPUK2Lock "

    const-string v1, "[unlockPUK][new Thread][Start]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string v0, "UnlockPUK2Lock "

    const-string v1, "[unlockPUK][new Thread][Run]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const-string v0, "UnlockPUK2Lock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[unlockPUK][new Thread][TogetResult][strPUK]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v0, "UnlockPUK2Lock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[unlockPUK][new Thread][TogetResult][strPIN]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    .line 752
    .local v5, callback_query:Landroid/os/Message;
    new-instance v0, Lcom/android/phone/UnlockPUK2Lock$5;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/UnlockPUK2Lock$5;-><init>(Lcom/android/phone/UnlockPUK2Lock;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {v0}, Lcom/android/phone/UnlockPUK2Lock$5;->start()V

    .line 758
    const-string v0, "UnlockPUK2Lock "

    const-string v1, "[unlockPUK][new Thread][Finsish]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .end local v5           #callback_query:Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "Slot"

    .prologue
    const/4 v1, 0x0

    .line 924
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 925
    long-to-int v2, p1

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 926
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    const-string v2, "UnlockPUK2Lock "

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

    .line 927
    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 932
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-object v1
.end method

.method public getOptrNameBySlotId(J)Ljava/lang/String;
    .locals 4
    .parameter "Slot"

    .prologue
    .line 908
    const-string v1, "UnlockPUK2Lock "

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

    .line 909
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 910
    long-to-int v1, p1

    invoke-static {p0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 911
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    const-string v1, "UnlockPUK2Lock "

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

    .line 912
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 913
    const-string v1, "UnlockPUK2Lock "

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

    .line 914
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 919
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 916
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 919
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 641
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 642
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0b03f8

    const/high16 v5, 0x2

    const/4 v6, -0x1

    .line 108
    const-string v3, "UnlockPUK2Lock "

    const-string v4, "[onCreate]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->requestWindowFeature(I)Z

    .line 112
    const v3, 0x7f040046

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->setContentView(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 118
    .local v2, win:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 119
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, -0x8000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 120
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 121
    const v3, 0x7f07012b

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    .line 124
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 125
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 128
    const v3, 0x7f07012c

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mbackspace:Landroid/widget/ImageView;

    .line 129
    const v3, 0x7f070125

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    .line 130
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b03f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 134
    const-string v3, "UnlockPUK2Lock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onStart][original]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    .line 136
    const-string v3, "PINLEFTRETRIES"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    .line 137
    const-string v3, "PUKPHASE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    .line 138
    const-string v3, "INPUTPUK"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUK:Ljava/lang/String;

    .line 139
    const-string v3, "INPUTORIPIN"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->strOriPIN:Ljava/lang/String;

    .line 140
    const-string v3, "INPUTCONPIN"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->strConPIN:Ljava/lang/String;

    .line 141
    const-string v3, "WRONGCODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/UnlockPUK2Lock;->strWrongCode:Ljava/lang/String;

    .line 144
    :cond_0
    const v3, 0x7f07012d

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 146
    new-instance v3, Lcom/android/phone/UnlockPUK2Lock$TouchInput;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockPUK2Lock$TouchInput;-><init>(Lcom/android/phone/UnlockPUK2Lock;)V

    .line 148
    :cond_1
    const v3, 0x7f070124

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mDismissButton:Landroid/widget/ImageView;

    .line 150
    const v3, 0x7f070126

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockResultNotify:Landroid/widget/TextView;

    .line 151
    sget-object v3, Lcom/android/phone/UnlockPUK2Lock;->strWrongCode:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/phone/UnlockPUK2Lock;->strWrongCode:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockResultNotify:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_2
    const v3, 0x7f070127

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockActionNotify:Landroid/widget/TextView;

    .line 155
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 156
    :cond_3
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v4, 0x7f0b03ff

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_4
    :goto_0
    const v3, 0x7f070128

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    .line 167
    const v3, 0x7f070131

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 168
    const v3, 0x7f070133

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 180
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mbackspace:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/phone/UnlockPUK2Lock$1;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPUK2Lock$1;-><init>(Lcom/android/phone/UnlockPUK2Lock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mbackspace:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/phone/UnlockPUK2Lock$2;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPUK2Lock$2;-><init>(Lcom/android/phone/UnlockPUK2Lock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 206
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/UnlockPUK2Lock$3;

    invoke-direct {v4, p0}, Lcom/android/phone/UnlockPUK2Lock$3;-><init>(Lcom/android/phone/UnlockPUK2Lock;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    const-string v3, "UnlockPUK2Lock "

    const-string v4, "[unlock][onCreate]-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 157
    :cond_5
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 158
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v4, 0x7f0b0400

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    :cond_6
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 160
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v4, 0x7f0b0401

    invoke-virtual {p0, v4}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 249
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 855
    const-string v0, "UnlockPUK2Lock "

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

    .line 856
    sparse-switch p1, :sswitch_data_0

    .line 864
    const-string v0, "UnlockPUK2Lock "

    const-string v1, "[onKey][Pressed invalid Key]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 861
    :sswitch_0
    const-string v0, "UnlockPUK2Lock "

    const-string v1, "[onKeyDown][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v0, 0x1

    goto :goto_0

    .line 856
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
    .line 884
    const-string v0, "UnlockPUK2Lock "

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

    .line 885
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 886
    const-string v0, "UnlockPUK2Lock "

    const-string v1, "[onKeyLongPress][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const/4 v0, 0x1

    .line 889
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockPUK2Lock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 256
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const v7, 0x7f0b03f2

    const/16 v6, 0x1f9

    const/4 v5, 0x0

    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 263
    const-string v2, "UnlockPUK2Lock "

    const-string v3, "[onResume]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockPUK2Lock;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/UnlockPUK2Lock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 289
    :cond_0
    const-string v2, "UnlockPUK2Lock "

    const-string v3, "[onResume][GEMINI Card]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget v2, p0, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    if-nez v2, :cond_3

    .line 293
    invoke-direct {p0, v5}, Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I

    move-result v1

    .line 294
    .local v1, retryCount:I
    const-string v2, "UnlockPUK2Lock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume][GEMINI Card][SIM1][PUK Retries Left] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-lez v1, :cond_2

    .line 296
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

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

    .line 326
    .end local v1           #retryCount:I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/UnlockPUK2Lock;->getOptrNameBySlotId(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :goto_1
    return-void

    .line 298
    .restart local v1       #retryCount:I
    :cond_2
    invoke-virtual {p0, v6, v5}, Lcom/android/phone/UnlockPUK2Lock;->sendVerifyResult(IZ)V

    .line 299
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto :goto_1

    .line 305
    .end local v1           #retryCount:I
    :cond_3
    const-string v2, "UnlockPUK2Lock "

    const-string v3, "[onResume][GEMINI Card][SIM2]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I

    move-result v1

    .line 307
    .restart local v1       #retryCount:I
    const-string v2, "UnlockPUK2Lock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume][GEMINI Card][SIM2][PUK Retries Left] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-lez v1, :cond_4

    .line 309
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

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

    .line 311
    :cond_4
    invoke-virtual {p0, v6, v5}, Lcom/android/phone/UnlockPUK2Lock;->sendVerifyResult(IZ)V

    .line 312
    invoke-virtual {p0}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto :goto_1

    .line 318
    .end local v1           #retryCount:I
    :cond_5
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 320
    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 242
    return-void
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 0
    .parameter "keyEventCode"

    .prologue
    .line 344
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .parameter "verifyType"
    .parameter "bRet"

    .prologue
    .line 835
    const-string v1, "UnlockPUK2Lock "

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

    .line 837
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 841
    .local v0, retIntent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 842
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_0
    return-void

    .line 845
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 847
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 849
    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockPUK2Lock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public unlockPUK2(ILjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "simId"
    .parameter "strPUK"
    .parameter "strPwd"

    .prologue
    .line 765
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 766
    .local v3, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    if-nez p1, :cond_1

    .line 768
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM1]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I

    move-result v13

    .line 771
    .local v13, retryCount:I
    const-string v1, "UnlockPUK2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM1][PUK_REQUIRED][retryCount] : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    if-lez v13, :cond_0

    .line 774
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM1][new Thread][Start]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM1][new Thread][Run]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string v1, "UnlockPUK2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM1][TogetResult][strPUK]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const-string v1, "UnlockPUK2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM1][TogetResult][strPIN]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 781
    .local v6, callback_query2:Landroid/os/Message;
    new-instance v1, Lcom/android/phone/UnlockPUK2Lock$6;

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/UnlockPUK2Lock$6;-><init>(Lcom/android/phone/UnlockPUK2Lock;Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {v1}, Lcom/android/phone/UnlockPUK2Lock$6;->start()V

    .line 786
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM1][new Thread][Finsish]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    .end local v6           #callback_query2:Landroid/os/Message;
    :cond_0
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM1]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :goto_0
    return-void

    .line 796
    .end local v13           #retryCount:I
    :cond_1
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM2]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I

    move-result v13

    .line 798
    .restart local v13       #retryCount:I
    const-string v1, "UnlockPUK2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM2][PIN_REQUIRED][retryCount] : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    if-lez v13, :cond_2

    .line 801
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM2][new Thread][Start]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM2][new Thread][Run]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const-string v1, "UnlockPUK2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM2][TogetResult][strPUK]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const-string v1, "UnlockPUK2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM2][TogetResult][strPIN]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v12

    .line 808
    .local v12, callback_query3:Landroid/os/Message;
    new-instance v7, Lcom/android/phone/UnlockPUK2Lock$7;

    move-object v8, p0

    move-object v9, v3

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v7 .. v12}, Lcom/android/phone/UnlockPUK2Lock$7;-><init>(Lcom/android/phone/UnlockPUK2Lock;Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {v7}, Lcom/android/phone/UnlockPUK2Lock$7;->start()V

    .line 814
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[unlockPUK][Gemini Card][SIM2][new Thread][Finsish]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 816
    .end local v12           #callback_query3:Landroid/os/Message;
    :cond_2
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[Gemini Card][SetSIMLock][SIM 2]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 956
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 958
    .local v0, newState:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 960
    const v1, 0x7f0b0407

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 964
    :goto_0
    return-void

    .line 962
    :cond_0
    const v1, 0x7f0b03f7

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
