.class public Lbaidu/net/sip/SipManager;
.super Ljava/lang/Object;
.source "SipManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbaidu/net/sip/SipManager$ListenerRelay;
    }
.end annotation


# static fields
.field public static final ACTION_SIP_ADD_PHONE:Ljava/lang/String; = "com.baidu.phone.SIP_ADD_PHONE"

.field public static final ACTION_SIP_INCOMING_CALL:Ljava/lang/String; = "com.baidu.phone.SIP_INCOMING_CALL"

.field public static final ACTION_SIP_REMOVE_PHONE:Ljava/lang/String; = "com.baidu.phone.SIP_REMOVE_PHONE"

.field public static final ACTION_SIP_SERVICE_UP:Ljava/lang/String; = "baidu.net.sip.SIP_SERVICE_UP"

.field public static final BAIDU_SIP_SERVICE_NAME:Ljava/lang/String; = "baidusip"

.field public static final EXTRA_CALL_ID:Ljava/lang/String; = "android:sipCallID"

.field public static final EXTRA_LOCAL_URI:Ljava/lang/String; = "android:localSipUri"

.field public static final EXTRA_OFFER_SD:Ljava/lang/String; = "android:sipOfferSD"

.field private static final FEATURE_BAIDU_VOIP:Ljava/lang/String; = "baidu.software.sip.voip"

.field public static final INCOMING_CALL_RESULT_CODE:I = 0x65

.field private static final TAG:Ljava/lang/String; = "baidu.net.sip"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsOutgoingCallVideoEnabled:Z

.field private mSipService:Lbaidu/net/sip/ISipService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbaidu/net/sip/SipManager;->mIsOutgoingCallVideoEnabled:Z

    .line 183
    iput-object p1, p0, Lbaidu/net/sip/SipManager;->mContext:Landroid/content/Context;

    .line 184
    invoke-direct {p0}, Lbaidu/net/sip/SipManager;->createSipService()V

    .line 185
    return-void
.end method

.method public static createIncomingCallBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "callId"
    .parameter "sessionDescription"

    .prologue
    .line 507
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 508
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android:sipCallID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v1, "android:sipOfferSD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    return-object v0
.end method

