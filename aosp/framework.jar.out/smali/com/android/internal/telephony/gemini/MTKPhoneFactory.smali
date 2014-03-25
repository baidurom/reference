.class public Lcom/android/internal/telephony/gemini/MTKPhoneFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:I

.field private static b:Lcom/android/internal/telephony/Phone;

.field private static c:Lcom/android/internal/telephony/CommandsInterface;

.field private static d:Lcom/android/internal/telephony/CommandsInterface;

.field private static e:Lcom/android/internal/telephony/CommandsInterface;

.field private static f:Lcom/android/internal/telephony/CommandsInterface;

.field private static g:Z

.field private static h:Lcom/android/internal/telephony/PhoneNotifier;

.field private static i:Lcom/android/internal/telephony/PhoneNotifier;

.field private static j:Landroid/os/Looper;

.field private static k:Landroid/content/Context;

.field private static l:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/Phone;

    .line 89
    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    .line 90
    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    .line 91
    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/CommandsInterface;

    .line 92
    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->f:Lcom/android/internal/telephony/CommandsInterface;

    .line 94
    sput-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->g:Z

    .line 101
    sput v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;III)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 342
    if-nez p1, :cond_0

    .line 343
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, p3, p2, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    .line 344
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1, p2, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    .line 346
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 347
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 349
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 350
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->i:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 353
    new-instance v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v2, v3, v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/Phone;

    .line 354
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating EVDO GeminiPhone with CDMA as Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return-void

    .line 356
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, p3, p2, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    .line 357
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1, p2, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    .line 358
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 359
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 360
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 361
    new-instance v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->i:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 364
    new-instance v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v2, v3, v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/Phone;

    .line 365
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating EVDO GeminiPhone with CDMA as Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;III)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 378
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "preferred_network_mode_2"

    sget v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 381
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network Mode 2 set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v3, Lcom/android/internal/telephony/RIL;

    invoke-direct {v3, p0, p3, p2, v2}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    .line 383
    new-instance v3, Lcom/android/internal/telephony/RIL;

    invoke-direct {v3, p0, v0, p2, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    .line 398
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 399
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 400
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v3, v4, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 402
    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->i:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 405
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v4, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v1, v3, v4, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/Phone;

    .line 407
    const-string v1, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating GSM GeminiPhone with default phone at Phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPeerPhone(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 409
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPeerPhone(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 410
    return-void

    .line 385
    :cond_0
    const-string v0, "com.mtk.3G_SWITCH"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 386
    const-string v0, "gsm.3gswitch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v0, v1

    .line 387
    :goto_1
    const-string v4, "3G_SIM_ID"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 388
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initiate 3G Sim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    if-nez v0, :cond_2

    .line 391
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, p3, p2, v2}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    .line 392
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1, p2, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 386
    goto :goto_1

    .line 394
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    .line 395
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, p3, p2, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    goto/16 :goto_0
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 457
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 458
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->k:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 459
    monitor-exit v1

    return-object v0

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .parameter

    .prologue
    .line 477
    sget-object v3, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v3

    .line 478
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v2, v0

    .line 481
    :goto_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, v0

    .line 483
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->k:Landroid/content/Context;

    invoke-direct {v0, v4, v1, v2, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 484
    monitor-exit v3

    .line 487
    :goto_2
    return-object v0

    .line 479
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->i:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v2, v0

    goto :goto_0

    .line 481
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, v0

    goto :goto_1

    .line 486
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->k:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 487
    monitor-exit v3

    goto :goto_2

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 453
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 464
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->k:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 466
    monitor-exit v1

    return-object v0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .parameter

    .prologue
    .line 493
    sget-object v3, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v3

    .line 494
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 495
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v2, v0

    .line 497
    :goto_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, v0

    .line 499
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->k:Landroid/content/Context;

    invoke-direct {v0, v4, v1, v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 500
    monitor-exit v3

    .line 503
    :goto_2
    return-object v0

    .line 495
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->i:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v2, v0

    goto :goto_0

    .line 497
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, v0

    goto :goto_1

    .line 502
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->k:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 503
    monitor-exit v3

    goto :goto_2

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getPhoneType(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 419
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 436
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 429
    goto :goto_0

    .line 434
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 3
    .parameter

    .prologue
    .line 471
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 472
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->k:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v2}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 16
    .parameter

    .prologue
    const/4 v11, -0x1

    const/4 v15, 0x2

    const/4 v14, 0x3

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 106
    const-class v10, Lcom/android/internal/telephony/Phone;

    monitor-enter v10

    .line 107
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->g:Z

    if-nez v1, :cond_4

    .line 108
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->j:Landroid/os/Looper;

    .line 109
    sput-object p0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->k:Landroid/content/Context;

    .line 111
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->j:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 116
    :cond_0
    :try_start_1
    const-string/jumbo v1, "persist.service.conn.looper"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v3, Landroid/util/LogPrinter;

    const/4 v4, 0x3

    const-string v5, "PHONE"

    invoke-direct {v3, v4, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v1, v9

    .line 124
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 129
    :try_start_2
    new-instance v3, Landroid/net/LocalServerSocket;

    const-string v4, "com.android.internal.telephony"

    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v9

    .line 134
    :goto_1
    if-nez v3, :cond_5

    .line 146
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/PhoneNotifier;

    .line 148
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 149
    const/4 v1, 0x7

    sput v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:I

    .line 152
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:I

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 154
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network Mode set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string/jumbo v3, "persist.radio.default_sim_mode"

    const/16 v4, 0xc

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 160
    const-string v3, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gemini Network Mode set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "preferred_cdma_subscription"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 165
    const-string v3, "PHONE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cdma Subscription set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v3, "com.mtk.3G_SWITCH"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 170
    const-string v3, "gsm.3gswitch"

    const/4 v7, 0x1

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v15, :cond_7

    move v3, v2

    .line 171
    :goto_2
    const-string v7, "3G_SIM_ID"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 172
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initiate 3G Sim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {v4}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getPhoneType(I)I

    move-result v4

    .line 175
    if-ne v4, v2, :cond_8

    .line 176
    new-instance v2, Lcom/android/internal/telephony/RIL;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    .line 177
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 178
    new-instance v1, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/Phone;

    .line 179
    const-string v1, "PHONE"

    const-string v2, "Creating GSMPhone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_3
    :goto_3
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->g:Z

    .line 330
    :cond_4
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->l:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->l:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->updateRegistryCellLocation()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 338
    :goto_4
    :try_start_5
    monitor-exit v10

    .line 339
    return-void

    .line 130
    :catch_0
    move-exception v3

    move v3, v2

    .line 131
    goto/16 :goto_1

    .line 136
    :cond_5
    if-le v1, v14, :cond_6

    .line 137
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PhoneFactory probably already running"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 140
    :cond_6
    const-wide/16 v3, 0x7d0

    :try_start_6
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 141
    :catch_1
    move-exception v3

    goto/16 :goto_0

    :cond_7
    move v3, v9

    .line 170
    goto/16 :goto_2

    .line 180
    :cond_8
    if-ne v4, v15, :cond_9

    .line 181
    :try_start_7
    new-instance v2, Lcom/android/internal/telephony/RIL;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    .line 182
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 183
    new-instance v1, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/Phone;

    .line 184
    const-string v1, "PHONE"

    const-string v2, "Creating CDMAPhone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 185
    :cond_9
    const/4 v6, 0x4

    if-ne v4, v6, :cond_3

    .line 186
    new-instance v4, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    sput-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->i:Lcom/android/internal/telephony/PhoneNotifier;

    .line 187
    new-instance v7, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const/4 v4, 0x2

    invoke-direct {v7, v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    .line 188
    new-instance v8, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const/4 v4, 0x3

    invoke-direct {v8, v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    .line 190
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 192
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 194
    const-string/jumbo v3, "persist.radio.default_sim"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 195
    if-ne v3, v11, :cond_19

    .line 196
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v3

    if-nez v3, :cond_a

    move v2, v9

    .line 203
    :cond_a
    const-string/jumbo v3, "persist.radio.default_sim"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_5
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Default Phone as SIM"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " during first boot-up (EVDO DT)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    move-object/from16 v0, p0

    invoke-static {v0, v2, v5, v1}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a(Landroid/content/Context;III)V

    .line 316
    :cond_b
    :goto_6
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getGeminiDataSubUtil()Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataStateChangedCallback()Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    move-result-object v2

    .line 318
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/PhoneNotifier;

    check-cast v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    .line 319
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->i:Lcom/android/internal/telephony/PhoneNotifier;

    check-cast v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    .line 320
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v1, v14, :cond_c

    .line 321
    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    move-object v1, v0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    .line 322
    :cond_c
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v3, 0x4

    if-lt v1, v3, :cond_3

    .line 323
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    move-object v1, v0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    goto/16 :goto_3

    .line 210
    :cond_d
    const-string/jumbo v2, "persist.radio.default_sim"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 211
    if-ne v2, v11, :cond_18

    .line 213
    const/4 v2, 0x0

    .line 214
    const-string/jumbo v3, "persist.radio.default_sim"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_7
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Default Phone as SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " during first boot-up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    move-object/from16 v0, p0

    invoke-static {v0, v9, v5, v1}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b(Landroid/content/Context;III)V

    goto :goto_6

    .line 223
    :cond_e
    const-string/jumbo v4, "persist.radio.default_sim"

    const/4 v6, -0x1

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 224
    if-ne v6, v11, :cond_f

    .line 226
    const/4 v4, 0x0

    .line 227
    const-string/jumbo v6, "persist.radio.default_sim"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v9

    .line 229
    :cond_f
    const-string v4, "PHONE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Set Default Phone as SIM"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " during first boot-up"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v4, v4, [I

    .line 233
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 234
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v11, "preferred_network_mode_2"

    sget v12, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:I

    invoke-static {v3, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 236
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    move v2, v3

    .line 245
    :goto_8
    :pswitch_0
    const-string v3, "PHONE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Network Mode 2 set to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v3, Lcom/android/internal/telephony/RIL;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1, v5, v11}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    .line 247
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    .line 261
    :goto_9
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 262
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 265
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v11, v1, [Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 268
    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v12, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    aput-object v2, v11, v1

    .line 270
    const/4 v1, 0x1

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v12, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->i:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    aput-object v2, v11, v1

    .line 273
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v1, v15, :cond_10

    .line 274
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v3, 0x0

    aget-object v3, v11, v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-direct {v3, v12}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/Phone;

    .line 278
    :cond_10
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v1, v14, :cond_12

    .line 279
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x2

    aget v2, v4, v2

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/CommandsInterface;

    .line 281
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 283
    const/4 v1, 0x2

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v7, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    aput-object v2, v11, v1

    .line 286
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v1, v14, :cond_11

    .line 287
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v3, 0x0

    aget-object v3, v11, v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-direct {v3, v12}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v12, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v13, 0x2

    aget-object v13, v11, v13

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v1, v2, v3, v12, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/Phone;

    .line 291
    :cond_11
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_12

    .line 292
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x3

    aget v2, v4, v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->f:Lcom/android/internal/telephony/CommandsInterface;

    .line 294
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->f:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 296
    const/4 v1, 0x3

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->f:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v8, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    aput-object v2, v11, v1

    .line 299
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v3, 0x0

    aget-object v3, v11, v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v4, 0x1

    aget-object v4, v11, v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v4, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v5, 0x2

    aget-object v5, v11, v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v5, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v12, 0x3

    aget-object v12, v11, v12

    invoke-direct {v5, v12}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/Phone;

    .line 304
    :cond_12
    const-string v1, "PHONE"

    const-string v2, "Creating GeminiPhone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v9

    .line 306
    :goto_a
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v1, :cond_b

    move v1, v9

    .line 307
    :goto_b
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v3, :cond_17

    .line 308
    if-eq v1, v2, :cond_13

    .line 309
    aget-object v3, v11, v2

    aget-object v4, v11, v1

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPeerPhones(Lcom/android/internal/telephony/gsm/GSMPhone;I)V

    .line 307
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :pswitch_1
    move v1, v2

    .line 238
    goto/16 :goto_8

    :cond_14
    move v2, v9

    .line 249
    :goto_c
    sget v11, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v11, :cond_16

    .line 250
    if-ne v3, v2, :cond_15

    .line 251
    aput v1, v4, v2

    .line 249
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 253
    :cond_15
    const/4 v11, 0x1

    aput v11, v4, v2

    goto :goto_d

    .line 257
    :cond_16
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    .line 258
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x1

    aget v2, v4, v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Lcom/android/internal/telephony/CommandsInterface;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_9

    .line 306
    :cond_17
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_a

    .line 334
    :catch_2
    move-exception v1

    goto/16 :goto_4

    :cond_18
    move v9, v2

    goto/16 :goto_7

    :cond_19
    move v2, v3

    goto/16 :goto_5

    .line 236
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
