.class public Lcom/android/internal/telephony/DataConnectionAc;
.super Lcom/android/internal/util/AsyncChannel;
.source "DataConnectionAc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionAc$LinkPropertyChangeAction;
    }
.end annotation


# static fields
.field public static final BASE:I = 0x41000

.field private static final CMD_TO_STRING_COUNT:I = 0x1c

.field private static final DBG:Z = false

.field public static final REQ_ADD_APNCONTEXT:I = 0x41012

.field public static final REQ_GET_APNCONTEXT_LIST:I = 0x41016

.field public static final REQ_GET_APNSETTING:I = 0x41004

.field public static final REQ_GET_CID:I = 0x41002

.field public static final REQ_GET_LINK_CAPABILITIES:I = 0x4100a

.field public static final REQ_GET_LINK_PROPERTIES:I = 0x41006

.field public static final REQ_GET_RECONNECT_INTENT:I = 0x4101a

.field public static final REQ_GET_REFCOUNT:I = 0x41010

.field public static final REQ_IS_ACTIVE:I = 0x4101c

.field public static final REQ_IS_INACTIVE:I = 0x41000

.field public static final REQ_REMOVE_APNCONTEXT:I = 0x41014

.field public static final REQ_RESET:I = 0x4100e

.field public static final REQ_SET_LINK_PROPERTIES_HTTP_PROXY:I = 0x41008

.field public static final REQ_SET_RECONNECT_INTENT:I = 0x41018

.field public static final REQ_UPDATE_LINK_PROPERTIES_DATA_CALL_STATE:I = 0x4100c

.field public static final RSP_ADD_APNCONTEXT:I = 0x41013

.field public static final RSP_GET_APNCONTEXT_LIST:I = 0x41017

.field public static final RSP_GET_APNSETTING:I = 0x41005

.field public static final RSP_GET_CID:I = 0x41003

.field public static final RSP_GET_LINK_CAPABILITIES:I = 0x4100b

.field public static final RSP_GET_LINK_PROPERTIES:I = 0x41007

.field public static final RSP_GET_RECONNECT_INTENT:I = 0x4101b

.field public static final RSP_GET_REFCOUNT:I = 0x41011

.field public static final RSP_IS_ACTIVE:I = 0x4101d

.field public static final RSP_IS_INACTIVE:I = 0x41001

.field public static final RSP_REMOVE_APNCONTEXT:I = 0x41015

.field public static final RSP_RESET:I = 0x4100f

.field public static final RSP_SET_LINK_PROPERTIES_HTTP_PROXY:I = 0x41009

.field public static final RSP_SET_RECONNECT_INTENT:I = 0x41019

.field public static final RSP_UPDATE_LINK_PROPERTIES_DATA_CALL_STATE:I = 0x4100d

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field public dataConnection:Lcom/android/internal/telephony/DataConnection;