.method private static createRelay(Lbaidu/net/sip/SipRegistrationListener;Ljava/lang/String;)Lbaidu/net/sip/ISipSessionListener;
    .locals 1
    .parameter "listener"
    .parameter "uri"

    .prologue
    .line 591
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbaidu/net/sip/SipManager$ListenerRelay;

    invoke-direct {v0, p0, p1}, Lbaidu/net/sip/SipManager$ListenerRelay;-><init>(Lbaidu/net/sip/SipRegistrationListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createSipService()V
    .locals 3

    .prologue
    .line 188
    const-string v1, "baidu.net.sip"

    const-string v2, "<====> SipManager::createSipService()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "baidusip"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 190
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lbaidu/net/sip/ISipService$Stub;->asInterface(Landroid/os/IBinder;)Lbaidu/net/sip/ISipService;

    move-result-object v1

    iput-object v1, p0, Lbaidu/net/sip/SipManager;->mSipService:Lbaidu/net/sip/ISipService;

    .line 191
    return-void
.end method

.method public static getCallId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "incomingCallIntent"

    .prologue
    .line 482
    const-string v0, "android:sipCallID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOfferSessionDescription(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "incomingCallIntent"

    .prologue
    .line 494
    const-string v0, "android:sipOfferSD"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isApiSupported(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 161
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

    .line 469
    if-nez p0, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v2

    .line 470
    :cond_1
    invoke-static {p0}, Lbaidu/net/sip/SipManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, callId:Ljava/lang/String;
    invoke-static {p0}, Lbaidu/net/sip/SipManager;->getOfferSessionDescription(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 472
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
    .line 178
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
    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "baidu.software.sip.voip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lbaidu/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;)Lbaidu/net/sip/SipManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 154
    invoke-static {p0}, Lbaidu/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lbaidu/net/sip/SipManager;

    invoke-direct {v0, p0}, Lbaidu/net/sip/SipManager;-><init>(Landroid/content/Context;)V

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
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 285
    const-string v1, "baidu.net.sip"

    const-string v2, "<====> SipManager::close()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipManager;->mSipService:Lbaidu/net/sip/ISipService;

    invoke-interface {v1, p1}, Lbaidu/net/sip/ISipService;->close(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lbaidu/net/sip/SipException;

    const-string v2, "close()"

    invoke-direct {v1, v2, v0}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createSipSession(Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipSession$Listener;)Lbaidu/net/sip/SipSession;
    .locals 4
    .parameter "localProfile"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 604
    const-string v2, "baidu.net.sip"

    const-string v3, "<====> SipManager::createSipSession()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :try_start_0
    iget-object v2, p0, Lbaidu/net/sip/SipManager;->mSipService:Lbaidu/net/sip/ISipService;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lbaidu/net/sip/ISipService;->createSession(Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/ISipSessionListener;)Lbaidu/net/sip/ISipSession;

    move-result-object v1

    .line 607
    .local v1, s:Lbaidu/net/sip/ISipSession;
    if-nez v1, :cond_0

    .line 608
    new-instance v2, Lbaidu/net/sip/SipException;

    const-string v3, "Failed to create SipSession; network unavailable?"

    invoke-direct {v2, v3}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    .end local v1           #s:Lbaidu/net/sip/ISipSession;
    :catch_0
    move-exception v0

    .line 613
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lbaidu/net/sip/SipException;

    const-string v3, "createSipSession()"

    invoke-direct {v2, v3, v0}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 611
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #s:Lbaidu/net/sip/ISipSession;
    :cond_0
    :try_start_1
    new-instance v2, Lbaidu/net/sip/SipSession;

    invoke-direct {v2, v1, p2}, Lbaidu/net/sip/SipSession;-><init>(Lbaidu/net/sip/ISipSession;Lbaidu/net/sip/SipSession$Listener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method

.method public getListOfProfiles()[Lbaidu/net/sip/SipProfile;
    .locals 2

    .prologue
    .line 667
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipManager;->mSipService:Lbaidu/net/sip/ISipService;

    invoke-interface {v1}, Lbaidu/net/sip/ISipService;->getListOfProfiles()[Lbaidu/net/sip/SipProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 669
    :goto_0
    return-object v1

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Lbaidu/net/sip/SipProfile;

    goto :goto_0
.end method

.method public getSessionFor(Landroid/content/Intent;)Lbaidu/net/sip/SipSession;
    .locals 5
    .parameter "incomingCallIntent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 581
    :try_start_0
    invoke-static {p1}, Lbaidu/net/sip/SipManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, callId:Ljava/lang/String;
    iget-object v3, p0, Lbaidu/net/sip/SipManager;->mSipService:Lbaidu/net/sip/ISipService;

    invoke-interface {v3, v0}, Lbaidu/net/sip/ISipService;->getPendingSession(Ljava/lang/String;)Lbaidu/net/sip/ISipSession;

    move-result-object v2

    .line 583
    .local v2, s:Lbaidu/net/sip/ISipSession;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lbaidu/net/sip/SipSession;

    invoke-direct {v3, v2}, Lbaidu/net/sip/SipSession;-><init>(Lbaidu/net/sip/ISipSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    .end local v0           #callId:Ljava/lang/String;
    .end local v2           #s:Lbaidu/net/sip/ISipSession;
    :catch_0
    move-exception v1

    .line 585
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lbaidu/net/sip/SipException;

    const-string v4, "getSessionFor()"

    invoke-direct {v3, v4, v1}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSipProfileByBDUSS(Lbaidu/net/sip/extension/UserProfile;Ljava/lang/String;Ljava/lang/String;Z)Lbaidu/net/sip/SipProfile;
    .locals 4
    .parameter "hostProfile"
    .parameter "bduss"
    .parameter "baiduName"
    .parameter "secure"

    .prologue
    .line 630
    iget-object v2, p0, Lbaidu/net/sip/SipManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 631
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 632
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 634
    invoke-static {p1, p2, p3, p4}, Lbaidu/net/sip/extension/SipHttpUtilites;->getSipProfileByBDUSS(Lbaidu/net/sip/extension/UserProfile;Ljava/lang/String;Ljava/lang/String;Z)Lbaidu/net/sip/SipProfile;

    move-result-object v2

    .line 636
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getUserProfiles(Ljava/util/Map;Z)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter "secure"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbaidu/net/sip/extension/QueryItem;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbaidu/net/sip/extension/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 649
    .local p1, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    iget-object v2, p0, Lbaidu/net/sip/SipManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 650
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 651
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 653
    invoke-static {p1, p2}, Lbaidu/net/sip/extension/SipHttpUtilites;->getUserProfiles(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v2

    .line 655
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public isOpened(Ljava/lang/String;)Z
    .locals 3
    .parameter "localProfileUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 303
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipManager;->mSipService:Lbaidu/net/sip/ISipService;

    invoke-interface {v1, p1}, Lbaidu/net/sip/ISipService;->isOpened(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lbaidu/net/sip/SipException;

    const-string v2, "isOpened()"

    invoke-direct {v1, v2, v0}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isRegistered(Ljava/lang/String;)Z
    .locals 3
    .parameter "localProfileUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 324
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipManager;->mSipService:Lbaidu/net/sip/ISipService;

    invoke-interface {v1, p1}, Lbaidu/net/sip/ISipService;->isRegistered(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lbaidu/net/sip/SipException;

    const-string v2, "isRegistered()"

    invoke-direct {v1, v2, v0}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public makeAudioCall(Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipAudioCall$Listener;I)Lbaidu/net/sip/SipAudioCall;
    .locals 4
    .parameter "localProfile"
    .parameter "peerProfile"
    .parameter "listener"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 358
    const-string v2, "baidu.net.sip"

    const-string v3, "====> SipManager::makeAudioCall()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lbaidu/net/sip/SipManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lbaidu/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 360
    new-instance v2, Lbaidu/net/sip/SipException;

    const-string v3, "VOIP API is not supported"

    invoke-direct {v2, v3}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    :cond_0
    new-instance v0, Lbaidu/net/sip/SipAudioCall;

    iget-object v2, p0, Lbaidu/net/sip/SipManager;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lbaidu/net/sip/SipManager;->mIsOutgoingCallVideoEnabled:Z

    invoke-direct {v0, v2, p1, v3}, Lbaidu/net/sip/SipAudioCall;-><init>(Landroid/content/Context;Lbaidu/net/sip/SipProfile;Z)V

    .line 367
    .local v0, call:Lbaidu/net/sip/SipAudioCall;
    invoke-virtual {v0, p3}, Lbaidu/net/sip/SipAudioCall;->setListener(Lbaidu/net/sip/SipAudioCall$Listener;)V

    .line 368
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lbaidu/net/sip/SipManager;->createSipSession(Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipSession$Listener;)Lbaidu/net/sip/SipSession;

    move-result-object v1

    .line 369
    .local v1, s:Lbaidu/net/sip/SipSession;
    invoke-virtual {v0, p2, v1, p4}, Lbaidu/net/sip/SipAudioCall;->makeCall(Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipSession;I)V

    .line 370
    const-string v2, "baidu.net.sip"

    const-string v3, "<==== SipManager::makeAudioCall()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-object v0
.end method

.method public makeAudioCall(Ljava/lang/String;Ljava/lang/String;Lbaidu/net/sip/SipAudioCall$Listener;I)Lbaidu/net/sip/SipAudioCall;
    .locals 3
    .parameter "localProfileUri"
    .parameter "peerProfileUri"
    .parameter "listener"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 396
    iget-object v1, p0, Lbaidu/net/sip/SipManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lbaidu/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    new-instance v1, Lbaidu/net/sip/SipException;

    const-string v2, "VOIP API is not supported"

    invoke-direct {v1, v2}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    :cond_0
    :try_start_0
    new-instance v1, Lbaidu/net/sip/SipProfile$Builder;

    invoke-direct {v1, p1}, Lbaidu/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lbaidu/net/sip/SipProfile$Builder;->build()Lbaidu/net/sip/SipProfile;

    move-result-object v1

    new-instance v2, Lbaidu/net/sip/SipProfile$Builder;

    invoke-direct {v2, p2}, Lbaidu/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lbaidu/net/sip/SipProfile$Builder;->build()Lbaidu/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3, p4}, Lbaidu/net/sip/SipManager;->makeAudioCall(Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipAudioCall$Listener;I)Lbaidu/net/sip/SipAudioCall;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, e:Ljava/text/ParseException;
    new-instance v1, Lbaidu/net/sip/SipException;

    const-string v2, "build SipProfile"

    invoke-direct {v1, v2, v0}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public open(Lbaidu/net/sip/SipProfile;)V
    .locals 3
    .parameter "localProfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 205
    const-string v1, "baidu.net.sip"

    const-string v2, "<====> SipManager::open()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipManager;->mSipService:Lbaidu/net/sip/ISipService;

    invoke-interface {v1, p1}, Lbaidu/net/sip/ISipService;->open(Lbaidu/net/sip/SipProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lbaidu/net/sip/SipException;

    const-string/jumbo v2, "open()"

    invoke-direct {v1, v2, v0}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public open(Lbaidu/net/sip/SipProfile;Landroid/app/PendingIntent;Lbaidu/net/sip/SipRegistrationListener;)V
    .locals 3
    .parameter "localProfile"
    .parameter "incomingCallPendingIntent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 245
    const-string v1, "baidu.net.sip"

    const-string v2, "<====> SipManager::open()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    if-nez p2, :cond_0

    .line 247
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "incomingCallPendingIntent cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_0
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipManager;->mSipService:Lbaidu/net/sip/ISipService;

    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lbaidu/net/sip/SipManager;->createRelay(Lbaidu/net/sip/SipRegistrationListener;Ljava/lang/String;)Lbaidu/net/sip/ISipSessionListener;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lbaidu/net/sip/ISipService;->open3(Lbaidu/net/sip/SipProfile;Landroid/app/PendingIntent;Lbaidu/net/sip/ISipSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lbaidu/net/sip/SipException;

    const-string/jumbo v2, "open()"

    invoke-direct {v1, v2, v0}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public register(Lbaidu/net/sip/SipProfile;ILbaidu/net/sip/SipRegistrationListener;)V
    .locals 4
    .parameter "localProfile"
    .parameter "expiryTime"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 528
    const-string v2, "baidu.net.sip"

    const-string v3, "<====> SipManager::register()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :try_start_0
    iget-object v2, p0, Lbaidu/net/sip/SipManager;->mSipService:Lbaidu/net/sip/ISipService;

    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lbaidu/net/sip/SipManager;->createRelay(Lbaidu/net/sip/SipRegistrationListener;Ljava/lang/String;)Lbaidu/net/sip/ISipSessionListener;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lbaidu/net/sip/ISipService;->createSession(Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/ISipSessionListener;)Lbaidu/net/sip/ISipSession;

    move-result-object v1

    .line 532
    .local v1, session:Lbaidu/net/sip/ISipSession;
    if-nez v1, :cond_0

    .line 533
    new-instance v2, Lbaidu/net/sip/SipException;

    const-string v3, "SipService.createSession() returns null"

    invoke-direct {v2, v3}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .end local v1           #session:Lbaidu/net/sip/ISipSession;
    :catch_0
    move-exception v0

    .line 538
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lbaidu/net/sip/SipException;

    const-string/jumbo v3, "register()"

    invoke-direct {v2, v3, v0}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 536
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #session:Lbaidu/net/sip/ISipSession;
    :cond_0
    :try_start_1
    invoke-interface {v1, p2}, Lbaidu/net/sip/ISipSession;->register(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 540
    return-void
.end method

.method public setOutgoingCallVideoEnabled(Z)V
    .locals 0
    .parameter "isVideoEnabled"

    .prologue
    .line 333
    iput-boolean p1, p0, Lbaidu/net/sip/SipManager;->mIsOutgoingCallVideoEnabled:Z

    .line 334
    return-void
.end method

.method public setRegistrationListener(Ljava/lang/String;Lbaidu/net/sip/SipRegistrationListener;)V
    .locals 3
    .parameter "localProfileUri"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 270
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipManager;->mSipService:Lbaidu/net/sip/ISipService;

    invoke-static {p2, p1}, Lbaidu/net/sip/SipManager;->createRelay(Lbaidu/net/sip/SipRegistrationListener;Ljava/lang/String;)Lbaidu/net/sip/ISipSessionListener;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lbaidu/net/sip/ISipService;->setRegistrationListener(Ljava/lang/String;Lbaidu/net/sip/ISipSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lbaidu/net/sip/SipException;

    const-string/jumbo v2, "setRegistrationListener()"

    invoke-direct {v1, v2, v0}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public takeAudioCall(Landroid/content/Intent;Lbaidu/net/sip/SipAudioCall$Listener;)Lbaidu/net/sip/SipAudioCall;
    .locals 8
    .parameter "incomingCallIntent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 424
    const-string v5, "baidu.net.sip"

    const-string v6, "====> SipManager::takeAudioCall()"

    invoke-static {v5, v6}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    if-nez p1, :cond_0

    .line 426
    new-instance v5, Lbaidu/net/sip/SipException;

    const-string v6, "Cannot retrieve session with null intent"

    invoke-direct {v5, v6}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 429
    :cond_0
    invoke-static {p1}, Lbaidu/net/sip/SipManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, callId:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 431
    new-instance v5, Lbaidu/net/sip/SipException;

    const-string v6, "Call ID missing in incoming call intent"

    invoke-direct {v5, v6}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 434
    :cond_1
    invoke-static {p1}, Lbaidu/net/sip/SipManager;->getOfferSessionDescription(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, offerSd:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 436
    new-instance v5, Lbaidu/net/sip/SipException;

    const-string v6, "Session description missing in incoming call intent"

    invoke-direct {v5, v6}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 439
    :cond_2
    const-string v5, "baidu.net.sip"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "offerSd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :try_start_0
    iget-object v5, p0, Lbaidu/net/sip/SipManager;->mSipService:Lbaidu/net/sip/ISipService;

    invoke-interface {v5, v1}, Lbaidu/net/sip/ISipService;->getPendingSession(Ljava/lang/String;)Lbaidu/net/sip/ISipSession;

    move-result-object v3

    .line 443
    .local v3, session:Lbaidu/net/sip/ISipSession;
    if-nez v3, :cond_3

    .line 444
    new-instance v5, Lbaidu/net/sip/SipException;

    const-string v6, "No pending session for the call"

    invoke-direct {v5, v6}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    .end local v3           #session:Lbaidu/net/sip/ISipSession;
    :catch_0
    move-exception v4

    .line 457
    .local v4, t:Ljava/lang/Throwable;
    new-instance v5, Lbaidu/net/sip/SipException;

    const-string/jumbo v6, "takeAudioCall()"

    invoke-direct {v5, v6, v4}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 446
    .end local v4           #t:Ljava/lang/Throwable;
    .restart local v3       #session:Lbaidu/net/sip/ISipSession;
    :cond_3
    :try_start_1
    new-instance v0, Lbaidu/net/sip/SipAudioCall;

    iget-object v5, p0, Lbaidu/net/sip/SipManager;->mContext:Landroid/content/Context;

    invoke-interface {v3}, Lbaidu/net/sip/ISipSession;->getLocalProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v0, v5, v6, v7}, Lbaidu/net/sip/SipAudioCall;-><init>(Landroid/content/Context;Lbaidu/net/sip/SipProfile;Z)V

    .line 452
    .local v0, call:Lbaidu/net/sip/SipAudioCall;
    new-instance v5, Lbaidu/net/sip/SipSession;

    invoke-direct {v5, v3}, Lbaidu/net/sip/SipSession;-><init>(Lbaidu/net/sip/ISipSession;)V

    invoke-virtual {v0, v5, v2}, Lbaidu/net/sip/SipAudioCall;->attachCall(Lbaidu/net/sip/SipSession;Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, p2}, Lbaidu/net/sip/SipAudioCall;->setListener(Lbaidu/net/sip/SipAudioCall$Listener;)V

    .line 454
    const-string v5, "baidu.net.sip"

    const-string v6, "<==== SipManager::takeAudioCall()"

    invoke-static {v5, v6}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 455
    return-object v0
.end method

.method public unregister(Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipRegistrationListener;)V
    .locals 4
    .parameter "localProfile"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 554
    const-string v2, "baidu.net.sip"

    const-string v3, "<====> SipManager::unregister()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :try_start_0
    iget-object v2, p0, Lbaidu/net/sip/SipManager;->mSipService:Lbaidu/net/sip/ISipService;

    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lbaidu/net/sip/SipManager;->createRelay(Lbaidu/net/sip/SipRegistrationListener;Ljava/lang/String;)Lbaidu/net/sip/ISipSessionListener;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lbaidu/net/sip/ISipService;->createSession(Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/ISipSessionListener;)Lbaidu/net/sip/ISipSession;

    move-result-object v1

    .line 558
    .local v1, session:Lbaidu/net/sip/ISipSession;
    if-nez v1, :cond_0

    .line 559
    new-instance v2, Lbaidu/net/sip/SipException;

    const-string v3, "SipService.createSession() returns null"

    invoke-direct {v2, v3}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    .end local v1           #session:Lbaidu/net/sip/ISipSession;
    :catch_0
    move-exception v0

    .line 564
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lbaidu/net/sip/SipException;

    const-string/jumbo v3, "unregister()"

    invoke-direct {v2, v3, v0}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 562
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #session:Lbaidu/net/sip/ISipSession;
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lbaidu/net/sip/ISipSession;->unregister()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 566
    return-void
.end method
