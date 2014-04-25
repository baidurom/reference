.class public Lcom/android/phone/PowerOnSetupUnlockSIMLock;
.super Landroid/app/Activity;
.source "PowerOnSetupUnlockSIMLock.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "PowerOnSetupUnlockSIMLock "

.field private static final SIM1QUERY:I = 0x78

.field private static final SIM2QUERY:I = 0x7a

.field private static SIMLOCK_TYPE_PIN:I = 0x0

.field private static final SIMLOCK_TYPE_SIMMELOCK:I = 0x2

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

.field public static iNextUnlock:I

.field private static mInstance:Lcom/android/phone/PowerOnSetupUnlockSIMLock;


# instance fields
.field public SIM1MELockStatus:[I

.field SIM1Status:I

.field public SIM2MELockStatus:[I

.field SIM2Status:I

.field public iSIMMELockStatus:I

.field public iSIMMEUnlockNo:I

.field mHandlerSIMLock:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iNextUnlock:I

    .line 409
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIMLOCK_TYPE_PIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    sget-object v0, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1Status:I

    .line 60
    sget-object v0, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2Status:I

    .line 62
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    .line 63
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    .line 64
    iput v2, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    .line 65
    iput v2, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMEUnlockNo:I

    .line 193
    new-instance v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;-><init>(Lcom/android/phone/PowerOnSetupUnlockSIMLock;)V

    iput-object v0, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    .line 400
    new-instance v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PowerOnSetupUnlockSIMLock$2;-><init>(Lcom/android/phone/PowerOnSetupUnlockSIMLock;)V

    iput-object v0, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 62
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 63
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/PowerOnSetupUnlockSIMLock;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->setSimLockScreenDone(II)V

    return-void
.end method

.method public static getInstance()Lcom/android/phone/PowerOnSetupUnlockSIMLock;
    .locals 1

    .prologue
    .line 465
    sget-object v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mInstance:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

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

    .line 413
    if-gez p1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v2

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sim_lock_state_setting"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 418
    .local v1, simLockState:Ljava/lang/Long;
    move-object v0, v1

    .line 420
    .local v0, bitSet:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-int/lit8 v6, p1, 0x2

    ushr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 421
    sget v4, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIMLOCK_TYPE_PIN:I

    if-ne v4, p2, :cond_2

    .line 422
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_0

    move v2, v3

    .line 423
    goto :goto_0

    .line 427
    :cond_2
    const/4 v4, 0x2

    if-ne v4, p2, :cond_3

    .line 428
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    ushr-long/2addr v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_0

    move v2, v3

    .line 430
    goto :goto_0

    :cond_3
    move v2, v3

    .line 436
    goto :goto_0
.end method

.method public static packageArray([I[I)I
    .locals 13
    .parameter "ArySrc1"
    .parameter "ArySrc2"

    .prologue
    const-wide/high16 v11, 0x4000

    .line 355
    array-length v1, p0

    .line 356
    .local v1, iAry1Length:I
    array-length v2, p1

    .line 357
    .local v2, iAry2Length:I
    add-int v3, v1, v2

    .line 358
    .local v3, iArySumLength:I
    const/4 v4, 0x0

    .line 359
    .local v4, intTempSrc:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 360
    int-to-double v5, v4

    aget v7, p0, v0

    int-to-double v7, v7

    add-int/lit8 v9, v3, -0x1

    sub-int/2addr v9, v0

    int-to-double v9, v9

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-int v4, v5

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 363
    int-to-double v5, v4

    aget v7, p1, v0

    int-to-double v7, v7

    add-int/lit8 v9, v2, -0x1

    sub-int/2addr v9, v0

    int-to-double v9, v9

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-int v4, v5

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 365
    :cond_1
    return v4
.end method

.method public static resetISIMMELockStatus([I[II)I
    .locals 8
    .parameter "SIM1MELockStatus"
    .parameter "SIM2MELockStatus"
    .parameter "CurrentSIMNO"

    .prologue
    const/4 v7, 0x5

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 300
    const/4 v2, 0x0

    .line 319
    .local v2, tempISIMMELockStatus:I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 320
    .local v1, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    if-nez p2, :cond_3

    .line 321
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getNetworkPersoType()I

    move-result v4

    sput v4, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iNextUnlock:I

    .line 322
    sget v4, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iNextUnlock:I

    if-ne v4, v6, :cond_0

    .line 323
    const/4 v2, 0x0

    :goto_0
    move v3, v2

    .line 347
    .end local v2           #tempISIMMELockStatus:I
    .local v3, tempISIMMELockStatus:I
    :goto_1
    return v3

    .line 325
    .end local v3           #tempISIMMELockStatus:I
    .restart local v2       #tempISIMMELockStatus:I
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget v4, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iNextUnlock:I

    if-ge v0, v4, :cond_1

    .line 326
    aput v5, p0, v0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 328
    :cond_1
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v7, :cond_2

    .line 329
    aput v5, p1, v0

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 331
    :cond_2
    invoke-static {p0, p1}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->packageArray([I[I)I

    move-result v2

    goto :goto_0

    .line 335
    .end local v0           #i:I
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getNetworkPersoType()I

    move-result v4

    sput v4, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iNextUnlock:I

    .line 336
    sget v4, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iNextUnlock:I

    if-ne v4, v6, :cond_4

    .line 337
    const/4 v2, 0x0

    :goto_4
    move v3, v2

    .line 347
    .end local v2           #tempISIMMELockStatus:I
    .restart local v3       #tempISIMMELockStatus:I
    goto :goto_1

    .line 339
    .end local v3           #tempISIMMELockStatus:I
    .restart local v2       #tempISIMMELockStatus:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    sget v4, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iNextUnlock:I

    if-ge v0, v4, :cond_5

    .line 340
    aput v5, p1, v0

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 342
    :cond_5
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v7, :cond_6

    .line 343
    aput v5, p0, v0

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 345
    :cond_6
    invoke-static {p0, p1}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->packageArray([I[I)I

    move-result v2

    goto :goto_4
.end method

.method private setSimLockScreenDone(II)V
    .locals 6
    .parameter "slot"
    .parameter "type"

    .prologue
    .line 440
    if-gez p1, :cond_0

    .line 462
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->isSimLockDisplay(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    const-string v2, "PowerOnSetupUnlockSIMLock "

    const-string v3, "setSimLockScreenDone the SimLock display is done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_lock_state_setting"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 451
    .local v1, simLockState:Ljava/lang/Long;
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 453
    .local v0, bitSet:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-int/lit8 v4, p1, 0x2

    shl-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 454
    const-string v2, "PowerOnSetupUnlockSIMLock "

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

    .line 455
    const/4 v2, 0x2

    if-ne v2, p2, :cond_2

    .line 456
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 458
    :cond_2
    const-string v2, "PowerOnSetupUnlockSIMLock "

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

    .line 460
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 461
    invoke-virtual {p0}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_lock_state_setting"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 77
    const-string v1, "PowerOnSetupUnlockSIMLock "

    const-string v2, "[onCreate]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sput-object p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mInstance:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    .line 80
    invoke-virtual {p0, v4}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->requestWindowFeature(I)Z

    .line 81
    invoke-virtual {p0}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "PowerOnSetupUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate][Special bundle]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-eqz v0, :cond_0

    .line 84
    const-string v1, "PowerOnSetupUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate][Special bundle not null]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v1, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMEUnlockNo:I

    .line 90
    :cond_0
    iget v1, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v1, :cond_1

    invoke-direct {p0, v5, v6}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->isSimLockDisplay(II)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMEUnlockNo:I

    if-ne v1, v4, :cond_3

    invoke-direct {p0, v4, v6}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->isSimLockDisplay(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->finish()V

    .line 93
    const-string v1, "PowerOnSetupUnlockSIMLock "

    const-string v2, "[onCreate][already launched]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_3
    const-string v1, "PowerOnSetupUnlockSIMLock "

    const-string v2, "[onCreate]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "PowerOnSetupUnlockSIMLock "

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 117
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 131
    const-string v0, "PowerOnSetupUnlockSIMLock "

    const-string v1, "[onNewIntent]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "PowerOnSetupUnlockSIMLock "

    const-string v1, "[onPause]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 124
    return-void
.end method

.method protected onResume()V
    .locals 82

    .prologue
    .line 143
    const-string v1, "PowerOnSetupUnlockSIMLock "

    const-string v2, "[onResume]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v1, "PowerOnSetupUnlockSIMLock "

    const-string v2, "[onResume][Gemini Card]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v81

    check-cast v81, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 163
    .local v81, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v1, :cond_1

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 165
    .local v8, msgQuerySIM1LockStatusNP:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v16

    .line 166
    .local v16, msgQuerySIM1LockStatusNSP:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v24

    .line 167
    .local v24, msgQuerySIM1LockStatusSP:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v32

    .line 168
    .local v32, msgQuerySIM1LockStatusCP:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v40

    .line 169
    .local v40, msgQuerySIM1LockStatusSIMP:Landroid/os/Message;
    const/4 v1, 0x0

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 170
    const/4 v1, 0x0

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v16}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 171
    const/4 v1, 0x0

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v17

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-interface/range {v17 .. v24}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 172
    const/4 v1, 0x0

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v25

    const/16 v26, 0x3

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-interface/range {v25 .. v32}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 173
    const/4 v1, 0x0

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v33

    const/16 v34, 0x4

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-interface/range {v33 .. v40}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 188
    .end local v8           #msgQuerySIM1LockStatusNP:Landroid/os/Message;
    .end local v16           #msgQuerySIM1LockStatusNSP:Landroid/os/Message;
    .end local v24           #msgQuerySIM1LockStatusSP:Landroid/os/Message;
    .end local v32           #msgQuerySIM1LockStatusCP:Landroid/os/Message;
    .end local v40           #msgQuerySIM1LockStatusSIMP:Landroid/os/Message;
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 189
    const-string v1, "PowerOnSetupUnlockSIMLock "

    const-string v2, "[onResume]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 174
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMEUnlockNo:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x7a

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v48

    .line 176
    .local v48, msgQuerySIM2LockStatusNP:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x7a

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v56

    .line 177
    .local v56, msgQuerySIM2LockStatusNSP:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x7a

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v64

    .line 178
    .local v64, msgQuerySIM2LockStatusSP:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x7a

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v72

    .line 179
    .local v72, msgQuerySIM2LockStatusCP:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->mHandlerSIMLock:Landroid/os/Handler;

    const/16 v2, 0x7a

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v80

    .line 180
    .local v80, msgQuerySIM2LockStatusSIMP:Landroid/os/Message;
    const/4 v1, 0x1

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v41

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-interface/range {v41 .. v48}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 181
    const/4 v1, 0x1

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v49

    const/16 v50, 0x1

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    invoke-interface/range {v49 .. v56}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 182
    const/4 v1, 0x1

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v57

    const/16 v58, 0x2

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    invoke-interface/range {v57 .. v64}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 183
    const/4 v1, 0x1

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v65

    const/16 v66, 0x3

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    invoke-interface/range {v65 .. v72}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 184
    const/4 v1, 0x1

    move-object/from16 v0, v81

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v73

    const/16 v74, 0x4

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    invoke-interface/range {v73 .. v80}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "PowerOnSetupUnlockSIMLock "

    const-string v1, "[onStart]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 108
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .parameter "verifyType"
    .parameter "bRet"

    .prologue
    .line 383
    const-string v1, "PowerOnSetupUnlockSIMLock "

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

    .line 385
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 389
    .local v0, retIntent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 390
    const-string v1, "PowerOnSetupUnlockSIMLock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    return-void

    .line 393
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, v0}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
