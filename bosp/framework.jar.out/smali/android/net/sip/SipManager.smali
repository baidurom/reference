.class public Landroid/net/sip/SipManager;
.super Ljava/lang/Object;
.source "SipManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SipManager$ListenerRelay;
    }
.end annotation


# static fields
.field public static final ACTION_SIP_ADD_PHONE:Ljava/lang/String; = "com.android.phone.SIP_ADD_PHONE"

.field public static final ACTION_SIP_INCOMING_CALL:Ljava/lang/String; = "com.android.phone.SIP_INCOMING_CALL"

.field public static final ACTION_SIP_REMOVE_PHONE:Ljava/lang/String; = "com.android.phone.SIP_REMOVE_PHONE"

.field public static final ACTION_SIP_SERVICE_UP:Ljava/lang/String; = "android.net.sip.SIP_SERVICE_UP"

.field public static final EXTRA_CALL_ID:Ljava/lang/String; = "android:sipCallID"

.field public static final EXTRA_LOCAL_URI:Ljava/lang/String; = "android:localSipUri"

.field public static final EXTRA_OFFER_SD:Ljava/lang/String; = "android:sipOfferSD"

.field public static final INCOMING_CALL_RESULT_CODE:I = 0x65

.field private static final TAG:Ljava/lang/String; = "SipManager"

.field private static strRegTimeout:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSipService:Landroid/net/sip/ISipService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    .line 189
    invoke-direct {p0}, Landroid/net/sip/SipManager;->createSipService()V

    .line 190
    iget-object v0, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #string@sipError_registration_timeout#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/sip/SipManager;->strRegTimeout:Ljava/lang/String;

    .line 191
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroid/net/sip/SipManager;->strRegTimeout:Ljava/lang/String;

    return-object v0
.end method

.method public static createIncomingCallBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "callId"
    .parameter "sessionDescription"

    .prologue
    .line 487
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 488
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android:sipCallID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    const-string v1, "android:sipOfferSD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    return-object v0
.end method

