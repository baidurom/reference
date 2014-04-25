.class public Lcom/android/phone/PowerOnUnlockSIMLock;
.super Landroid/app/Activity;
.source "PowerOnUnlockSIMLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final CPLOCKTYPE:I = 0x3

.field private static final DIALOG_ENTERNUMBER:I = 0x78

.field public static LOCKCATEGORY:Ljava/lang/String; = null

.field public static final LOGTAG:Ljava/lang/String; = "PowerOnUnlockSIMLock "

.field private static final NPLOCKTYPE:I = 0x0

.field private static final NSPLOCKTYPE:I = 0x1

.field private static SIM1LockedPermanently:I = 0x0

.field private static SIM2LockedPermanently:I = 0x0

.field private static SIMLOCK_TYPE_PIN:I = 0x0

.field private static final SIMLOCK_TYPE_SIMMELOCK:I = 0x2

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

.field private static mInstance:Lcom/android/phone/PowerOnUnlockSIMLock;


# instance fields
.field private DLGMOREINFOIMAGE:I

.field public PwdLength:I

.field public SIM1MELockStatus:[I

.field public SIM2MELockStatus:[I

.field public iSIM1Unlocked:I

.field public iSIM2Unlocked:I

.field public iSIMMELockStatus:I

.field public iSIMMEUnlockNo:I

.field private mBtnMoreInfo:Landroid/widget/Button;

.field private mDismissButton:Landroid/widget/TextView;

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

.field private mbackspace:Landroid/widget/ImageButton;

.field private mbtnEmergencyCall:Landroid/widget/Button;

.field private pm:Landroid/os/PowerManager;

.field public progressDialog:Landroid/app/ProgressDialog;

.field public strLockName:[Ljava/lang/String;

.field public strPwd:Ljava/lang/String;

.field public tempstrPwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 74
    const-string v0, "LockCategory"

    sput-object v0, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 75
    sput v1, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    .line 76
    sput v1, Lcom/android/phone/PowerOnUnlockSIMLock;->intSIMNumber:I

    .line 104
    sput v2, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1LockedPermanently:I

    .line 105
    sput v2, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2LockedPermanently:I

    .line 956
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIMLOCK_TYPE_PIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    .line 72
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    .line 73
    iput v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    .line 88
    iput-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 89
    iput-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 92
    iput-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    .line 93
    iput-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mBtnMoreInfo:Landroid/widget/Button;

    .line 94
    iput-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockEmptyForSingleCard:Landroid/widget/TextView;

    .line 95
    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->PwdLength:I

    .line 96
    iput-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 97
    iput-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->tempstrPwd:Ljava/lang/String;

    .line 98
    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdLeftChances:I

    .line 99
    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    .line 101
    iput v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIM1Unlocked:I

    .line 102
    iput v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIM2Unlocked:I

    .line 103
    iput v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->DLGMOREINFOIMAGE:I

    .line 107
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

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->strLockName:[Ljava/lang/String;

    .line 111
    iput-object v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->pm:Landroid/os/PowerManager;

    .line 295
    new-instance v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;

    invoke-direct {v0, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$5;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mHandler:Landroid/os/Handler;

    .line 886
    new-instance v0, Lcom/android/phone/PowerOnUnlockSIMLock$6;

    invoke-direct {v0, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$6;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 71
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 72
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/PowerOnUnlockSIMLock;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->DLGMOREINFOIMAGE:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/PowerOnUnlockSIMLock;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PowerOnUnlockSIMLock;->setSimLockScreenDone(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1LockedPermanently:I

    return p0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2LockedPermanently:I

    return p0
.end method

.method public static bCharNumber(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 927
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 928
    const/4 v0, 0x1

    .line 930
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
    .line 936
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 937
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->bCharNumber(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 938
    const/4 v1, 0x0

    .line 941
    :goto_1
    return v1

    .line 936
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 941
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

    .line 1114
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1115
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1116
    const-string v1, "PhoneConstants.GEMINI_SIM_ID_KEY"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    .line 1117
    const-string v1, "SIMMELOCKSTATUS"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    .line 1118
    const-string v1, "PowerOnUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate][iSIMMELockStatus][original]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const-string v1, "PowerOnUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate][iSIMMEUnlockNo]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit16 v2, v2, 0x200

    shr-int/lit8 v2, v2, 0x9

    aput v2, v1, v5

    .line 1121
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit16 v2, v2, 0x100

    shr-int/lit8 v2, v2, 0x8

    aput v2, v1, v4

    .line 1122
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit16 v2, v2, 0x80

    shr-int/lit8 v2, v2, 0x7

    aput v2, v1, v6

    .line 1123
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x40

    shr-int/lit8 v2, v2, 0x6

    aput v2, v1, v7

    .line 1124
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x20

    shr-int/lit8 v2, v2, 0x5

    aput v2, v1, v8

    .line 1125
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x10

    shr-int/lit8 v2, v2, 0x4

    aput v2, v1, v5

    .line 1126
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x8

    shr-int/lit8 v2, v2, 0x3

    aput v2, v1, v4

    .line 1127
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x4

    shr-int/lit8 v2, v2, 0x2

    aput v2, v1, v6

    .line 1128
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x2

    shr-int/lit8 v2, v2, 0x1

    aput v2, v1, v7

    .line 1129
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    and-int/lit8 v2, v2, 0x1

    shr-int/lit8 v2, v2, 0x0

    aput v2, v1, v8

    .line 1133
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v5

    if-ne v1, v4, :cond_2

    .line 1134
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1135
    sput v5, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    .line 1174
    :cond_1
    :goto_0
    return-void

    .line 1136
    :cond_2
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v4

    if-ne v1, v4, :cond_3

    .line 1138
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1139
    sput v4, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1140
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v6

    if-ne v1, v4, :cond_4

    .line 1142
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1143
    sput v6, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1144
    :cond_4
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v7

    if-ne v1, v4, :cond_5

    .line 1146
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1147
    sput v7, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1148
    :cond_5
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    aget v1, v1, v8

    if-ne v1, v4, :cond_6

    .line 1150
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1151
    sput v8, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1152
    :cond_6
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v5

    if-ne v1, v4, :cond_7

    .line 1154
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1155
    sput v5, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1156
    :cond_7
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v4

    if-ne v1, v4, :cond_8

    .line 1158
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1159
    sput v4, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1160
    :cond_8
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v6

    if-ne v1, v4, :cond_9

    .line 1162
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1163
    sput v6, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1164
    :cond_9
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v7

    if-ne v1, v4, :cond_a

    .line 1166
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1167
    sput v7, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto :goto_0

    .line 1168
    :cond_a
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    aget v1, v1, v8

    if-ne v1, v4, :cond_1

    .line 1170
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PowerOnUnlockSIMLock;->LOCKCATEGORY:Ljava/lang/String;

    .line 1171
    sput v8, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/android/phone/PowerOnUnlockSIMLock;
    .locals 1

    .prologue
    .line 1078
    sget-object v0, Lcom/android/phone/PowerOnUnlockSIMLock;->mInstance:Lcom/android/phone/PowerOnUnlockSIMLock;

    return-object v0
.end method

.method public static hasIccCard(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    .line 1047
    const/4 v0, 0x0

    .line 1051
    .local v0, bRet:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1054
    .local v2, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1055
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1073
    .end local v2           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v0

    .line 1057
    :catch_0
    move-exception v1

    .line 1058
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isSimLockDisplay(II)Z
    .locals 10
    .parameter "slot"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v8, 0x1

    const/4 v3, 0x1

    .line 960
    if-gez p1, :cond_1

    .line 983
    :cond_0
    :goto_0
    return v2

    .line 964
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sim_lock_state_setting"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 965
    .local v1, simLockState:Ljava/lang/Long;
    move-object v0, v1

    .line 967
    .local v0, bitSet:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-int/lit8 v6, p1, 0x2

    ushr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 968
    sget v4, Lcom/android/phone/PowerOnUnlockSIMLock;->SIMLOCK_TYPE_PIN:I

    if-ne v4, p2, :cond_2

    .line 969
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_0

    move v2, v3

    .line 970
    goto :goto_0

    .line 974
    :cond_2
    const/4 v4, 0x2

    if-ne v4, p2, :cond_3

    .line 975
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    ushr-long/2addr v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 976
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_0

    move v2, v3

    .line 977
    goto :goto_0

    :cond_3
    move v2, v3

    .line 983
    goto :goto_0
.end method

.method private setSimLockScreenDone(II)V
    .locals 6
    .parameter "slot"
    .parameter "type"

    .prologue
    .line 987
    if-gez p1, :cond_0

    .line 1009
    :goto_0
    return-void

    .line 991
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PowerOnUnlockSIMLock;->isSimLockDisplay(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 992
    const-string v2, "PowerOnUnlockSIMLock "

    const-string v3, "setSimLockScreenDone the SimLock display is done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 996
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_lock_state_setting"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 998
    .local v1, simLockState:Ljava/lang/Long;
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1000
    .local v0, bitSet:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-int/lit8 v4, p1, 0x2

    shl-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1001
    const-string v2, "PowerOnUnlockSIMLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimLockScreenDone1 bitset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/4 v2, 0x2

    if-ne v2, p2, :cond_2

    .line 1003
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1005
    :cond_2
    const-string v2, "PowerOnUnlockSIMLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimLockScreenDone2 bitset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1008
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_lock_state_setting"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public getMoreInfoConfiguration(J)V
    .locals 4
    .parameter "Slot"

    .prologue
    .line 1013
    const-string v1, "PowerOnUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMoreInfoConfiguration][Slot]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    long-to-int v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 1015
    long-to-int v1, p1

    invoke-static {p0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1016
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    const-string v1, "PowerOnUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMoreInfoConfiguration][info]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1020
    :cond_0
    iget v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v1, :cond_2

    .line 1021
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    const v2, 0x7f0b0408

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    :goto_0
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1027
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mBtnMoreInfo:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1028
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mBtnMoreInfo:Landroid/widget/Button;

    const v2, 0x7f0b040b

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    :goto_1
    return-void

    .line 1024
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    const v2, 0x7f0b0409

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1033
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->getOptrNameBySlotId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public getOptrDrawableBySlotId(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "Slot"

    .prologue
    const/4 v1, 0x0

    .line 914
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 915
    long-to-int v2, p1

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 916
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    const-string v2, "PowerOnUnlockSIMLock "

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

    .line 917
    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 922
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-object v1
.end method

.method public getOptrNameBySlotId(J)Ljava/lang/String;
    .locals 4
    .parameter "Slot"

    .prologue
    .line 898
    const-string v1, "PowerOnUnlockSIMLock "

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

    .line 899
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 900
    long-to-int v1, p1

    invoke-static {p0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 901
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    const-string v1, "PowerOnUnlockSIMLock "

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

    .line 902
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 903
    const-string v1, "PowerOnUnlockSIMLock "

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

    .line 904
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 909
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 906
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 909
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 825
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 826
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/high16 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 113
    const-string v2, "PowerOnUnlockSIMLock "

    const-string v3, "[onCreate]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    sput-object p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mInstance:Lcom/android/phone/PowerOnUnlockSIMLock;

    .line 116
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->pm:Landroid/os/PowerManager;

    .line 117
    sget-object v2, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v2, v2, v5

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v2, v2, v4

    if-eqz v2, :cond_3

    :cond_0
    sget v2, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1LockedPermanently:I

    if-ne v2, v4, :cond_1

    invoke-static {v4}, Lcom/android/phone/PowerOnUnlockSIMLock;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    sget v2, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2LockedPermanently:I

    if-ne v2, v4, :cond_2

    invoke-static {v5}, Lcom/android/phone/PowerOnUnlockSIMLock;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget v2, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1LockedPermanently:I

    if-ne v2, v4, :cond_4

    sget v2, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2LockedPermanently:I

    if-ne v2, v4, :cond_4

    .line 121
    :cond_3
    const-string v2, "PowerOnUnlockSIMLock "

    const-string v3, "[onCreate][Two cards are handled aleady]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    .line 245
    :goto_0
    return-void

    .line 125
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/phone/PowerOnUnlockSIMLock;->requestWindowFeature(I)Z

    .line 127
    const v2, 0x7f040046

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->setContentView(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 134
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 135
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x8000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 136
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 138
    const v2, 0x7f07012b

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    .line 139
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 142
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 143
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 147
    const v2, 0x7f07012c

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mbackspace:Landroid/widget/ImageButton;

    .line 148
    const v2, 0x7f070125

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    .line 149
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-direct {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->decideLockCategory()V

    .line 151
    const-string v2, "PowerOnUnlockSIMLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onCreate][lockCategory]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intSIMNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/PowerOnUnlockSIMLock;->intSIMNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const v2, 0x7f07012d

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 154
    new-instance v2, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;

    invoke-direct {v2, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    .line 156
    :cond_5
    const v2, 0x7f070124

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mDismissButton:Landroid/widget/TextView;

    .line 158
    const v2, 0x7f070126

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;

    .line 160
    const v2, 0x7f070127

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockActionNotify:Landroid/widget/TextView;

    .line 161
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockActionNotify:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const v2, 0x7f070128

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockRetriesNotify:Landroid/widget/TextView;

    .line 167
    const v2, 0x7f070131

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockForSIMNotify:Landroid/widget/TextView;

    .line 168
    const v2, 0x7f070133

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockSIMNameNotify:Landroid/widget/TextView;

    .line 169
    const v2, 0x7f070136

    invoke-virtual {p0, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mBtnMoreInfo:Landroid/widget/Button;

    .line 182
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mbackspace:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/phone/PowerOnUnlockSIMLock$1;

    invoke-direct {v3, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$1;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mbackspace:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/phone/PowerOnUnlockSIMLock$2;

    invoke-direct {v3, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$2;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 209
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mBtnMoreInfo:Landroid/widget/Button;

    new-instance v3, Lcom/android/phone/PowerOnUnlockSIMLock$3;

    invoke-direct {v3, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$3;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    new-instance v3, Lcom/android/phone/PowerOnUnlockSIMLock$4;

    invoke-direct {v3, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$4;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    const-string v2, "PowerOnUnlockSIMLock "

    const-string v3, "[PowerOnUnlockSIMLock][onCreate]-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 1085
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1086
    .local v0, img:Landroid/widget/ImageView;
    const/4 v1, -0x1

    .line 1087
    .local v1, imgId:I
    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v2, :cond_1

    .line 1089
    invoke-static {v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->hasIccCard(I)Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1091
    const v1, 0x7f0201e1

    .line 1106
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1107
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b040c

    invoke-virtual {p0, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b03f0

    invoke-virtual {p0, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    return-object v2

    .line 1094
    :cond_0
    const v1, 0x7f0201e4

    goto :goto_0

    .line 1098
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->hasIccCard(I)Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 1100
    const v1, 0x7f0201e2

    goto :goto_0

    .line 1103
    :cond_2
    const v1, 0x7f0201e3

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 266
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 830
    const-string v0, "PowerOnUnlockSIMLock "

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

    .line 831
    sparse-switch p1, :sswitch_data_0

    .line 839
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[onKey][Pressed invalid Key]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 836
    :sswitch_0
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[onKeyDown][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v0, 0x1

    goto :goto_0

    .line 831
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
    .line 878
    const-string v0, "PowerOnUnlockSIMLock "

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

    .line 879
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 880
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[onKeyLongPress][Pressed invalid Key]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v0, 0x1

    .line 883
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
    .line 288
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[onNewIntent]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 290
    invoke-direct {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->decideLockCategory()V

    .line 291
    const-string v0, "PowerOnUnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onNewIntent][lockCategory]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intSIMNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/PowerOnUnlockSIMLock;->intSIMNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 271
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[onPause]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->pm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "screen is off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 281
    return-void
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/16 v12, 0x6e

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 445
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 448
    new-instance v10, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 449
    .local v10, intentFilter:Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v10}, Lcom/android/phone/PowerOnUnlockSIMLock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 451
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[onResume]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mbtnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 455
    const-string v0, "PowerOnUnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onResume][iSIMMELockStatus] : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    if-nez v0, :cond_3

    .line 460
    iget v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v0, :cond_1

    .line 461
    sget-object v0, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aput v2, v0, v2

    .line 462
    const-string v0, "PowerOnUnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[changed][arySIMLockStatus]: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0, v2, v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->setSimLockScreenDone(II)V

    .line 465
    sget-object v0, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v0, v0, v5

    if-ne v0, v6, :cond_0

    .line 466
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v9, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    .local v9, intent:Landroid/content/Intent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 468
    .local v8, bundle:Landroid/os/Bundle;
    const-string v0, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v8, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 469
    invoke-virtual {v9, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 470
    invoke-virtual {p0, v9}, Lcom/android/phone/PowerOnUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 472
    .end local v8           #bundle:Landroid/os/Bundle;
    .end local v9           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    .line 524
    :goto_0
    return-void

    .line 474
    :cond_1
    iget v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-ne v0, v5, :cond_4

    .line 475
    sget-object v0, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aput v2, v0, v5

    .line 476
    const-string v0, "PowerOnUnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[changed][arySIMLockStatus]: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0, v5, v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->setSimLockScreenDone(II)V

    .line 478
    sget-object v0, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v0, v0, v2

    if-ne v0, v6, :cond_2

    .line 479
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v9, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 480
    .restart local v9       #intent:Landroid/content/Intent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 481
    .restart local v8       #bundle:Landroid/os/Bundle;
    const-string v0, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    invoke-virtual {v9, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 483
    invoke-virtual {p0, v9}, Lcom/android/phone/PowerOnUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 485
    .end local v8           #bundle:Landroid/os/Bundle;
    .end local v9           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    goto :goto_0

    .line 500
    :cond_3
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[mHandler][UNLOCK_ICC_SML_COMPLETE][GEMINI Card]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 502
    .local v11, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v0, :cond_5

    .line 504
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 505
    .local v7, callback_query:Landroid/os/Message;
    invoke-virtual {v11, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget v1, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 517
    :goto_1
    iget v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->getMoreInfoConfiguration(J)V

    .line 522
    .end local v7           #callback_query:Landroid/os/Message;
    .end local v11           #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_4
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[onResume]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 509
    .restart local v11       #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_5
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 510
    .restart local v7       #callback_query:Landroid/os/Message;
    invoke-virtual {v11, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget v1, Lcom/android/phone/PowerOnUnlockSIMLock;->lockCategory:I

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 255
    const-string v0, "PowerOnUnlockSIMLock "

    const-string v1, "[onStart]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 257
    return-void
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 0
    .parameter "keyEventCode"

    .prologue
    .line 538
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .parameter "verifyType"
    .parameter "bRet"

    .prologue
    .line 859
    const-string v1, "PowerOnUnlockSIMLock "

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

    .line 861
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 865
    .local v0, retIntent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 866
    const-string v1, "PowerOnUnlockSIMLock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :goto_0
    return-void

    .line 869
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 871
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 873
    invoke-virtual {p0, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 945
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 947
    .local v0, newState:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 949
    const v1, 0x7f0b0407

    invoke-virtual {p0, v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 953
    :goto_0
    return-void

    .line 951
    :cond_0
    const v1, 0x7f0b03f7

    invoke-virtual {p0, v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