.field private mLogTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 89
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "REQ_IS_INACTIVE"

    aput-object v2, v0, v1

    .line 92
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "RSP_IS_INACTIVE"

    aput-object v2, v0, v1

    .line 93
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "REQ_GET_CID"

    aput-object v2, v0, v1

    .line 94
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "RSP_GET_CID"

    aput-object v2, v0, v1

    .line 95
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "REQ_GET_APNSETTING"

    aput-object v2, v0, v1

    .line 96
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "RSP_GET_APNSETTING"

    aput-object v2, v0, v1

    .line 97
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "REQ_GET_LINK_PROPERTIES"

    aput-object v2, v0, v1

    .line 98
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "RSP_GET_LINK_PROPERTIES"

    aput-object v2, v0, v1

    .line 99
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "REQ_SET_LINK_PROPERTIES_HTTP_PROXY"

    aput-object v2, v0, v1

    .line 101
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "RSP_SET_LINK_PROPERTIES_HTTP_PROXY"

    aput-object v2, v0, v1

    .line 103
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "REQ_GET_LINK_CAPABILITIES"

    aput-object v2, v0, v1

    .line 104
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "RSP_GET_LINK_CAPABILITIES"

    aput-object v2, v0, v1

    .line 105
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "REQ_UPDATE_LINK_PROPERTIES_DATA_CALL_STATE"

    aput-object v2, v0, v1

    .line 107
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "RSP_UPDATE_LINK_PROPERTIES_DATA_CALL_STATE"

    aput-object v2, v0, v1

    .line 109
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "REQ_RESET"

    aput-object v2, v0, v1

    .line 110
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "RSP_RESET"

    aput-object v2, v0, v1

    .line 111
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "REQ_GET_REFCOUNT"

    aput-object v2, v0, v1

    .line 112
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "RSP_GET_REFCOUNT"

    aput-object v2, v0, v1

    .line 113
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "REQ_ADD_APNCONTEXT"

    aput-object v2, v0, v1

    .line 114
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v2, "RSP_ADD_APNCONTEXT"

    aput-object v2, v0, v1

    .line 115
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v2, "REQ_REMOVE_APNCONTEXT"

    aput-object v2, v0, v1

    .line 116
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x15

    const-string v2, "RSP_REMOVE_APNCONTEXT"

    aput-object v2, v0, v1

    .line 117
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x16

    const-string v2, "REQ_GET_APNCONTEXT_LIST"

    aput-object v2, v0, v1

    .line 118
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x17

    const-string v2, "RSP_GET_APNCONTEXT_LIST"

    aput-object v2, v0, v1

    .line 119
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x18

    const-string v2, "REQ_SET_RECONNECT_INTENT"

    aput-object v2, v0, v1

    .line 120
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x19

    const-string v2, "RSP_SET_RECONNECT_INTENT"

    aput-object v2, v0, v1

    .line 121
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x1a

    const-string v2, "REQ_GET_RECONNECT_INTENT"

    aput-object v2, v0, v1

    .line 122
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x1b

    const-string v2, "RSP_GET_RECONNECT_INTENT"

    aput-object v2, v0, v1

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V
    .locals 0
    .parameter "dc"
    .parameter "logTag"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    .line 155
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnectionAc;->mLogTag:Ljava/lang/String;

    .line 156
    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .locals 2
    .parameter "cmd"

    .prologue
    const v1, 0x41000

    .line 125
    sub-int/2addr p0, v1

    .line 126
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 127
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    add-int v0, p0, v1

    invoke-static {v0}, Lcom/android/internal/util/AsyncChannel;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionAc;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataConnectionAc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-void
.end method


