.class public Lcom/android/phone/UnlockSIMLock;
.super Landroid/app/Activity;
.source "UnlockSIMLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/UnlockSIMLock$TouchInput;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final CPLOCKTYPE:I = 0x3

.field private static final DIALOG_ENTERNUMBER:I = 0x78

.field public static LOCKCATEGORY:Ljava/lang/String; = null

.field public static final LOGTAG:Ljava/lang/String; = "UnlockSIMLock "

.field private static final NPLOCKTYPE:I = 0x0

.field private static final NSPLOCKTYPE:I = 0x1

.field private static final SIMPLOCKTYPE:I = 0x4

.field private static final SPLOCKTYPE:I = 0x2

.field public static final START_TYPE:Ljava/lang/String; = "start_type"

.field public static final START_TYPE_REQ:Ljava/lang/String; = "request"

.field public static final START_TYPE_RSP:Ljava/lang/String; = "response"

.field public static final UNLOCK_ICC_SML_COMPLETE:I = 0x78

.field public static final UNLOCK_ICC_SML_QUERYLEFTTIMES:I = 0x6e

.field static final VERIFY_RESULT:Ljava/lang/String; = "verfiy_result"

.field static final VERIFY_TYPE:Ljava/lang/String; = "verfiy_type"

.field static final VERIFY_TYPE_PIN:I = 0x1f5

.field static final VERIFY_TYPE_PIN2:I = 0x1f8

.field static final VERIFY_TYPE_PUK:I = 0x1f6

.field static final VERIFY_TYPE_PUK2:I = 0x1f9

.field static final VERIFY_TYPE_SIMMELOCK:I = 0x1f7

.field private static intSIMNumber:I

.field private static lockCategory:I


# instance fields
.field public PwdLength:I