.method private static createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;
    .locals 1
    .parameter "listener"
    .parameter "uri"

    .prologue
    .line 569
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/net/sip/SipManager$ListenerRelay;

    invoke-direct {v0, p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;-><init>(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createSipService()V
    .locals 2

    .prologue
    .line 194
    const-string/jumbo v1, "sip"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 195
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/sip/ISipService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    .line 196
    return-void
.end method

.method public static getCallId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "incomingCallIntent"

    .prologue
    .line 462
    const-string v0, "android:sipCallID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOfferSessionDescription(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "incomingCallIntent"

    .prologue
    .line 474
    const-string v0, "android:sipOfferSD"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isApiSupported(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.sip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isIncomingCallIntent(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 449
    if-nez p0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v2

    .line 450
    :cond_1
    invoke-static {p0}, Landroid/net/sip/SipManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, callId:Ljava/lang/String;
    invoke-static {p0}, Landroid/net/sip/SipManager;->getOfferSessionDescription(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, offerSd:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isSipWifiOnly(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #bool@config_sip_wifi_only#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isVoipSupported(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.sip.voip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 160
    invoke-static {p0}, Landroid/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/net/sip/SipManager;

    invoke-direct {v0, p0}, Landroid/net/sip/SipManager;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close(Ljava/lang/String;)V
    .locals 3
    .parameter "localProfileUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    invoke-interface {v1, p1}, Landroid/net/sip/ISipService;->close(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "close()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createSipSession(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession$Listener;)Landroid/net/sip/SipSession;
    .locals 4
    .parameter "localProfile"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 583
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/net/sip/ISipService;->createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v1

    .line 584
    .local v1, s:Landroid/net/sip/ISipSession;
    if-nez v1, :cond_0

    .line 585
    new-instance v2, Landroid/net/sip/SipException;

    const-string v3, "Failed to create SipSession; network unavailable?"

    invoke-direct {v2, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    .end local v1           #s:Landroid/net/sip/ISipSession;
    :catch_0
    move-exception v0

    .line 590
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Landroid/net/sip/SipException;

    const-string v3, "createSipSession()"

    invoke-direct {v2, v3, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 588
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #s:Landroid/net/sip/ISipSession;
    :cond_0
    :try_start_1
    new-instance v2, Landroid/net/sip/SipSession;

    invoke-direct {v2, v1, p2}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;Landroid/net/sip/SipSession$Listener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method

.method public getListOfProfiles()[Landroid/net/sip/SipProfile;
    .locals 2

    .prologue
    .line 601
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    invoke-interface {v1}, Landroid/net/sip/ISipService;->getListOfProfiles()[Landroid/net/sip/SipProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 603
    :goto_0
    return-object v1

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/sip/SipProfile;

    goto :goto_0
.end method

.method public getSessionFor(Landroid/content/Intent;)Landroid/net/sip/SipSession;
    .locals 5
    .parameter "incomingCallIntent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 559
    :try_start_0
    invoke-static {p1}, Landroid/net/sip/SipManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, callId:Ljava/lang/String;
    iget-object v3, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    invoke-interface {v3, v0}, Landroid/net/sip/ISipService;->getPendingSession(Ljava/lang/String;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 561
    .local v2, s:Landroid/net/sip/ISipSession;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Landroid/net/sip/SipSession;

    invoke-direct {v3, v2}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 562
    .end local v0           #callId:Ljava/lang/String;
    .end local v2           #s:Landroid/net/sip/ISipSession;
    :catch_0
    move-exception v1

    .line 563
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Landroid/net/sip/SipException;

    const-string v4, "getSessionFor()"

    invoke-direct {v3, v4, v1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isOpened(Ljava/lang/String;)Z
    .locals 3
    .parameter "localProfileUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 305
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    invoke-interface {v1, p1}, Landroid/net/sip/ISipService;->isOpened(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "isOpened()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isRegistered(Ljava/lang/String;)Z
    .locals 3
    .parameter "localProfileUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 326
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    invoke-interface {v1, p1}, Landroid/net/sip/ISipService;->isRegistered(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "isRegistered()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public makeAudioCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Landroid/net/sip/SipAudioCall$Listener;I)Landroid/net/sip/SipAudioCall;
    .locals 4
    .parameter "localProfile"
    .parameter "peerProfile"
    .parameter "listener"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    new-instance v2, Landroid/net/sip/SipException;

    const-string v3, "VOIP API is not supported"

    invoke-direct {v2, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 356
    :cond_0
    new-instance v0, Landroid/net/sip/SipAudioCall;

    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Landroid/net/sip/SipAudioCall;-><init>(Landroid/content/Context;Landroid/net/sip/SipProfile;)V

    .line 357
    .local v0, call:Landroid/net/sip/SipAudioCall;
    invoke-virtual {v0, p3}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    .line 358
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/net/sip/SipManager;->createSipSession(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession$Listener;)Landroid/net/sip/SipSession;

    move-result-object v1

    .line 359
    .local v1, s:Landroid/net/sip/SipSession;
    invoke-virtual {v0, p2, v1, p4}, Landroid/net/sip/SipAudioCall;->makeCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession;I)V

    .line 360
    return-object v0
.end method

.method public makeAudioCall(Ljava/lang/String;Ljava/lang/String;Landroid/net/sip/SipAudioCall$Listener;I)Landroid/net/sip/SipAudioCall;
    .locals 3
    .parameter "localProfileUri"
    .parameter "peerProfileUri"
    .parameter "listener"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v1, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "VOIP API is not supported"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v1, p1}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v1

    new-instance v2, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v2, p2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3, p4}, Landroid/net/sip/SipManager;->makeAudioCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Landroid/net/sip/SipAudioCall$Listener;I)Landroid/net/sip/SipAudioCall;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Ljava/text/ParseException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "build SipProfile"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public open(Landroid/net/sip/SipProfile;)V
    .locals 3
    .parameter "localProfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    invoke-interface {v1, p1}, Landroid/net/sip/ISipService;->open(Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string/jumbo v2, "open()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public open(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/SipRegistrationListener;)V
    .locals 3
    .parameter "localProfile"
    .parameter "incomingCallPendingIntent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 249
    if-nez p2, :cond_0

    .line 250
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "incomingCallPendingIntent cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/net/sip/SipManager;->createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/net/sip/ISipService;->open3(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string/jumbo v2, "open()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public register(Landroid/net/sip/SipProfile;ILandroid/net/sip/SipRegistrationListener;)V
    .locals 4
    .parameter "localProfile"
    .parameter "expiryTime"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 509
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Landroid/net/sip/SipManager;->createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/net/sip/ISipService;->createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v1

    .line 511
    .local v1, session:Landroid/net/sip/ISipSession;
    if-nez v1, :cond_0

    .line 512
    new-instance v2, Landroid/net/sip/SipException;

    const-string v3, "SipService.createSession() returns null"

    invoke-direct {v2, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v1           #session:Landroid/net/sip/ISipSession;
    :catch_0
    move-exception v0

    .line 517
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Landroid/net/sip/SipException;

    const-string/jumbo v3, "register()"

    invoke-direct {v2, v3, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 515
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #session:Landroid/net/sip/ISipSession;
    :cond_0
    :try_start_1
    invoke-interface {v1, p2}, Landroid/net/sip/ISipSession;->register(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 519
    return-void
.end method

.method public setRegistrationListener(Ljava/lang/String;Landroid/net/sip/SipRegistrationListener;)V
    .locals 3
    .parameter "localProfileUri"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 273
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    invoke-static {p2, p1}, Landroid/net/sip/SipManager;->createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/net/sip/ISipService;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/ISipSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string/jumbo v2, "setRegistrationListener()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public takeAudioCall(Landroid/content/Intent;Landroid/net/sip/SipAudioCall$Listener;)Landroid/net/sip/SipAudioCall;
    .locals 7
    .parameter "incomingCallIntent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 412
    if-nez p1, :cond_0

    .line 413
    new-instance v5, Landroid/net/sip/SipException;

    const-string v6, "Cannot retrieve session with null intent"

    invoke-direct {v5, v6}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 416
    :cond_0
    invoke-static {p1}, Landroid/net/sip/SipManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, callId:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 418
    new-instance v5, Landroid/net/sip/SipException;

    const-string v6, "Call ID missing in incoming call intent"

    invoke-direct {v5, v6}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 421
    :cond_1
    invoke-static {p1}, Landroid/net/sip/SipManager;->getOfferSessionDescription(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, offerSd:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 423
    new-instance v5, Landroid/net/sip/SipException;

    const-string v6, "Session description missing in incoming call intent"

    invoke-direct {v5, v6}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 428
    :cond_2
    :try_start_0
    iget-object v5, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    invoke-interface {v5, v1}, Landroid/net/sip/ISipService;->getPendingSession(Ljava/lang/String;)Landroid/net/sip/ISipSession;

    move-result-object v3

    .line 429
    .local v3, session:Landroid/net/sip/ISipSession;
    if-nez v3, :cond_3

    .line 430
    new-instance v5, Landroid/net/sip/SipException;

    const-string v6, "No pending session for the call"

    invoke-direct {v5, v6}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v3           #session:Landroid/net/sip/ISipSession;
    :catch_0
    move-exception v4

    .line 438
    .local v4, t:Ljava/lang/Throwable;
    new-instance v5, Landroid/net/sip/SipException;

    const-string/jumbo v6, "takeAudioCall()"

    invoke-direct {v5, v6, v4}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 432
    .end local v4           #t:Ljava/lang/Throwable;
    .restart local v3       #session:Landroid/net/sip/ISipSession;
    :cond_3
    :try_start_1
    new-instance v0, Landroid/net/sip/SipAudioCall;

    iget-object v5, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    invoke-interface {v3}, Landroid/net/sip/ISipSession;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/net/sip/SipAudioCall;-><init>(Landroid/content/Context;Landroid/net/sip/SipProfile;)V

    .line 434
    .local v0, call:Landroid/net/sip/SipAudioCall;
    new-instance v5, Landroid/net/sip/SipSession;

    invoke-direct {v5, v3}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;)V

    invoke-virtual {v0, v5, v2}, Landroid/net/sip/SipAudioCall;->attachCall(Landroid/net/sip/SipSession;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0, p2}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 436
    return-object v0
.end method

.method public unregister(Landroid/net/sip/SipProfile;Landroid/net/sip/SipRegistrationListener;)V
    .locals 4
    .parameter "localProfile"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 534
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/net/sip/SipManager;->createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/net/sip/ISipService;->createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v1

    .line 536
    .local v1, session:Landroid/net/sip/ISipSession;
    if-nez v1, :cond_0

    .line 537
    new-instance v2, Landroid/net/sip/SipException;

    const-string v3, "SipService.createSession() returns null"

    invoke-direct {v2, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .end local v1           #session:Landroid/net/sip/ISipSession;
    :catch_0
    move-exception v0

    .line 542
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Landroid/net/sip/SipException;

    const-string/jumbo v3, "unregister()"

    invoke-direct {v2, v3, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 540
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #session:Landroid/net/sip/ISipSession;
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/net/sip/ISipSession;->unregister()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 544
    return-void
.end method