# virtual methods
.method public addApnContextSync(Lcom/android/internal/telephony/ApnContext;)V
    .locals 3
    .parameter "apnContext"

    .prologue
    .line 457
    const v1, 0x41012

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 458
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41013

    if-ne v1, v2, :cond_0

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addApnContext error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getApnListSync()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    const v1, 0x41016

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 517
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41017

    if-ne v1, v2, :cond_0

    .line 519
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspApnList(Landroid/os/Message;)Ljava/util/Collection;

    move-result-object v1

    .line 523
    :goto_0
    return-object v1

    .line 521
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApnList error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 523
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;
    .locals 3

    .prologue
    .line 286
    const v1, 0x41004

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 287
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41005

    if-ne v1, v2, :cond_0

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspApnSetting(Landroid/os/Message;)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 291
    :goto_0
    return-object v1

    .line 290
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApnSetting error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 291
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCidSync()I
    .locals 3

    .prologue
    .line 216
    const v1, 0x41002

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 217
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41003

    if-ne v1, v2, :cond_0

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspCid(Landroid/os/Message;)I

    move-result v1

    .line 221
    :goto_0
    return v1

    .line 220
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspCid error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 221
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLinkCapabilitiesSync()Landroid/net/LinkCapabilities;
    .locals 3

    .prologue
    .line 412
    const v1, 0x4100a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 413
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4100b

    if-ne v1, v2, :cond_0

    .line 414
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspLinkCapabilities(Landroid/os/Message;)Landroid/net/LinkCapabilities;

    move-result-object v1

    .line 417
    :goto_0
    return-object v1

    .line 416
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLinkCapabilities error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 417
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLinkPropertiesSync()Landroid/net/LinkProperties;
    .locals 3

    .prologue
    .line 322
    const v1, 0x41006

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 323
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41007

    if-ne v1, v2, :cond_0

    .line 324
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspLinkProperties(Landroid/os/Message;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 327
    :goto_0
    return-object v1

    .line 326
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLinkProperties error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 327
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getReconnectIntentSync()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 576
    const v1, 0x4101a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 577
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4101b

    if-ne v1, v2, :cond_0

    .line 579
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspReconnectIntent(Landroid/os/Message;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 582
    :goto_0
    return-object v1

    .line 581
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReconnectIntent error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 582
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRefCountSync()I
    .locals 3

    .prologue
    .line 250
    const v1, 0x41010

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 251
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41011

    if-ne v1, v2, :cond_0

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspRefCount(Landroid/os/Message;)I

    move-result v1

    .line 255
    :goto_0
    return v1

    .line 254
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspRefCount error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 255
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isActiveSync()Z
    .locals 3

    .prologue
    .line 620
    const v1, 0x4101c

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 621
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4101d

    if-ne v1, v2, :cond_0

    .line 622
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspIsActive(Landroid/os/Message;)Z

    move-result v1

    .line 625
    :goto_0
    return v1

    .line 624
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspIsActive error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 625
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInactiveSync()Z
    .locals 3

    .prologue
    .line 182
    const v1, 0x41000

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 183
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41001

    if-ne v1, v2, :cond_0

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspIsInactive(Landroid/os/Message;)Z

    move-result v1

    .line 187
    :goto_0
    return v1

    .line 186
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspIsInactive error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 187
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeApnContextSync(Lcom/android/internal/telephony/ApnContext;)V
    .locals 3
    .parameter "apnContext"

    .prologue
    .line 480
    const v1, 0x41014

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 481
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41015

    if-ne v1, v2, :cond_0

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeApnContext error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reqAddApnContext(Lcom/android/internal/telephony/ApnContext;)V
    .locals 2
    .parameter "apnContext"

    .prologue
    .line 447
    const v1, 0x41012

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 449
    .local v0, response:Landroid/os/Message;
    return-void
.end method

.method public reqApnSetting()V
    .locals 1

    .prologue
    .line 264
    const v0, 0x41004

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    .line 266
    return-void
.end method

.method public reqCid()V
    .locals 1

    .prologue
    .line 196
    const v0, 0x41002

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    .line 198
    return-void
.end method

.method public reqGetApnList(Lcom/android/internal/telephony/ApnContext;)V
    .locals 2
    .parameter "apnContext"

    .prologue
    .line 493
    const v1, 0x41016

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 495
    .local v0, response:Landroid/os/Message;
    return-void
.end method

.method public reqGetReconnectIntent()V
    .locals 2

    .prologue
    .line 555
    const v1, 0x4101a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 557
    .local v0, response:Landroid/os/Message;
    return-void
.end method

.method public reqIsActive()V
    .locals 1

    .prologue
    .line 601
    const v0, 0x4101c

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    .line 603
    return-void
.end method

.method public reqIsInactive()V
    .locals 1

    .prologue
    .line 163
    const v0, 0x41000

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    .line 165
    return-void
.end method

.method public reqLinkCapabilities()V
    .locals 1

    .prologue
    .line 390
    const v0, 0x4100a

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    .line 392
    return-void
.end method

.method public reqLinkProperties()V
    .locals 1

    .prologue
    .line 300
    const v0, 0x41006

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    .line 302
    return-void
.end method

.method public reqRefCount()V
    .locals 1

    .prologue
    .line 230
    const v0, 0x41010

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    .line 232
    return-void
.end method

.method public reqRemomveApnContext(Lcom/android/internal/telephony/ApnContext;)V
    .locals 2
    .parameter "apnContext"

    .prologue
    .line 470
    const v1, 0x41014

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 472
    .local v0, response:Landroid/os/Message;
    return-void
.end method

.method public reqReset()V
    .locals 1

    .prologue
    .line 426
    const v0, 0x4100e

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    .line 428
    return-void
.end method

.method public reqSetLinkPropertiesHttpProxy(Landroid/net/ProxyProperties;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 336
    const v0, 0x41008

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(ILjava/lang/Object;)V

    .line 338
    return-void
.end method

.method public reqSetReconnectIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 532
    const v1, 0x41018

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 534
    .local v0, response:Landroid/os/Message;
    return-void
.end method

.method public reqUpdateLinkPropertiesDataCallState(Lcom/android/internal/telephony/DataCallState;)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 358
    const v0, 0x4100c

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(ILjava/lang/Object;)V

    .line 360
    return-void
.end method

.method public resetSync()V
    .locals 3

    .prologue
    .line 434
    const v1, 0x4100e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 435
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4100f

    if-ne v1, v2, :cond_0

    .line 440
    :goto_0
    return-void

    .line 438
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restSync error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rspApnList(Landroid/os/Message;)Ljava/util/Collection;
    .locals 1
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    .line 505
    .local v0, retVal:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #retVal:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .restart local v0       #retVal:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    :cond_0
    return-object v0
.end method

.method public rspApnSetting(Landroid/os/Message;)Lcom/android/internal/telephony/ApnSetting;
    .locals 1
    .parameter "response"

    .prologue
    .line 275
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 277
    .local v0, retVal:Lcom/android/internal/telephony/ApnSetting;
    return-object v0
.end method

.method public rspCid(Landroid/os/Message;)I
    .locals 1
    .parameter "response"

    .prologue
    .line 207
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 209
    .local v0, retVal:I
    return v0
.end method

.method public rspIsActive(Landroid/os/Message;)Z
    .locals 2
    .parameter "response"

    .prologue
    const/4 v0, 0x1

    .line 611
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 613
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 611
    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rspIsInactive(Landroid/os/Message;)Z
    .locals 2
    .parameter "response"

    .prologue
    const/4 v0, 0x1

    .line 173
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 175
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 173
    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rspLinkCapabilities(Landroid/os/Message;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter "response"

    .prologue
    .line 401
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkCapabilities;

    .line 403
    .local v0, retVal:Landroid/net/LinkCapabilities;
    return-object v0
.end method

.method public rspLinkProperties(Landroid/os/Message;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "response"

    .prologue
    .line 311
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkProperties;

    .line 313
    .local v0, retVal:Landroid/net/LinkProperties;
    return-object v0
.end method

.method public rspReconnectIntent(Landroid/os/Message;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "response"

    .prologue
    .line 566
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    .line 567
    .local v0, retVal:Landroid/app/PendingIntent;
    return-object v0
.end method

.method public rspRefCount(Landroid/os/Message;)I
    .locals 1
    .parameter "response"

    .prologue
    .line 241
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 243
    .local v0, retVal:I
    return v0
.end method

.method public rspUpdateLinkPropertiesDataCallState(Landroid/os/Message;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    .locals 1
    .parameter "response"

    .prologue
    .line 363
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    .line 365
    .local v0, retVal:Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    return-object v0
.end method

.method public setLinkPropertiesHttpProxySync(Landroid/net/ProxyProperties;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 344
    const v1, 0x41008

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 346
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41009

    if-ne v1, v2, :cond_0

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLinkPropertiesHttpPoxy error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setReconnectIntentSync(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 542
    const v1, 0x41018

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 543
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41019

    if-ne v1, v2, :cond_0

    .line 548
    :goto_0
    return-void

    .line 546
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReconnectIntent error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLinkPropertiesDataCallStateSync(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    .locals 3
    .parameter "newState"

    .prologue
    .line 374
    const v1, 0x4100c

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 376
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4100d

    if-ne v1, v2, :cond_0

    .line 378
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspUpdateLinkPropertiesDataCallState(Landroid/os/Message;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    move-result-object v1

    .line 381
    :goto_0
    return-object v1

    .line 380
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLinkProperties error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 381
    new-instance v1, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;-><init>(Landroid/net/LinkProperties;)V

    goto :goto_0
.end method
