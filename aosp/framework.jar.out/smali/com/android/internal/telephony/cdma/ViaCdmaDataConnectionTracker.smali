.class public final Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "ViaCdmaDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;,
        Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$a;
    }
.end annotation


# static fields
.field protected static final APN_DELAY_MILLIS:I = 0x7d0

.field static final a:Landroid/net/Uri;

.field static final b:Landroid/net/Uri;

.field private static final i:I

.field private static final j:[Ljava/lang/String;

.field private static final k:[Ljava/lang/String;


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private c:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private d:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private e:Z

.field private f:I

.field private g:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;

.field private h:Z

.field private l:[Ljava/lang/String;

.field private m:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$a;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Lcom/android/internal/telephony/ApnSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    const-string/jumbo v0, "ro.cdma.timetoradiorestart"

    const v1, 0xea60

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->i:I

    .line 114
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v2

    const-string/jumbo v1, "mms"

    aput-object v1, v0, v3

    const-string v1, "dun"

    aput-object v1, v0, v4

    const-string v1, "hipri"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->j:[Ljava/lang/String;

    .line 120
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v2

    const-string/jumbo v1, "mms"

    aput-object v1, v0, v3

    const-string v1, "hipri"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->k:[Ljava/lang/String;

    .line 164
    const-string v0, "content://telephony/carriers/preferapn_no_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a:Landroid/net/Uri;

    .line 165
    const-string v0, "content://telephony/carriers_gemini/preferapn_no_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->b:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 5
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 178
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 75
    const-string v0, "CDMA"

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 82
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->e:Z

    .line 86
    iput v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->f:I

    .line 90
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->h:Z

    .line 125
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "dun"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->l:[Ljava/lang/String;

    .line 153
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n:Ljava/util/ArrayList;

    .line 159
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->o:Ljava/util/ArrayList;

    .line 168
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->p:Z

    .line 169
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q:Lcom/android/internal/telephony/ApnSetting;

    .line 179
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 181
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42001

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 182
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42006

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 183
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42004

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 184
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const v1, 0x42008

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 185
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const v1, 0x42007

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 187
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v1, 0x42010

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 189
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v1, 0x42014

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 190
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v1, 0x4200b

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v1, 0x4200c

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 192
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42019

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 193
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v2, 0x42015

    invoke-static {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->d:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 196
    iput-object p0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 199
    new-instance v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$a;-><init>(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->m:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$a;

    .line 200
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->r()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->m:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$a;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->broadcastMessenger()V

    .line 224
    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 787
    .local p1, apns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 788
    .local v1, result:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 790
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 794
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private a(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 21
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v20, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 645
    :cond_0
    const-string/jumbo v3, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 647
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "numeric"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "proxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "port"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "mmsc"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mmsproxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "mmsport"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "password"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string/jumbo v16, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v18, 0x1

    :goto_0
    const-string v19, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 675
    .local v2, apn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 678
    .end local v2           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    :cond_1
    return-object v20

    .line 647
    .restart local v15       #types:[Ljava/lang/String;
    :cond_2
    const/16 v18, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 338
    const-string/jumbo v0, "onDataConnectionAttached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    .line 340
    const-string/jumbo v0, "onDataConnectionAttached: start polling notify attached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->startNetStatPoll()V

    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->startDataStallAlarm(Z)V

    .line 343
    const-string v0, "dataAttached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 349
    :goto_0
    const-string v0, "dataAttached"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(Ljava/lang/String;)Z

    .line 350
    return-void

    .line 346
    :cond_0
    const-string v0, "dataAttached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 798
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->p:Z

    if-nez v2, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 803
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->s()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 805
    if-ltz p1, :cond_0

    .line 806
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 807
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 808
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->s()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 7
    .parameter "delay"
    .parameter "reason"

    .prologue
    const/4 v4, 0x0

    .line 1001
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Connection activate failed. Scheduling next attempt for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, p1, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1004
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1006
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.cdma-reconnect"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1007
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v2, "reconnect_alarm_extra_reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    const-string/jumbo v2, "simId"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1011
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 1013
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1016
    return-void
.end method

.method private a(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 1422
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 1423
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 1424
    .local v0, otaPrivision:[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1425
    const/4 v1, 0x0

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_0

    .line 1435
    .end local v0           #otaPrivision:[I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1428
    .restart local v0       #otaPrivision:[I
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n()V

    goto :goto_0

    .line 1425
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;I)V
    .locals 4
    .parameter "lastFailCauseCode"
    .parameter "reason"
    .parameter "retryOverride"

    .prologue
    const/4 v3, 0x0

    .line 975
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_1

    .line 982
    move v0, p3

    .line 983
    .local v0, nextReconnectDelay:I
    if-gez v0, :cond_0

    .line 984
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->m()V

    .line 985
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getRetryTimer()I

    move-result v0

    .line 986
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->increaseRetryCount()V

    .line 988
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(ILjava/lang/String;)V

    .line 990
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 991
    const-string v1, "NOT Posting Data Connection Unavailable notification -- likely transient error"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 997
    .end local v0           #nextReconnectDelay:I
    :cond_1
    :goto_0
    return-void

    .line 994
    .restart local v0       #nextReconnectDelay:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->b(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3
    .parameter "reason"
    .parameter "apnId"

    .prologue
    .line 1780
    sget-object v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->a:[I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1795
    :goto_0
    :pswitch_0
    return-void

    .line 1787
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0

    .line 1790
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 1792
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1780
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(ZLjava/lang/String;Z)V
    .locals 9
    .parameter "tearDown"
    .parameter "reason"
    .parameter "doAll"

    .prologue
    const v8, 0x4200f

    const/4 v7, 0x0

    .line 501
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnection: reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 504
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    .line 505
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 507
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 508
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 511
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v6, :cond_2

    .line 512
    const-string v5, "cleanUpConnection: currently is disconnecting, ignore"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 554
    :cond_1
    :goto_0
    return-void

    .line 515
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 516
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 518
    const/4 v4, 0x0

    .line 519
    .local v4, notificationDeferred:Z
    if-eqz p1, :cond_3

    .line 520
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->m()V

    .line 522
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 523
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v1, :cond_4

    .line 524
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 526
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_6

    .line 527
    if-eqz p3, :cond_5

    .line 528
    const-string v5, "cleanUpConnection: teardown, conn.tearDownAll"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v5

    invoke-virtual {p0, v8, v5, v7, p2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, p2, v5}, Lcom/android/internal/telephony/DataConnection;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    .line 536
    :goto_2
    const/4 v4, 0x1

    goto :goto_1

    .line 532
    :cond_5
    const-string v5, "cleanUpConnection: teardown, conn.tearDown"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v5

    invoke-virtual {p0, v8, v5, v7, p2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, p2, v5}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    .line 538
    :cond_6
    const-string v5, "cleanUpConnection: !tearDown, call conn.resetSynchronously"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 539
    if-eqz v2, :cond_7

    .line 540
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 542
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 547
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->stopDataStallAlarm()V

    .line 550
    if-nez v4, :cond_1

    .line 551
    const-string v5, "cleanupConnection: !notificationDeferred"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/android/internal/telephony/DataConnection$FailCause;)Z
    .locals 1
    .parameter "cause"

    .prologue
    .line 955
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 9
    .parameter "reason"

    .prologue
    const/4 v3, 0x0

    .line 416
    const-string v5, "CdmaDCT update 1.30"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "***trySetupData due to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_1

    const-string v5, "(unspecified)"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 419
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 422
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 426
    const-string v5, "(fix?) We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 427
    const/4 v3, 0x1

    .line 490
    :cond_0
    :goto_1
    return v3

    :cond_1
    move-object v5, p1

    .line 417
    goto :goto_0

    .line 430
    :cond_2
    const-string v5, "default"

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 431
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->getDataConnectionFromSetting()I

    move-result v0

    .line 432
    .local v0, defaultSIM:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultSIM:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 433
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v5

    if-eq v0, v5, :cond_3

    .line 434
    const-string v5, "The setting is off(1)"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 437
    :cond_3
    if-gez v0, :cond_4

    .line 438
    const-string v5, "The setting is off(2)"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 444
    .end local v0           #defaultSIM:I
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v2

    .line 445
    .local v2, psState:I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    .line 446
    .local v4, roaming:Z
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getDesiredPowerState()Z

    move-result v1

    .line 448
    .local v1, desiredPowerState:Z
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v6, :cond_9

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->isDataAllowed()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->isEmergency()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->p()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 452
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v6, :cond_8

    .line 453
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->d()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->o:Ljava/util/ArrayList;

    .line 454
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->o:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 455
    const-string v5, "No APN found"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 456
    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->b(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 457
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 461
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 462
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 463
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v6, "apnFailed"

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto/16 :goto_1

    .line 468
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create from allApns : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 473
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setup waitngApns : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->o:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 476
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c(Ljava/lang/String;)Z

    move-result v3

    .line 477
    .local v3, retValue:Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 480
    .end local v3           #retValue:Z
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trySetupData mState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mRequestedApnType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 481
    const-string v5, "default"

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v5, v6, :cond_a

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v5, v6, :cond_a

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v6, :cond_b

    .line 485
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v5, p1, v6}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v5, "default"

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 489
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 616
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v3, v4, :cond_2

    const/4 v0, 0x1

    .line 620
    .local v0, isConnected:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q()Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, operatorNumeric:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onApnChanged operatorNumeric value is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 622
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    .line 626
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c()V

    .line 627
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v3, :cond_0

    .line 628
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyPreferOrConnectedApn(Ljava/lang/String;)V

    .line 630
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v3, v4, :cond_1

    .line 631
    const-string v3, "apnChanged"

    invoke-direct {p0, v0, v3, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(ZLjava/lang/String;Z)V

    .line 632
    if-nez v0, :cond_1

    .line 634
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n()V

    .line 636
    const v2, 0x42003

    const-string v3, "apnChanged"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 639
    :cond_1
    return-void

    .end local v0           #isConnected:Z
    .end local v1           #operatorNumeric:Ljava/lang/String;
    :cond_2
    move v0, v2

    .line 616
    goto :goto_0
.end method

.method private b(Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 1
    .parameter "lastFailCauseCode"

    .prologue
    .line 1019
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1020
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1021
    return-void
.end method

.method private b(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;I)V
    .locals 3
    .parameter "cause"
    .parameter "reason"
    .parameter "retryOverride"

    .prologue
    .line 1540
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->b(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1541
    const-string/jumbo v0, "startDelayedRetry"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1543
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1546
    const-string v0, "apnFailed"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1547
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string/jumbo v1, "mms"

    if-ne v0, v1, :cond_0

    .line 1548
    const-string/jumbo v0, "startDelayedRetry CDMA_DATACALL_STATUS_FAILED!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1551
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 1552
    monitor-enter p0

    .line 1553
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->dataEnabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1554
    const-string/jumbo v0, "startDelayedRetry RestoreDefault data"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1555
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1556
    const v0, 0x42003

    new-instance v1, Ljava/lang/String;

    const-string v2, "RetoreDefault"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1558
    :cond_1
    monitor-exit p0

    .line 1563
    :goto_0
    return-void

    .line 1558
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1562
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;I)V
    .locals 3
    .parameter "reason"
    .parameter "apnId"

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 1799
    return-void
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 601
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 602
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 603
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    .line 607
    :goto_0
    return-object v0

    .line 605
    .end local v0           #result:[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n:Ljava/util/ArrayList;

    .line 690
    const/4 v7, 0x0

    .line 691
    .local v7, operator:Ljava/lang/String;
    const/4 v3, 0x0

    .line 693
    .local v3, selection:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q()Ljava/lang/String;

    move-result-object v7

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList : operator ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 696
    if-eqz v7, :cond_0

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 701
    :cond_0
    const/4 v6, 0x0

    .line 702
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->r()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 705
    if-eqz v6, :cond_2

    .line 706
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 707
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n:Ljava/util/ArrayList;

    .line 709
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 714
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q:Lcom/android/internal/telephony/ApnSetting;

    .line 715
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->b(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 724
    :cond_3
    :goto_0
    return-void

    .line 717
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->f()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q:Lcom/android/internal/telephony/ApnSetting;

    .line 718
    const-string v0, "Get PreferredAPN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q:Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 720
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q:Lcom/android/internal/telephony/ApnSetting;

    .line 721
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(I)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 37
    .parameter "reason"

    .prologue
    .line 863
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->g()Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;

    move-result-object v35

    .line 865
    .local v35, conn:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;
    if-nez v35, :cond_0

    .line 866
    const-string/jumbo v2, "setupData: No free ViaCdmaDataConnection found!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 867
    const/4 v2, 0x0

    .line 910
    :goto_0
    return v2

    .line 871
    :cond_0
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->g:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v4, "dun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 875
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->l:[Ljava/lang/String;

    .line 876
    .local v15, types:[Ljava/lang/String;
    const/4 v3, 0x3

    .line 878
    .local v3, apnId:I
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const/4 v14, 0x0

    const-string v16, "IP"

    const-string v17, "IP"

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 901
    .end local v3           #apnId:I
    .end local v15           #types:[Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call conn.bringUp mActiveApn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v36

    .line 904
    .local v36, msg:Landroid/os/Message;
    const v2, 0x42000

    move-object/from16 v0, v36

    iput v2, v0, Landroid/os/Message;->what:I

    .line 905
    move-object/from16 v0, p1

    move-object/from16 v1, v36

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;->bringUp(Landroid/os/Message;Lcom/android/internal/telephony/ApnSetting;)V

    .line 908
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->INITING:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 909
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 910
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 889
    .end local v36           #msg:Landroid/os/Message;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->e()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v34

    .line 890
    .local v34, apn:Lcom/android/internal/telephony/ApnSetting;
    if-nez v34, :cond_2

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 893
    :cond_2
    new-instance v16, Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/ApnSetting;->id:I

    move/from16 v17, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/ApnSetting;->authType:I

    move/from16 v28, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/internal/telephony/ApnSetting;->carrierEnabled:Z

    move/from16 v32, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v33, v0

    invoke-direct/range {v16 .. v33}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    goto/16 :goto_1
.end method

.method private d()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v1, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q()Ljava/lang/String;

    move-result-object v3

    .line 735
    .local v3, operator:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createAllApnList : operator ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 737
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 738
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->p:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v4, :cond_2

    .line 739
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preferred APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q:Lcom/android/internal/telephony/ApnSetting;

    iget-object v5, v5, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 741
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q:Lcom/android/internal/telephony/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 742
    const-string v4, "Waiting APN set to preferred APN"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 743
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_0
    :goto_0
    return-object v1

    .line 746
    :cond_1
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(I)V

    .line 747
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q:Lcom/android/internal/telephony/ApnSetting;

    .line 752
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 753
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 754
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 755
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->p:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q:Lcom/android/internal/telephony/ApnSetting;

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ctnet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 759
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 760
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 763
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private d(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 914
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 915
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->startNetStatPoll()V

    .line 917
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->startDataStallAlarm(Z)V

    .line 918
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n()V

    .line 919
    return-void
.end method

.method private e()Lcom/android/internal/telephony/ApnSetting;
    .locals 3

    .prologue
    .line 775
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->o:Ljava/util/ArrayList;

    .line 776
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    const/4 v0, 0x0

    .line 778
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v1, :cond_0

    .line 779
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 780
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 783
    .restart local v0       #apn:Lcom/android/internal/telephony/ApnSetting;
    :cond_0
    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 2
    .parameter "reason"

    .prologue
    .line 966
    const/4 v0, 0x1

    .line 968
    .local v0, retry:Z
    const-string/jumbo v1, "radioTurnedOff"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 969
    const/4 v0, 0x0

    .line 971
    :cond_0
    return v0
.end method

.method private f()Lcom/android/internal/telephony/ApnSetting;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 813
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-object v3

    .line 817
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->s()Landroid/net/Uri;

    move-result-object v1

    .line 818
    .local v1, queryPreferApnUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string/jumbo v4, "name"

    aput-object v4, v2, v11

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string/jumbo v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 822
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 823
    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->p:Z

    .line 828
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->p:Z

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 830
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 831
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 832
    .local v9, pos:I
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/ApnSetting;

    .line 834
    .local v8, p:Lcom/android/internal/telephony/ApnSetting;
    iget v0, v8, Lcom/android/internal/telephony/ApnSetting;->id:I

    if-ne v0, v9, :cond_2

    const-string v0, "default"

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 835
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 836
    goto :goto_0

    .line 825
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/ApnSetting;
    .end local v9           #pos:I
    :cond_3
    iput-boolean v10, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->p:Z

    goto :goto_1

    .line 841
    :cond_4
    if-eqz v6, :cond_0

    .line 842
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private g()Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;
    .locals 3

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->m()V

    .line 852
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 853
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->isInactiveSync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 854
    const-string v2, "found free GsmDataConnection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 855
    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v2, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;

    .line 859
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    .line 858
    :cond_1
    const-string v2, "NO free ViaCdmaDataConnection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 859
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 10

    .prologue
    .line 1354
    const-string/jumbo v7, "ro.cdma.data_retry_config"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1355
    .local v4, retryConfig:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v7, 0x1

    if-ge v2, v7, :cond_2

    .line 1356
    new-instance v5, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v5}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    .line 1357
    .local v5, rm:Lcom/android/internal/telephony/RetryManager;
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1358
    const-string v7, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1360
    const-string v7, "Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1362
    const/16 v7, 0x14

    const/16 v8, 0x7d0

    const/16 v9, 0x3e8

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    .line 1366
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 1367
    .local v3, id:I
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {v7, v3, v5, p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;->a(Lcom/android/internal/telephony/cdma/CDMAPhone;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;

    move-result-object v0

    .line 1368
    .local v0, dataConn:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    new-instance v1, Lcom/android/internal/telephony/DataConnectionAc;

    const-string v7, "CDMA"

    invoke-direct {v1, v0, v7}, Lcom/android/internal/telephony/DataConnectionAc;-><init>(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V

    .line 1370
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v1, v7, p0, v8}, Lcom/android/internal/telephony/DataConnectionAc;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v6

    .line 1371
    .local v6, status:I
    if-nez v6, :cond_1

    .line 1372
    const-string v7, "Fully connected"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1373
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1375
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not connect to dcac.dataConnection="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1380
    .end local v0           #dataConn:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #id:I
    .end local v5           #rm:Lcom/android/internal/telephony/RetryManager;
    .end local v6           #status:I
    :cond_2
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 1383
    const-string v2, "destroyAllDataConnectionList"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1384
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 1385
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1386
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;

    .line 1387
    .local v0, dc:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " quiting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1390
    .end local v0           #dc:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1392
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private j()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCdmaDataDetached mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1396
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_0

    .line 1397
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 1398
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->stopDataStallAlarm()V

    .line 1400
    const-string v1, "dataDetached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1417
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateSimIndicateState()V

    .line 1419
    return-void

    .line 1402
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_2

    .line 1403
    const-string v1, "dataDetached"

    invoke-direct {p0, v4, v1, v4}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(ZLjava/lang/String;Z)V

    .line 1404
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n()V

    .line 1406
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v0, v1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 1407
    .local v0, loc:Landroid/telephony/cdma/CdmaCellLocation;
    const v2, 0xc3be

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 1411
    .end local v0           #loc:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_2
    const-string/jumbo v1, "not trySetupData for dataDetached, but notifyDataConnection"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1412
    const-string v1, "dataDetached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1438
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->h:Z

    if-eqz v0, :cond_0

    .line 1439
    const-string v0, "************TURN OFF RADIO**************"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1440
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1448
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->h:Z

    .line 1450
    :cond_0
    return-void
.end method

.method private l()V
    .locals 5

    .prologue
    .line 1453
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v0, v1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 1454
    .local v0, loc:Landroid/telephony/cdma/CdmaCellLocation;
    const v2, 0xc3bf

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1457
    return-void

    .line 1454
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1803
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->h()V

    .line 1805
    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1809
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 1811
    :cond_0
    return-void
.end method

.method private o()Z
    .locals 3

    .prologue
    .line 1814
    const-string/jumbo v1, "persist.radio.allways.reconnect"

    const-string/jumbo v2, "yes"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1815
    .local v0, prop:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persist.radio.allways.reconnect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1816
    const-string/jumbo v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1817
    const/4 v1, 0x0

    .line 1820
    :goto_0
    return v1

    .line 1818
    :cond_0
    const-string/jumbo v1, "net.cdma.pppd_via.terminated"

    const-string/jumbo v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "net.cdma.pppd_via.terminated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1820
    const-string/jumbo v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private p()Z
    .locals 2

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mIsScreenOn:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1826
    const-string/jumbo v0, "not trySetupData due to server disconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1827
    const/4 v0, 0x0

    .line 1830
    :goto_0
    return v0

    .line 1829
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowReconnect: mRequestedApnType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mIsScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1830
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1842
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 1843
    .local v0, r:Lcom/android/internal/telephony/cdma/RuimRecords;
    if-nez v0, :cond_0

    .line 1844
    const/4 v1, 0x0

    .line 1845
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private r()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCarriersContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private s()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1896
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCarriersContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1897
    .local v0, base:Landroid/net/Uri;
    const-string/jumbo v1, "preferapn_no_update"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(ZLjava/lang/String;Z)V

    .line 230
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    .line 233
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 234
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 235
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccRecords;

    .line 236
    .local v0, r:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 238
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 239
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 240
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 241
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 242
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 244
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->d:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 245
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->m:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$a;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 249
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->i()V

    .line 250
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1670
    const-string v0, "CdmaDataConnectionTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1671
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/DataConnectionTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSSM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->d:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingDataConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->g:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRestartRadio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportedApnTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->j:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDefaultApnTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->k:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDunApnTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->l:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1679
    const-string v0, " mDefaultApnId=0"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1680
    return-void
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 1694
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v0

    .line 1695
    .local v0, id:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), is APN_INVALID_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1697
    const/4 v1, 0x3

    .line 1719
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1701
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isApnIdEnabled ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1705
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1706
    const-string/jumbo v2, "type not available -- continue processing"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1713
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->setEnabled(IZ)V

    .line 1715
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1716
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->INITING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v3, :cond_0

    .line 1717
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1694
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 254
    const-string v0, "ViaCdmaDataConnectionTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method protected getActionIntentDataStallAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const-string v0, "com.android.internal.telephony.cdma-data-stall"

    return-object v0
.end method

.method protected getActionIntentReconnectAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    const-string v0, "com.android.internal.telephony.cdma-reconnect"

    return-object v0
.end method

.method public getActiveApnString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 588
    :cond_0
    return-object v0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 559
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .line 570
    .local v0, result:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 562
    .end local v0           #result:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 567
    .restart local v0       #result:[Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method protected getInterfaceList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1902
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1903
    .local v3, interfaceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1904
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;

    .line 1905
    .local v0, conn:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;->getDataConnectionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1907
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v1, :cond_0

    .line 1908
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v4

    .line 1909
    .local v4, linkProp:Landroid/net/LinkProperties;
    if-eqz v4, :cond_0

    .line 1910
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 1911
    .local v2, iface:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1915
    .end local v0           #conn:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v2           #iface:Ljava/lang/String;
    .end local v4           #linkProp:Landroid/net/LinkProperties;
    :cond_0
    return-object v3
.end method

.method public getOverallState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    return-object v0
.end method

.method public getRecoveryAction()I
    .locals 4

    .prologue
    .line 1850
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "radio.data.stall.recovery.action.cdma"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1852
    .local v0, action:I
    if-nez v0, :cond_0

    .line 1853
    const/4 v0, 0x1

    .line 1854
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecoveryAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1855
    return v0
.end method

.method public declared-synchronized getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoIdleAndNotifyDataConnection: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1025
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1027
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1028
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 1029
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaDCT handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1569
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mIsDisposed:Z

    if-eqz v0, :cond_2

    .line 1570
    :cond_0
    const-string v0, "Ignore CDMA msgs since CDMA phone is inactive"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1622
    :cond_1
    :goto_0
    return-void

    .line 1574
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1619
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1576
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->onRecordsLoaded()V

    goto :goto_0

    .line 1580
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->d:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1582
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->onNVReady()V

    goto :goto_0

    .line 1587
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->j()V

    goto :goto_0

    .line 1591
    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a()V

    goto :goto_0

    .line 1595
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->onDataStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1599
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1603
    :sswitch_6
    const-string v0, "EVENT_RESTART_RADIO"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1604
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->k()V

    goto :goto_0

    .line 1608
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->doRecovery()V

    goto :goto_0

    .line 1613
    :sswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->b()V

    goto :goto_0

    .line 1574
    nop

    :sswitch_data_0
    .sparse-switch
        0x42002 -> :sswitch_0
        0x42004 -> :sswitch_4
        0x42010 -> :sswitch_3
        0x42012 -> :sswitch_7
        0x42013 -> :sswitch_8
        0x42014 -> :sswitch_2
        0x42015 -> :sswitch_1
        0x42019 -> :sswitch_5
        0x4201a -> :sswitch_6
    .end sparse-switch
.end method

.method protected isAggressiveRecovery(I)Z
    .locals 1
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 1868
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 325
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 327
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    const/4 v2, 0x1

    .line 333
    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isConnected()Z
    .locals 2

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isDataAllowed()Z
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 355
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v10

    .line 356
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mInternalDataEnabled:Z

    .line 357
    .local v2, internalDataEnabled:Z
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v3

    .line 360
    .local v3, psState:I
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v10

    if-nez v10, :cond_f

    move v6, v8

    .line 361
    .local v6, roaming:Z
    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getDesiredPowerState()Z

    move-result v1

    .line 362
    .local v1, desiredPowerState:Z
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->d:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v10

    if-ne v10, v8, :cond_10

    move v7, v8

    .line 365
    .local v7, subscriptionFromNv:Z
    :goto_1
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IccRecords;

    .line 366
    .local v4, r:Lcom/android/internal/telephony/IccRecords;
    if-eqz v3, :cond_0

    iget-boolean v10, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mAutoAttachOnCreation:Z

    if-eqz v10, :cond_11

    :cond_0
    if-nez v7, :cond_1

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v10

    if-eqz v10, :cond_11

    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v11, :cond_11

    :cond_2
    if-nez v6, :cond_11

    if-eqz v2, :cond_11

    if-eqz v1, :cond_11

    iget-boolean v10, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->h:Z

    if-nez v10, :cond_11

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getLteOnCdmaMode()I

    move-result v10

    if-eq v10, v8, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->needsOtaServiceProvisioning()Z

    move-result v10

    if-nez v10, :cond_11

    :cond_3
    move v0, v8

    .line 379
    .local v0, allowed:Z
    :goto_2
    if-eqz v0, :cond_12

    iget-boolean v10, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->e:Z

    if-nez v10, :cond_12

    move v0, v8

    .line 380
    :goto_3
    if-nez v0, :cond_e

    .line 381
    const-string v5, ""

    .line 382
    .local v5, reason:Ljava/lang/String;
    if-eqz v3, :cond_4

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mAutoAttachOnCreation:Z

    if-nez v8, :cond_4

    .line 383
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - psState= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 385
    :cond_4
    if-nez v7, :cond_6

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v8

    if-nez v8, :cond_6

    .line 387
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - RUIM not loaded"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 389
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v8, v9, :cond_7

    .line 391
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - concurrentVoiceAndData not allowed and state= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 393
    :cond_7
    if-eqz v6, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - Roaming"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 394
    :cond_8
    if-nez v2, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - mInternalDataEnabled= false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 395
    :cond_9
    if-nez v1, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - desiredPowerState= false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 396
    :cond_a
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->h:Z

    if-eqz v8, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - mPendingRestartRadio= true"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 397
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->needsOtaServiceProvisioning()Z

    move-result v8

    if-eqz v8, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - needs Provisioning"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 398
    :cond_c
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->e:Z

    if-eqz v8, :cond_d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - mPCModemConnected = true"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 399
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data not allowed due to"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 401
    .end local v5           #reason:Ljava/lang/String;
    :cond_e
    return v0

    .line 357
    .end local v0           #allowed:Z
    .end local v1           #desiredPowerState:Z
    .end local v2           #internalDataEnabled:Z
    .end local v3           #psState:I
    .end local v4           #r:Lcom/android/internal/telephony/IccRecords;
    .end local v6           #roaming:Z
    .end local v7           #subscriptionFromNv:Z
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .restart local v2       #internalDataEnabled:Z
    .restart local v3       #psState:I
    :cond_f
    move v6, v9

    .line 360
    goto/16 :goto_0

    .restart local v1       #desiredPowerState:Z
    .restart local v6       #roaming:Z
    :cond_10
    move v7, v9

    .line 362
    goto/16 :goto_1

    .restart local v4       #r:Lcom/android/internal/telephony/IccRecords;
    .restart local v7       #subscriptionFromNv:Z
    :cond_11
    move v0, v9

    .line 366
    goto/16 :goto_2

    .restart local v0       #allowed:Z
    :cond_12
    move v0, v9

    .line 379
    goto/16 :goto_3
.end method

.method protected isDataPossible(Ljava/lang/String;)Z
    .locals 3
    .parameter "apnType"

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->isDataAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 408
    .local v0, possible:Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataPossible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getAnyDataenabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 409
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->isDataAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data not possible.  No coverage: dataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 412
    :cond_1
    return v0

    .line 406
    .end local v0           #possible:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisconnected()Z
    .locals 2

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1660
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1665
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    return-void
.end method

.method protected onCleanUpAllConnections(Ljava/lang/String;)V
    .locals 2
    .parameter "cause"

    .prologue
    .line 1348
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(ZLjava/lang/String;Z)V

    .line 1349
    return-void
.end method

.method protected onCleanUpConnection(ZILjava/lang/String;)V
    .locals 1
    .parameter "tearDown"
    .parameter "apnId"
    .parameter "reason"

    .prologue
    .line 1342
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(ZLjava/lang/String;Z)V

    .line 1343
    return-void

    .line 1342
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 16
    .parameter "ar"

    .prologue
    .line 1142
    const/4 v10, 0x0

    .line 1143
    .local v10, reason:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_0

    .line 1144
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v10           #reason:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 1147
    .restart local v10       #reason:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->isDataSetupCompleteOk(Landroid/os/AsyncResult;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1148
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Data Connection setup, reason = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;

    .line 1152
    .local v4, conn:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;->getDataConnectionId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1154
    .local v6, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 1155
    .local v1, apn:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v1, :cond_6

    .line 1156
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 1159
    const-string v12, "46012"

    .line 1160
    .local v12, testOperator:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 1161
    .local v5, curOperator:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->q()Ljava/lang/String;

    move-result-object v2

    .line 1162
    .local v2, cardOperator:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onDataSetupComplete, curOperator="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", cardOperator="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1163
    iget-object v13, v1, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    if-eqz v13, :cond_3

    iget-object v13, v1, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1168
    :cond_1
    :try_start_0
    iget-object v8, v1, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    .line 1169
    .local v8, port:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v8, "8080"

    .line 1170
    :cond_2
    new-instance v9, Landroid/net/ProxyProperties;

    iget-object v13, v1, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    invoke-direct {v9, v13, v14, v15}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1172
    .local v9, proxy:Landroid/net/ProxyProperties;
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/DataConnectionAc;->setLinkPropertiesHttpProxySync(Landroid/net/ProxyProperties;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    .end local v2           #cardOperator:Ljava/lang/String;
    .end local v5           #curOperator:Ljava/lang/String;
    .end local v8           #port:Ljava/lang/String;
    .end local v9           #proxy:Landroid/net/ProxyProperties;
    .end local v12           #testOperator:Ljava/lang/String;
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v14, "default"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1185
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->p:Z

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-nez v13, :cond_4

    .line 1186
    const-string/jumbo v13, "onDataSetupComplete: PREFERED APN is null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1187
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 1188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v13, :cond_4

    .line 1189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v13, v13, Lcom/android/internal/telephony/ApnSetting;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(I)V

    .line 1195
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v13, :cond_5

    .line 1196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    iget v13, v13, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyPreferOrConnectedApn(Ljava/lang/String;)V

    .line 1199
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->d(Ljava/lang/String;)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateSimIndicateState()V

    .line 1258
    .end local v1           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v4           #conn:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;
    .end local v6           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_1
    return-void

    .line 1173
    .restart local v1       #apn:Lcom/android/internal/telephony/ApnSetting;
    .restart local v2       #cardOperator:Ljava/lang/String;
    .restart local v4       #conn:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;
    .restart local v5       #curOperator:Ljava/lang/String;
    .restart local v6       #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .restart local v12       #testOperator:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1174
    .local v7, e:Ljava/lang/NumberFormatException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onDataSetupComplete: NumberFormatException making ProxyProperties ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1179
    .end local v2           #cardOperator:Ljava/lang/String;
    .end local v5           #curOperator:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/NumberFormatException;
    .end local v12           #testOperator:Ljava/lang/String;
    :cond_6
    const-string/jumbo v13, "onDataSetupComplete apn is null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1204
    .end local v1           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v4           #conn:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnection;
    .end local v6           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_7
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v3, v13

    check-cast v3, Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 1205
    .local v3, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Data Connection setup failed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1206
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "reason:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mRequestedApnType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1210
    const-string v13, "Data Connection setup isPermanentFail"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1211
    sget-object v13, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1215
    const-string v13, "apnFailed"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v14, "default"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 1218
    const-string v13, "default"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1221
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    goto/16 :goto_1

    .line 1226
    :cond_9
    :try_start_1
    const-string/jumbo v13, "remove apn from waitingApns"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->o:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->o:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1237
    const/4 v11, -0x1

    .line 1238
    .local v11, retryOverride:I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v13, v13, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    if-eqz v13, :cond_a

    .line 1239
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v13, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    invoke-virtual {v13}, Lcom/android/internal/telephony/DataConnection$CallSetupException;->getRetryOverride()I

    move-result v11

    .line 1242
    :cond_a
    const v13, 0x7fffffff

    if-ne v11, v13, :cond_b

    .line 1243
    const-string v13, "No retry is suggested."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1244
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->b(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1228
    .end local v11           #retryOverride:I
    :catch_1
    move-exception v7

    .line 1229
    .local v7, e:Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "waitingApns is already empty!!!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 1230
    sget-object v13, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1231
    const-string v13, "apnFailed"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1232
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    goto/16 :goto_1

    .line 1246
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v11       #retryOverride:I
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v11}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->b(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1251
    .end local v11           #retryOverride:I
    :cond_c
    sget-object v13, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1254
    const v13, 0x42003

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    const-wide/16 v14, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1
.end method

.method protected onDataStallAlarm(I)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 1874
    iget v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataStallAlarmTag:I

    if-eq v0, p1, :cond_0

    .line 1876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDataStallAlarm: ignore, tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataStallAlarmTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1889
    :goto_0
    return-void

    .line 1880
    :cond_0
    const-string/jumbo v0, "net.cdma.linkup"

    const-string/jumbo v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1881
    const-string/jumbo v0, "pppd drop! "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1882
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->l()V

    .line 1883
    const/4 v0, 0x1

    const-string/jumbo v1, "pppd drop"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(ZLjava/lang/String;Z)V

    goto :goto_0

    .line 1886
    :cond_1
    const-string/jumbo v0, "pppd is alive! "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1888
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->onDataStallAlarm(I)V

    goto :goto_0
.end method

.method protected onDataStateChanged(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1460
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    move-object v1, v5

    check-cast v1, Ljava/util/ArrayList;

    .line 1462
    .local v1, dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 1537
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_4

    .line 1471
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onDataStateChanged  active = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/DataCallState;

    iget v5, v5, Lcom/android/internal/telephony/DataCallState;->active:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/DataCallState;

    iget v5, v5, Lcom/android/internal/telephony/DataCallState;->active:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_3

    .line 1473
    const-string v5, "PC Modem enabled"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1475
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->e:Z

    .line 1476
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v5, v7, :cond_2

    .line 1477
    .local v4, isConnected:Z
    :goto_1
    if-eqz v4, :cond_0

    .line 1478
    const-string/jumbo v5, "pcModemConnected"

    invoke-direct {p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(ZLjava/lang/String;Z)V

    goto :goto_0

    .end local v4           #isConnected:Z
    :cond_2
    move v4, v6

    .line 1476
    goto :goto_1

    .line 1481
    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/DataCallState;

    iget v5, v5, Lcom/android/internal/telephony/DataCallState;->active:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_4

    .line 1482
    const-string v5, "PC Modem disconnected"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1483
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->e:Z

    .line 1484
    const-string/jumbo v5, "pcModemDisconnected"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 1489
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v7, :cond_8

    .line 1490
    const/4 v3, 0x0

    .line 1491
    .local v3, isActiveOrDormantConnectionPresent:Z
    const/4 v0, 0x0

    .line 1495
    .local v0, connectionState:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 1496
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/DataCallState;

    iget v0, v5, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 1497
    if-eqz v0, :cond_6

    .line 1498
    const/4 v3, 0x1

    .line 1503
    :cond_5
    if-nez v3, :cond_7

    .line 1505
    const-string/jumbo v5, "onDataStateChanged: No active connectionstate is CONNECTED, disconnecting/cleanup"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1507
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->l()V

    .line 1508
    const-string v5, "dataStateChanged"

    invoke-direct {p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(ZLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 1495
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1512
    :cond_7
    packed-switch v0, :pswitch_data_0

    .line 1530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDataStateChanged: IGNORE unexpected DataCallState.active="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1514
    :pswitch_0
    const-string/jumbo v5, "onDataStateChanged: active=LINK_ACTIVE && CONNECTED, ignore"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1515
    sget-object v5, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 1516
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1517
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->startNetStatPoll()V

    .line 1518
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->startDataStallAlarm(Z)V

    goto/16 :goto_0

    .line 1522
    :pswitch_1
    const-string/jumbo v5, "onDataStateChanged active=LINK_DOWN && CONNECTED, dormant"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1523
    sget-object v5, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 1524
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1525
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 1526
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->stopDataStallAlarm()V

    goto/16 :goto_0

    .line 1535
    .end local v0           #connectionState:I
    .end local v2           #index:I
    .end local v3           #isActiveOrDormantConnectionPresent:Z
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDataStateChanged: not connected, state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1512
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 4
    .parameter "connId"
    .parameter "ar"

    .prologue
    .line 1265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_DISCONNECT_DONE connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1266
    const/4 v0, 0x0

    .line 1267
    .local v0, reason:Ljava/lang/String;
    iget-object v2, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1268
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1270
    .restart local v0       #reason:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_DISCONNECT_DONE reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1271
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1275
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->h:Z

    if-eqz v2, :cond_1

    const v2, 0x4201a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->removeMessages(I)V

    .line 1279
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 1280
    .local v1, ssTracker:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1281
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->h:Z

    .line 1286
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1287
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 1289
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateSimIndicateState()V

    .line 1291
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1293
    const/16 v2, 0x7d0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(ILjava/lang/String;)V

    .line 1295
    :cond_2
    return-void

    .line 1283
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->k()V

    goto :goto_0
.end method

.method protected onEnableApn(II)V
    .locals 6
    .parameter "apnId"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_APN_ENABLE_REQUEST apnId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dataEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabledCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->enabledCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1730
    if-ne p2, v4, :cond_3

    .line 1731
    monitor-enter p0

    .line 1732
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_0

    .line 1733
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->dataEnabled:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 1734
    iget v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->enabledCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->enabledCount:I

    .line 1736
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1737
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    .line 1738
    .local v1, type:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1739
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1740
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->onEnableNewApn()V

    .line 1777
    .end local v1           #type:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1736
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1742
    .restart local v1       #type:Ljava/lang/String;
    :cond_2
    const-string v2, "apnSwitched"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 1746
    .end local v1           #type:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .line 1747
    .local v0, didDisable:Z
    monitor-enter p0

    .line 1748
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_4

    .line 1749
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->dataEnabled:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 1750
    iget v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->enabledCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->enabledCount:I

    .line 1751
    const/4 v0, 0x1

    .line 1753
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1755
    if-eqz v0, :cond_1

    .line 1756
    iget v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->enabledCount:I

    if-nez v2, :cond_5

    .line 1757
    const-string v2, "dataDisabled"

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->onCleanUpConnection(ZILjava/lang/String;)V

    .line 1758
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    goto :goto_0

    .line 1753
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 1762
    :cond_5
    const-string v2, "dataDisabled"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->b(Ljava/lang/String;I)V

    .line 1763
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v4, :cond_6

    const-string v2, "default"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1769
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1770
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->onEnableNewApn()V

    goto :goto_0

    .line 1772
    :cond_6
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onEnableNewApn()V
    .locals 3

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n()V

    .line 1056
    const/4 v0, 0x1

    const-string v1, "apnSwitched"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(ZLjava/lang/String;Z)V

    .line 1057
    return-void
.end method

.method protected onNVReady()V
    .locals 3

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    .line 1043
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1045
    :cond_0
    const v0, 0x42003

    new-instance v1, Ljava/lang/String;

    const-string v2, "NVReady"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1046
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 2

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1107
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1110
    const-string v0, "We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1113
    :cond_0
    const-string/jumbo v0, "radioAvailable"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v1, :cond_1

    .line 1116
    const-string/jumbo v0, "radioAvailable"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1118
    :cond_1
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 1

    .prologue
    .line 1125
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n()V

    .line 1127
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1130
    const-string v0, "We\'re on the simulator; assuming radio off is meaningless"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1135
    :goto_0
    return-void

    .line 1132
    :cond_0
    const-string v0, "Radio is off and clean up all connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1133
    const-string/jumbo v0, "radioTurnedOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRecordsLoaded()V
    .locals 2

    .prologue
    .line 1033
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c()V

    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    .line 1036
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1038
    :cond_0
    const v0, 0x42003

    const-string/jumbo v1, "simLoaded"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1039
    return-void
.end method

.method protected onRoamingOff()V
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mUserDataEnabled:Z

    if-nez v0, :cond_0

    .line 1080
    :goto_0
    return-void

    .line 1074
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1075
    const-string/jumbo v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1076
    const-string/jumbo v0, "roamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 1078
    :cond_1
    const-string/jumbo v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRoamingOn()V
    .locals 1

    .prologue
    .line 1087
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mUserDataEnabled:Z

    if-nez v0, :cond_0

    .line 1097
    :goto_0
    return-void

    .line 1089
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    const-string/jumbo v0, "roamingOn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(Ljava/lang/String;)Z

    .line 1091
    const-string/jumbo v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0

    .line 1093
    :cond_1
    const-string v0, "Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1094
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1095
    const-string/jumbo v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onScreenOn()V
    .locals 3

    .prologue
    .line 1834
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1835
    const-string/jumbo v0, "trySetupData in screenOn, because reconnect disabled when screenOff."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1836
    const-string/jumbo v0, "net.cdma.pppd_via.terminated"

    const-string/jumbo v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    const v0, 0x42003

    new-instance v1, Ljava/lang/String;

    const-string v2, "ScreenOn"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1839
    :cond_0
    return-void
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 1
    .parameter "reason"

    .prologue
    .line 1064
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onUpdateIcc()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1626
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    .line 1646
    :cond_0
    :goto_0
    return-void

    .line 1630
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 1632
    .local v0, newIccRecords:Lcom/android/internal/telephony/IccRecords;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccRecords;

    .line 1633
    .local v1, r:Lcom/android/internal/telephony/IccRecords;
    if-eq v1, v0, :cond_0

    .line 1634
    if-eqz v1, :cond_2

    .line 1635
    const-string v2, "Removing stale icc objects."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1636
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1637
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1639
    :cond_2
    if-eqz v0, :cond_0

    .line 1640
    const-string v2, "New records found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1641
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1642
    const v2, 0x42002

    invoke-virtual {v0, p0, v2, v4}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected onVoiceCallEnded()V
    .locals 2

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_1

    .line 1320
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->startNetStatPoll()V

    .line 1322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->startDataStallAlarm(Z)V

    .line 1323
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1325
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateSimIndicateState()V

    .line 1337
    :goto_0
    return-void

    .line 1329
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->resetPollStats()V

    goto :goto_0

    .line 1333
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->n()V

    .line 1335
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onVoiceCallStarted()V
    .locals 2

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1304
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 1305
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->stopDataStallAlarm()V

    .line 1306
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1307
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->c:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateSimIndicateState()V

    .line 1312
    :cond_0
    return-void
.end method

.method public putRecoveryAction(I)V
    .locals 2
    .parameter "action"

    .prologue
    .line 1859
    if-nez p1, :cond_0

    .line 1860
    const/4 p1, 0x1

    .line 1861
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "radio.data.stall.recovery.action.cdma"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putRecoveryAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1864
    return-void
.end method

.method protected restartDataStallAlarm()V
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mIsScreenOn:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->onScreenOn()V

    .line 272
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->restartDataStallAlarm()V

    .line 273
    return-void
.end method

.method protected restartRadio()V
    .locals 3

    .prologue
    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleanup connection and wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->i:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s to restart radio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 943
    const-string/jumbo v0, "radioTurnedOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 944
    const v0, 0x4201a

    sget v1, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->i:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->h:Z

    .line 946
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/DctConstants$State;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, p1, :cond_0

    .line 279
    const v0, 0xc3c3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DctConstants$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/DctConstants$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 281
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "clear waitingApns"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 292
    :cond_0
    return-void
.end method