.field public SIM1MELockStatus:[I

.field public SIM2MELockStatus:[I

.field public iSIM1Unlocked:I

.field public iSIM2Unlocked:I

.field public iSIMMELockStatus:I

.field public iSIMMEUnlockNo:I

.field private mDismissButton:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

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

.field private pm:Landroid/os/PowerManager;

.field public progressDialog:Landroid/app/ProgressDialog;

.field public strLockName:[Ljava/lang/String;

.field public strPwd:Ljava/lang/String;

.field public tempstrPwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 73
    const-string v0, "LockCategory"

    sput-object v0, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 74
    sput v1, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    .line 75
    sput v1, Lcom/android/phone/UnlockSIMLock;->intSIMNumber:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    .line 71
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    .line 72
    iput v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    .line 86
    iput-object v3, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 87
    iput-object v3, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 90
    iput-object v3, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    .line 91
    iput-object v3, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockEmptyForSingleCard:Landroid/widget/TextView;

    .line 92
    iput v1, p0, Lcom/android/phone/UnlockSIMLock;->PwdLength:I

    .line 93
    iput-object v3, p0, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 94
    iput-object v3, p0, Lcom/android/phone/UnlockSIMLock;->tempstrPwd:Ljava/lang/String;

    .line 95
    iput v1, p0, Lcom/android/phone/UnlockSIMLock;->mPwdLeftChances:I

    .line 96
    iput v1, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    .line 98
    iput v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIM1Unlocked:I

    .line 99
    iput v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIM2Unlocked:I

    .line 101
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, " [NP]"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, " [NSP]"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " [SP]"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " [CP]"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " [SIMP]"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock;->strLockName:[Ljava/lang/String;

    .line 105
    iput-object v3, p0, Lcom/android/phone/UnlockSIMLock;->pm:Landroid/os/PowerManager;

    .line 262
    new-instance v0, Lcom/android/phone/UnlockSIMLock$4;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockSIMLock$4;-><init>(Lcom/android/phone/UnlockSIMLock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;

    .line 741
    new-instance v0, Lcom/android/phone/UnlockSIMLock$5;

    invoke-direct {v0, p0}, Lcom/android/phone/UnlockSIMLock$5;-><init>(Lcom/android/phone/UnlockSIMLock;)V

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 70
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 71
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/UnlockSIMLock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/UnlockSIMLock;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/UnlockSIMLock;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    return-object v0
.end method

.method public static bCharNumber(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 783
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 784
    const/4 v0, 0x1

    .line 786
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
    .line 792
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 793
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/phone/UnlockSIMLock;->bCharNumber(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 794
    const/4 v1, 0x0

    .line 797
    :goto_1
    return v1

    .line 792
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 797
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private decideLockCategory()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 815
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 816
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 817
    const-string v1, "PhoneConstants.GEMINI_SIM_ID_KEY"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    .line 818
    const-string v1, "SIMMELOCKSTATUS"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    .line 819
    const-string v1, "UnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate][iSIMMELockStatus][original]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string v1, "UnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate][iSIMMEUnlockNo]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit16 v2, v2, 0x200

    shr-int/lit8 v2, v2, 0x9

    aput v2, v1, v5

    .line 822
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit16 v2, v2, 0x100

    shr-int/lit8 v2, v2, 0x8

    aput v2, v1, v4

    .line 823
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit16 v2, v2, 0x80

    shr-int/lit8 v2, v2, 0x7

    aput v2, v1, v6

    .line 824
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x40

    shr-int/lit8 v2, v2, 0x6

    aput v2, v1, v7

    .line 825
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x20

    shr-int/lit8 v2, v2, 0x5

    aput v2, v1, v8

    .line 826
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x10

    shr-int/lit8 v2, v2, 0x4

    aput v2, v1, v5

    .line 827
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x8

    shr-int/lit8 v2, v2, 0x3

    aput v2, v1, v4

    .line 828
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x4

    shr-int/lit8 v2, v2, 0x2

    aput v2, v1, v6

    .line 829
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x2

    shr-int/lit8 v2, v2, 0x1

    aput v2, v1, v7

    .line 830
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x1

    shr-int/lit8 v2, v2, 0x0

    aput v2, v1, v8

    .line 834
    :cond_0
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v5

    if-ne v1, v4, :cond_2

    .line 835
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 836
    sput v5, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    .line 875
    :cond_1
    :goto_0
    return-void

    .line 837
    :cond_2
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v4

    if-ne v1, v4, :cond_3

    .line 839
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 840
    sput v4, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 841
    :cond_3
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v6

    if-ne v1, v4, :cond_4

    .line 843
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 844
    sput v6, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 845
    :cond_4
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v7

    if-ne v1, v4, :cond_5

    .line 847
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 848
    sput v7, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 849
    :cond_5
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v8

    if-ne v1, v4, :cond_6

    .line 851
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 852
    sput v8, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 853
    :cond_6
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v5

    if-ne v1, v4, :cond_7

    .line 855
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 856
    sput v5, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 857
    :cond_7
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v4

    if-ne v1, v4, :cond_8

    .line 859
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 860
    sput v4, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 861
    :cond_8
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v6

    if-ne v1, v4, :cond_9

    .line 863
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 864
    sput v6, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 865
    :cond_9
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v7

    if-ne v1, v4, :cond_a

    .line 867
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 868
    sput v7, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 869
    :cond_a
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v8

    if-ne v1, v4, :cond_1

    .line 871
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 872
    sput v8, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    goto/16 :goto_0
.end method


# virtual methods
.method public getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "Slot"

    .prologue
    const/4 v1, 0x0

    .line 770
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 771
    long-to-int v2, p1

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 772
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    const-string v2, "UnlockSIMLock "

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

    .line 773
    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 778
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-object v1
.end method

.method public getOptrNameBySlotId(J)Ljava/lang/String;
    .locals 4
    .parameter "Slot"

    .prologue
    .line 754
    const-string v1, "UnlockSIMLock "

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

    .line 755
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 756
    long-to-int v1, p1

    invoke-static {p0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 757
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    const-string v1, "UnlockSIMLock "

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

    .line 758
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 759
    const-string v1, "UnlockSIMLock "

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

    .line 760
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 765
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 762
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 765
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 680
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 681
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/high16 v4, 0x2

    .line 107
    const-string v2, "UnlockSIMLock "

    const-string v3, "[onCreate]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->pm:Landroid/os/PowerManager;

    .line 110
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->requestWindowFeature(I)Z

    .line 112
    const v2, 0x7f040046

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->setContentView(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 118
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 119
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x8000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 120
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 121
    const v2, 0x7f07012b

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    .line 122
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 123
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 124
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 125
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 129
    const v2, 0x7f07012c

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mbackspace:Landroid/widget/ImageView;

    .line 130
    const v2, 0x7f070125

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    .line 131
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-direct {p0}, Lcom/android/phone/UnlockSIMLock;->decideLockCategory()V

    .line 133
    const-string v2, "UnlockSIMLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onCreate][lockCategory]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intSIMNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/UnlockSIMLock;->intSIMNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const v2, 0x7f07012d

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 136
    new-instance v2, Lcom/android/phone/UnlockSIMLock$TouchInput;

    invoke-direct {v2, p0}, Lcom/android/phone/UnlockSIMLock$TouchInput;-><init>(Lcom/android/phone/UnlockSIMLock;)V

    .line 138
    :cond_0
    const v2, 0x7f070124

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mDismissButton:Landroid/widget/ImageView;

    .line 140
    const v2, 0x7f070126

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;

    .line 142
    const v2, 0x7f070127

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockActionNotify:Landroid/widget/TextView;

    .line 143
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockActionNotify:Landroid/widget/TextView;

    const v3, 0x7f0b03fb

    invoke-virtual {p0, v3}, Lcom/android/phone/UnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const v2, 0x7f070128

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    .line 148
    const v2, 0x7f070131

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 149
    const v2, 0x7f070133

    invoke-virtual {p0, v2}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 160
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mbackspace:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/phone/UnlockSIMLock$1;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockSIMLock$1;-><init>(Lcom/android/phone/UnlockSIMLock;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mbackspace:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/phone/UnlockSIMLock$2;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockSIMLock$2;-><init>(Lcom/android/phone/UnlockSIMLock;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    iget-object v2, p0, Lcom/android/phone/UnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    new-instance v3, Lcom/android/phone/UnlockSIMLock$3;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockSIMLock$3;-><init>(Lcom/android/phone/UnlockSIMLock;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const-string v2, "UnlockSIMLock "

    const-string v3, "[UnlockSIMLock][onCreate]-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 231
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 233
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 685
    const-string v0, "UnlockSIMLock "

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

    .line 686
    sparse-switch p1, :sswitch_data_0

    .line 694
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onKey][Pressed invalid Key]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 691
    :sswitch_0
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onKeyDown][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v0, 0x1

    goto :goto_0

    .line 686
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
    .line 733
    const-string v0, "UnlockSIMLock "

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

    .line 734
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 735
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onKeyLongPress][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v0, 0x1

    .line 738
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 254
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onNewIntent]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 257
    invoke-direct {p0}, Lcom/android/phone/UnlockSIMLock;->decideLockCategory()V

    .line 258
    const-string v0, "UnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onNewIntent][lockCategory]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intSIMNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/UnlockSIMLock;->intSIMNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onPause]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->pm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const-string v0, "UnlockSIMLock "

    const-string v1, "screen is off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockSIMLock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 247
    return-void
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/16 v5, 0x6e

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 364
    invoke-static {}, Lcom/android/phone/PowerOnUnlockSIMLock;->getInstance()Lcom/android/phone/PowerOnUnlockSIMLock;

    move-result-object v10

    .line 365
    .local v10, pInstance:Lcom/android/phone/PowerOnUnlockSIMLock;
    invoke-static {}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->getInstance()Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    move-result-object v11

    .line 366
    .local v11, psInstance:Lcom/android/phone/PowerOnSetupUnlockSIMLock;
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 367
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onResume]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    if-eqz v10, :cond_0

    .line 370
    invoke-virtual {v10}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    .line 371
    const-string v0, "UnlockSIMLock "

    const-string v1, "PowerOnUnlockSIMLock just pause, not destroy, so destroy it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    if-eqz v11, :cond_1

    .line 375
    invoke-virtual {v11}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->finish()V

    .line 376
    const-string v0, "UnlockSIMLock "

    const-string v1, "PowerOnSetupUnlockSIMLock just pause, so destroy it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockSIMLock;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 380
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 381
    .local v8, intentFilter:Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/android/phone/UnlockSIMLock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 384
    const-string v0, "UnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume][iSIMMELockStatus] : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget v0, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMELockStatus:I

    if-nez v0, :cond_2

    .line 387
    invoke-virtual {p0}, Lcom/android/phone/UnlockSIMLock;->finish()V

    .line 423
    :goto_0
    return-void

    .line 399
    :cond_2
    const-string v0, "UnlockSIMLock "

    const-string v1, "[mHandler][UNLOCK_ICC_SML_COMPLETE][GEMINI Card]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 401
    .local v9, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget v0, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v0, :cond_3

    .line 403
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 404
    .local v7, callback_query:Landroid/os/Message;
    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget v1, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 416
    :goto_1
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/UnlockSIMLock;->getOptrNameBySlotId(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onResume]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    .end local v7           #callback_query:Landroid/os/Message;
    :cond_3
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 409
    .restart local v7       #callback_query:Landroid/os/Message;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget v1, Lcom/android/phone/UnlockSIMLock;->lockCategory:I

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "UnlockSIMLock "

    const-string v1, "[onStart]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 224
    return-void
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 0
    .parameter "keyEventCode"

    .prologue
    .line 437
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .parameter "verifyType"
    .parameter "bRet"

    .prologue
    .line 714
    const-string v1, "UnlockSIMLock "

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

    .line 716
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 720
    .local v0, retIntent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 721
    const-string v1, "UnlockSIMLock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :goto_0
    return-void

    .line 724
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 728
    invoke-virtual {p0, v0}, Lcom/android/phone/UnlockSIMLock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 802
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 804
    .local v0, newState:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 806
    const v1, 0x7f0b0407

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 810
    :goto_0
    return-void

    .line 808
    :cond_0
    const v1, 0x7f0b03f7

    invoke-virtual {p0, v1}, Lcom/android/phone/UnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
