.class public Lcom/android/internal/telephony/gsm/GSMPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GSMPhone$2;,
        Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    }
.end annotation


# static fields
.field public static final ACT_TYPE_GSM:Ljava/lang/String; = "0"

.field public static final ACT_TYPE_UTRAN:Ljava/lang/String; = "2"

.field public static final CIPHERING_KEY:Ljava/lang/String; = "ciphering_key"

.field private static final LOCAL_DEBUG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final UTRAN_INDICATOR:Ljava/lang/String; = "3G"

.field public static final VM_NUMBER:Ljava/lang/String; = "vm_number_key"

.field public static final VM_SIM_IMSI:Ljava/lang/String; = "vm_sim_imsi_key"

.field public static cf_state_busy:Z

.field public static cf_state_no_reply:Z

.field public static cf_state_not_reachable:Z

.field public static cf_state_unconditional:Z

.field private static m3GCapabilitySIM:I

.field private static mTargetNetworkMode:I


# instance fields
.field debugPortThread:Ljava/lang/Thread;

.field debugSocket:Ljava/net/ServerSocket;

.field mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

.field private mImei:Ljava/lang/String;

.field private mImeiAbnormal:I

.field private mImeiSv:Ljava/lang/String;

.field private mIsRadioAvailable:Z

.field private mIsToResetRadio:Z

.field private mPeerPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field private mReportedAttemptedConnects:I

.field private mReportedRadioResets:I

.field private mReportedSuccessfulConnects:I

.field mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

.field mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

.field private mSN:Ljava/lang/String;

.field mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

.field private mSimIndicatorState:I

.field mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

.field mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

.field mSsnRegistrants:Landroid/os/RegistrantList;

.field mStkService:Lcom/android/internal/telephony/cat/CatService;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mVmNumber:Ljava/lang/String;

.field private mySimId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 165
    sput-boolean v0, Lcom/android/internal/telephony/gsm/GSMPhone;->cf_state_unconditional:Z

    .line 166
    sput-boolean v0, Lcom/android/internal/telephony/gsm/GSMPhone;->cf_state_busy:Z

    .line 167
    sput-boolean v0, Lcom/android/internal/telephony/gsm/GSMPhone;->cf_state_no_reply:Z

    .line 168
    sput-boolean v0, Lcom/android/internal/telephony/gsm/GSMPhone;->cf_state_not_reachable:Z

    .line 182
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 6
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    const/4 v4, 0x0

    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 6
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "simId"

    .prologue
    .line 193
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 6
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"

    .prologue
    .line 198
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V
    .locals 10
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"
    .parameter "simId"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 208
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 152
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimIndicatorState:I

    .line 162
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPeerPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 176
    iput v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiAbnormal:I

    .line 209
    iput p5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    .line 211
    instance-of v0, p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v0, :cond_0

    .line 212
    check-cast p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .end local p2
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v8}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 216
    const-string v0, "GSM"

    const-string v1, "[GsmPhone constructor] GsmCallTracker begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 218
    const-string v0, "GSM"

    const-string v1, "[GsmPhone constructor] GsmServiceStateTracker begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 220
    const-string v0, "GSM"

    const-string v1, "[GsmPhone constructor] GsmSMSDispatcher begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    .line 222
    const-string v0, "GSM"

    const-string v1, "[GsmPhone constructor] IccFileHandler begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SIMFileHandler;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 224
    const-string v0, "GSM"

    const-string v1, "[GsmPhone constructor] SIMRecords begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 226
    const-string v0, "GSM"

    const-string v1, "[GsmPhone constructor] GsmDataConnectionTracker begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 228
    const-string v0, "GSM"

    const-string v1, "[GsmPhone constructor] SimCard begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v0, Lcom/android/internal/telephony/gsm/SimCard;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimCard;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 230
    if-nez p4, :cond_1

    .line 231
    const-string v0, "GSM"

    const-string v1, "[GsmPhone constructor] SimPhoneBookInterfaceManager begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 233
    const-string v0, "GSM"

    const-string v1, "[GsmPhone constructor] SimSmsInterfaceManager begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    .line 235
    const-string v0, "GSM"

    const-string v1, "[GsmPhone constructor] PhoneSubInfo begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 238
    :cond_1
    const-string v0, "GSM"

    const-string v1, "[GsmPhone constructor] StkService begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Lcom/android/internal/telephony/IccCard;

    move-object v0, p0

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    .line 240
    const-string v0, "GSM"

    const-string v1, "[GsmPhone constructor] StkService finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v7}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v1, 0x13

    invoke-virtual {v0, p0, v1, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1c

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallForwardingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1d

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRelatedSuppSvc(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1e

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForSN(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 292
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTargetNetworkMode:I

    .line 297
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSMPhone["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] initialized, network mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mTargetNetworkMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSMPhone["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] initialized, notifyPhoneStateChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPhoneStateChanged()V

    .line 303
    return-void
.end method

.method private Cclog(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2278
    const-string v1, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CC][GsmPhone][SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    return-void

    .line 2278
    :cond_0
    const-string v0, "2"

    goto :goto_0
.end method

.method private broadcastSimIndStateChangedIntent(I)V
    .locals 4
    .parameter "nState"

    .prologue
    .line 2242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2243
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2244
    const-string/jumbo v1, "slotId"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2245
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_INDICATOR_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sim id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2251
    return-void
.end method

.method private getSimIndicatorStateFromStates(Lcom/android/internal/telephony/IccCard$State;Landroid/telephony/ServiceState;Lcom/android/internal/telephony/Phone$DataState;)I
    .locals 4
    .parameter "simState"
    .parameter "svState"
    .parameter "dataState"

    .prologue
    .line 2212
    const/4 v2, -0x1

    .line 2213
    .local v2, retState:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->isLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2214
    const/4 v2, 0x2

    .line 2237
    :cond_0
    :goto_0
    return v2

    .line 2216
    :cond_1
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 2217
    .local v1, nSvState:I
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v0

    .line 2218
    .local v0, nRegState:I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 2219
    const/4 v2, 0x1

    goto :goto_0

    .line 2220
    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 2221
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 2222
    const/4 v2, 0x4

    goto :goto_0

    .line 2224
    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    .line 2226
    :cond_4
    if-nez v1, :cond_0

    .line 2227
    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne p3, v3, :cond_6

    .line 2228
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v2, 0x8

    :goto_1
    goto :goto_0

    :cond_5
    const/4 v2, 0x7

    goto :goto_1

    .line 2232
    :cond_6
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x6

    :goto_2
    goto :goto_0

    :cond_7
    const/4 v2, 0x5

    goto :goto_2
.end method

.method private getVmSimImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 976
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vm_sim_imsi_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 645
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 646
    const/4 v1, 0x0

    .line 664
    :cond_0
    :goto_0
    return v1

    .line 649
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    .line 650
    const-string v2, "GSM"

    const-string v3, "MmiCode 0: rejectCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "GSM"

    const-string/jumbo v3, "reject failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 658
    .end local v0           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_0

    .line 659
    const-string v2, "GSM"

    const-string v3, "MmiCode 0: hangupWaitingOrBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 9
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 710
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 712
    .local v5, len:I
    const/4 v7, 0x2

    if-le v5, v7, :cond_0

    .line 713
    const/4 v6, 0x0

    .line 753
    :goto_0
    return v6

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 718
    .local v0, call:Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v5, v6, :cond_2

    .line 720
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 721
    .local v2, ch:C
    add-int/lit8 v1, v2, -0x30

    .line 722
    .local v1, callIndex:I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;

    move-result-object v3

    .line 725
    .local v3, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v3, :cond_1

    if-lt v1, v6, :cond_1

    const/4 v7, 0x7

    if-gt v1, v7, :cond_1

    .line 726
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MmiCode 2: separate call "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 728
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 734
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :catch_0
    move-exception v4

    .line 735
    .local v4, e:Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v7, "separate failed"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 736
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 730
    .end local v4           #e:Lcom/android/internal/telephony/CallStateException;
    .restart local v1       #callIndex:I
    .restart local v2       #ch:C
    .restart local v3       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "separate: invalid call index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 732
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 740
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_3

    .line 741
    const-string v7, "MmiCode 2: accept ringing call"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 742
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 747
    :catch_1
    move-exception v4

    .line 748
    .restart local v4       #e:Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v7, "switch failed"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 749
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto/16 :goto_0

    .line 744
    .end local v4           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_3
    const-string v7, "MmiCode 2: switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 745
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 8
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 670
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 672
    .local v4, len:I
    const/4 v7, 0x2

    if-le v4, v7, :cond_1

    .line 705
    :cond_0
    :goto_0
    return v5

    .line 676
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 679
    .local v0, call:Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v4, v6, :cond_2

    .line 680
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 681
    .local v2, ch:C
    add-int/lit8 v1, v2, -0x30

    .line 683
    .local v1, callIndex:I
    if-lt v1, v6, :cond_0

    const/4 v7, 0x7

    if-gt v1, v7, :cond_0

    .line 684
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MmiCode 1: hangupConnectionByIndex "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 686
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V

    .end local v1           #callIndex:I
    .end local v2           #ch:C
    :goto_1
    move v5, v6

    .line 705
    goto :goto_0

    .line 691
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v7, :cond_3

    .line 692
    const-string v5, "MmiCode 1: hangup foreground"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 694
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 700
    :catch_0
    move-exception v3

    .line 701
    .local v3, e:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "hangup failed"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 702
    sget-object v5, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_1

    .line 696
    .end local v3           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_1
    const-string v5, "MmiCode 1: switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 697
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 793
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 794
    const/4 v0, 0x0

    .line 800
    :goto_0
    return v0

    .line 797
    :cond_0
    const-string v1, "MmiCode 5: CCBS not supported!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 799
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 7
    .parameter "infos"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1810
    const/4 v0, 0x0

    .line 1811
    .local v0, cf_state:Z
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_2

    .line 1814
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 1825
    :cond_1
    :goto_0
    return v0

    .line 1816
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, p1

    .local v2, s:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1817
    aget-object v3, p1, v1

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 1818
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v6, v4, v3}, Lcom/android/internal/telephony/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 1819
    aget-object v3, p1, v1

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v3, v4, :cond_4

    move v0, v4

    .line 1821
    :goto_3
    goto :goto_0

    :cond_3
    move v3, v5

    .line 1818
    goto :goto_2

    :cond_4
    move v0, v5

    .line 1819
    goto :goto_3

    .line 1816
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 775
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 777
    .local v1, len:I
    if-eq v1, v2, :cond_0

    .line 778
    const/4 v2, 0x0

    .line 788
    :goto_0
    return v2

    .line 781
    :cond_0
    const-string v3, "MmiCode 4: explicit call transfer"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 783
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->explicitCallTransfer()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v3, "transfer failed"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 786
    sget-object v3, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 758
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 759
    const/4 v1, 0x0

    .line 769
    :goto_0
    return v1

    .line 762
    :cond_0
    const-string v2, "MmiCode 3: merge calls"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 764
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 765
    :catch_0
    move-exception v0

    .line 766
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "conference failed"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 767
    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    .line 1756
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    if-nez v3, :cond_1

    .line 1757
    const-string v3, "GSM"

    const-string/jumbo v4, "unexpected result from user object."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :cond_0
    :goto_0
    return-void

    .line 1761
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    .line 1765
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v3, :cond_2

    .line 1766
    const-string v3, "GSM"

    const-string/jumbo v4, "sending original message to recipient"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1768
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1773
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1774
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1777
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    if-nez v3, :cond_3

    .line 1778
    const-string/jumbo v3, "network_selection_key"

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1779
    const-string/jumbo v3, "network_selection_name_key"

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1787
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1788
    const-string v3, "GSM"

    const-string v4, "failed to commit network selection preference"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1781
    :cond_3
    const-string/jumbo v3, "network_selection_key_2"

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1782
    const-string/jumbo v3, "network_selection_name_key_2"

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private handleUdubIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1962
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 1963
    const/4 v0, 0x0

    .line 1972
    :cond_0
    :goto_0
    return v0

    .line 1966
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    .line 1968
    :cond_2
    const-string v1, "MmiCode 0: hangupWaitingOrBackground"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 1969
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .parameter "commandInterfaceCFAction"

    .prologue
    .line 1070
    packed-switch p1, :pswitch_data_0

    .line 1077
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1075
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1070
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .parameter "commandInterfaceCFReason"

    .prologue
    .line 1056
    packed-switch p1, :pswitch_data_0

    .line 1065
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1063
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1056
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .locals 8
    .parameter "ussdMode"
    .parameter "ussdMessage"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 1312
    if-ne p1, v6, :cond_4

    move v3, v6

    .line 1316
    .local v3, isUssdRequest:Z
    :goto_0
    const/4 v7, 0x4

    if-eq p1, v7, :cond_0

    const/4 v7, 0x5

    if-ne p1, v7, :cond_1

    :cond_0
    move v2, v6

    .line 1324
    .local v2, isUssdError:Z
    :cond_1
    const/4 v0, 0x0

    .line 1325
    .local v0, found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, s:I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 1326
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1327
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 1332
    .restart local v0       #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_2
    if-eqz v0, :cond_7

    .line 1335
    if-eqz v2, :cond_6

    .line 1336
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 1361
    :cond_3
    :goto_2
    return-void

    .end local v0           #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v1           #i:I
    .end local v2           #isUssdError:Z
    .end local v3           #isUssdRequest:Z
    .end local v5           #s:I
    :cond_4
    move v3, v2

    .line 1312
    goto :goto_0

    .line 1325
    .restart local v0       #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v1       #i:I
    .restart local v2       #isUssdError:Z
    .restart local v3       #isUssdRequest:Z
    .restart local v5       #s:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1338
    :cond_6
    invoke-virtual {v0, p2, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1345
    :cond_7
    if-nez v2, :cond_8

    if-eqz p2, :cond_8

    .line 1347
    invoke-static {p2, v3, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v4

    .line 1350
    .local v4, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_2

    .line 1352
    .end local v4           #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_8
    if-eqz v2, :cond_3

    .line 1354
    invoke-static {p2, v3, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssdError(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v4

    .line 1357
    .restart local v4       #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_2
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 3
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 1301
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1303
    return-void
.end method

.method public static set3GSim(I)V
    .locals 1
    .parameter "simId"

    .prologue
    .line 2314
    sput p0, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    .line 2315
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 2316
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTargetNetworkMode:I

    .line 2319
    :goto_0
    return-void

    .line 2318
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTargetNetworkMode:I

    goto :goto_0
.end method

.method private setVmSimImsi(Ljava/lang/String;)V
    .locals 4
    .parameter "imsi"

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 982
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 984
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vm_sim_imsi_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 986
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 987
    return-void
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 953
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 955
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vm_number_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 957
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 958
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 959
    return-void
.end method

.method private updateIsDownloadCalibrationData(Z)V
    .locals 2
    .parameter "mCalibrationData"

    .prologue
    .line 2367
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_CALIBRATION_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2368
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "calibrationData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2369
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2370
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V

    .line 592
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 1859
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canConference()Z

    move-result v0

    return v0
.end method

.method public canDial()Z
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "onComplete"

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2107
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newCfm"
    .parameter "onComplete"

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2116
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 618
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->conference()V

    .line 614
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 858
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 6
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 865
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 866
    .local v2, newDialString:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dial:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "newDial:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 890
    :goto_0
    return-object v3

    .line 874
    :cond_0
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 875
    .local v1, networkPortion:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "network portion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 876
    invoke-static {v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 877
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialing w/ mmi \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 880
    if-nez v0, :cond_1

    .line 881
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3, v2, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 882
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 883
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 885
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 887
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    goto :goto_0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableLocationUpdates()V

    .line 1270
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 308
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 309
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUSSD(Landroid/os/Handler;)V

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSN(Landroid/os/Handler;)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dispose()V

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->dispose()V

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->dispose()V

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->dispose()V

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 338
    monitor-exit v1

    .line 339
    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "strRand"
    .parameter "result"

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 2267
    return-void
.end method

.method public doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "strRand"
    .parameter "strAutn"
    .parameter "result"

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2274
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableLocationUpdates()V

    .line 1266
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->explicitCallTransfer()V

    .line 626
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 360
    const-string v0, "GSM"

    const-string v1, "GSMPhone finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void
.end method

.method public forceNotifyServiceStateChange()V
    .locals 1

    .prologue
    .line 2340
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-super {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 2341
    return-void
.end method

.method public get3GCapabilitySIM()I
    .locals 3

    .prologue
    .line 2284
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] get3GCapabilitySIM ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    sget v0, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    return v0
.end method

.method public getAccumulatedCallMeter(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getAccumulatedCallMeter(Landroid/os/Message;)V

    .line 1927
    return-void
.end method

.method public getAccumulatedCallMeterMaximum(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getAccumulatedCallMeterMaximum(Landroid/os/Message;)V

    .line 1932
    return-void
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1174
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 7
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    const/16 v6, 0xd

    const/4 v5, 0x0

    .line 1086
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1087
    const-string v3, "GSM"

    const-string/jumbo v4, "requesting call forwarding query."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/4 v0, 0x0

    .line 1091
    .local v0, isShowCFIForBusyNoanswerNotavailable:Z
    const-string/jumbo v3, "ro.update.cfi.for.all"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1093
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1095
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1097
    :cond_0
    if-eqz v0, :cond_2

    .line 1099
    invoke-virtual {p0, v6, p1, v5, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1108
    .local v1, resp:Landroid/os/Message;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v5, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1110
    .end local v0           #isShowCFIForBusyNoanswerNotavailable:Z
    .end local v1           #resp:Landroid/os/Message;
    .end local v2           #value:Ljava/lang/String;
    :cond_1
    return-void

    .line 1102
    .restart local v0       #isShowCFIForBusyNoanswerNotavailable:Z
    .restart local v2       #value:Ljava/lang/String;
    :cond_2
    if-nez p1, :cond_3

    .line 1103
    invoke-virtual {p0, v6, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #resp:Landroid/os/Message;
    goto :goto_0

    .line 1105
    .end local v1           #resp:Landroid/os/Message;
    :cond_3
    move-object v1, p2

    .restart local v1       #resp:Landroid/os/Message;
    goto :goto_0
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1165
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 1865
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    return-object v0
.end method

.method public getCurrentCallMeter(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getCurrentCallMeter(Landroid/os/Message;)V

    .line 1922
    return-void
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    .line 493
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 495
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-nez v1, :cond_0

    .line 496
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 511
    :cond_0
    :goto_0
    return-object v0

    .line 498
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 499
    goto :goto_0

    .line 502
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 503
    goto :goto_0

    .line 506
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 1258
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 6
    .parameter "apnType"

    .prologue
    const/4 v4, 0x1

    .line 403
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 406
    .local v2, ret:Lcom/android/internal/telephony/Phone$DataState;
    if-nez p1, :cond_0

    .line 407
    const-string p1, ""

    .line 411
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v3, :cond_1

    .line 415
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 489
    :goto_0
    return-object v2

    .line 416
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v3

    if-eqz v3, :cond_7

    .line 419
    const-string v3, "gsm.network.type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, psNetworkType:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v0

    .line 421
    .local v0, gprsState:I
    if-ne v0, v4, :cond_2

    const-string v3, "Unknown"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 423
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GSMPhone["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] PS out of service and GPRS detached, status is disconnected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 426
    :cond_2
    if-ne v0, v4, :cond_6

    .line 429
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 430
    :cond_3
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GSMPhone["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] PS out of service but GPRS attached, status align APN state (DISCONNECTED)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 433
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 451
    :goto_1
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GSMPhone["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] PS out of service but GPRS attached, status align APN state ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 436
    :pswitch_0
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 437
    goto :goto_1

    .line 440
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 441
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_1

    .line 443
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 444
    goto :goto_1

    .line 448
    :pswitch_2
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_1

    .line 454
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto/16 :goto_0

    .line 458
    .end local v0           #gprsState:I
    .end local v1           #psNetworkType:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 463
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto/16 :goto_0

    .line 465
    :cond_9
    sget-object v3, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 468
    :pswitch_3
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 469
    goto/16 :goto_0

    .line 473
    :pswitch_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v4, :cond_a

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v3

    if-nez v3, :cond_a

    .line 475
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto/16 :goto_0

    .line 477
    :cond_a
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 479
    goto/16 :goto_0

    .line 484
    :pswitch_5
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto/16 :goto_0

    .line 433
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 465
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1015
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] getEsn() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const-string v0, "0"

    return-object v0
.end method

.method public getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "facility"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 2088
    return-void
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1
    .parameter "enService"

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCallFailCause()I
    .locals 3

    .prologue
    .line 1956
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CC] causeCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    return v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getMsisdnAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1020
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] getMeid() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v0, "0"

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 1882
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNeighboringCids(Landroid/os/Message;)V

    .line 1242
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 1153
    return-void
.end method

.method public getPOLCapability(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPOLCapabilty(Landroid/os/Message;)V

    .line 2324
    return-void
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2045
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDataCallList(Landroid/os/Message;)V

    .line 2046
    return-void
.end method

.method public getPeerPhone()Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPeerPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    const-string v0, "GSM"

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x1

    return v0
.end method

.method public getPpuAndCurrency(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getPpuAndCurrency(Landroid/os/Message;)V

    .line 1937
    return-void
.end method

.method public getPreferedOperatorList(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentPOLList(Landroid/os/Message;)V

    .line 2328
    return-void
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSN:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public getSimIndicateState()I
    .locals 1

    .prologue
    .line 2200
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimIndicatorState:I

    return v0
.end method

.method public getSimRecoveryOn(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSimRecoveryOn(Landroid/os/Message;)V

    .line 2357
    return-void
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 992
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 995
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    const v2, #string@defaultVoiceMailAlphaTag#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 999
    .end local v0           #ret:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 963
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, number:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 967
    .local v1, sp:Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vm_number_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 970
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-object v0
.end method

.method public getVtCallForwardingOption(ILandroid/os/Message;)V
    .locals 3
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 2131
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2132
    const-string v0, "GSM"

    const-string/jumbo v1, "requesting call forwarding query."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 2135
    :cond_0
    return-void
.end method

.method public getVtCallWaiting(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x200

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 2156
    return-void
.end method

.method public getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "facility"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x200

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 2164
    return-void
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 806
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 843
    :goto_0
    return v1

    .line 810
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 811
    goto :goto_0

    .line 814
    :cond_1
    const/4 v1, 0x0

    .line 815
    .local v1, result:Z
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 816
    .local v0, ch:C
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 819
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleUdubIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 822
    goto :goto_0

    .line 824
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 826
    goto :goto_0

    .line 828
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 829
    goto :goto_0

    .line 831
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 832
    goto :goto_0

    .line 834
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 835
    goto :goto_0

    .line 837
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 838
    goto :goto_0

    .line 816
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    .line 1379
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 1710
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    .line 1712
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 1382
    :pswitch_2
    const-string v18, "GSM"

    const-string v19, "handleMessage(): received EVENT_RADIO_AVAILABLE"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsRadioAvailable:Z

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    const/16 v20, 0x1e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->getMobileRevisionAndIMEI(ILandroid/os/Message;)V

    .line 1391
    const-string v18, "GSM"

    const-string v19, " call mCM.getBarcodeNum"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateSimIndicateState()V

    .line 1395
    const-string v18, "GSM"

    const-string/jumbo v19, "radio available, to get 3G capability"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->get3GCapabilitySIM(Landroid/os/Message;)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->detectSimMissing(Landroid/os/Message;)V

    .line 1408
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "m3GCapabilitySIM = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mySimId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1421
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->syncClirSetting()V

    goto/16 :goto_0

    .line 1425
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 1429
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getVmSimImsi()Ljava/lang/String;

    move-result-object v8

    .line 1430
    .local v8, imsi:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v9

    .line 1431
    .local v9, imsiFromSIM:Ljava/lang/String;
    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1432
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1433
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1439
    .end local v8           #imsi:Ljava/lang/String;
    .end local v9           #imsiFromSIM:Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1441
    .local v3, ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 1445
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Baseband version: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const-string v19, ""

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1449
    const-string v19, "gsm.version.baseband"

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1455
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1458
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1459
    const-string v18, "GSM"

    const-string v19, "Null IMEI!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setDeviceIdAbnormal(I)V

    goto/16 :goto_0

    .line 1464
    :cond_1
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    .line 1465
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "IMEI: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1469
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setDeviceIdAbnormal(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1470
    :catch_0
    move-exception v5

    .line 1471
    .local v5, e:Ljava/lang/NumberFormatException;
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setDeviceIdAbnormal(I)V

    .line 1472
    const-string v18, "GSM"

    const-string v19, "Invalid format IMEI!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1478
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v5           #e:Ljava/lang/NumberFormatException;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1480
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 1484
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    goto/16 :goto_0

    .line 1490
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    const-string v18, "GSM"

    const-string v19, "enter EVENT_GET_BARCODE_NUMBER"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1493
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 1497
    const-string v19, "GSM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Barcode number is : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSN:Ljava/lang/String;

    goto/16 :goto_0

    .line 1503
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1505
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v17, v18

    check-cast v17, [Ljava/lang/String;

    .line 1507
    .local v17, ussdResult:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 1509
    const/16 v18, 0x0

    :try_start_1
    aget-object v18, v17, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    aget-object v19, v17, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->onIncomingUSSD(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1510
    :catch_1
    move-exception v5

    .line 1511
    .restart local v5       #e:Ljava/lang/NumberFormatException;
    const-string v18, "GSM"

    const-string v19, "error parsing USSD"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1522
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local v17           #ussdResult:[Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v18

    if-nez v18, :cond_2

    .line 1523
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsRadioAvailable:Z

    .line 1524
    :cond_2
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_4

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 1524
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1529
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateSimIndicateState()V

    goto/16 :goto_0

    .line 1534
    .end local v6           #i:I
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1535
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v13, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 1536
    .local v13, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1540
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v13           #not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1541
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 1544
    :cond_5
    iget-object v15, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v15, Landroid/os/Message;

    .line 1545
    .local v15, onComplete:Landroid/os/Message;
    if-eqz v15, :cond_0

    .line 1546
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1547
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1542
    .end local v15           #onComplete:Landroid/os/Message;
    :cond_6
    const/16 v18, 0x0

    goto :goto_2

    .line 1552
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1553
    .restart local v3       #ar:Landroid/os/AsyncResult;
    const-class v18, Lcom/android/internal/telephony/IccVmNotSupportedException;

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1555
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1557
    :cond_7
    iget-object v15, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v15, Landroid/os/Message;

    .line 1558
    .restart local v15       #onComplete:Landroid/os/Message;
    if-eqz v15, :cond_0

    .line 1559
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1560
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1566
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v15           #onComplete:Landroid/os/Message;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1568
    .restart local v3       #ar:Landroid/os/AsyncResult;
    const/4 v4, 0x0

    .line 1569
    .local v4, cffEnabled:Z
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1570
    .local v11, mCommandInterfaceCFReason:I
    const-string v18, "Get Callforward\'s Reason: "

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    .line 1573
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Lcom/android/internal/telephony/CallForwardInfo;

    check-cast v18, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v4

    .line 1575
    :cond_8
    iget-object v15, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v15, Landroid/os/Message;

    .line 1576
    .restart local v15       #onComplete:Landroid/os/Message;
    if-eqz v15, :cond_0

    .line 1577
    if-nez v11, :cond_b

    .line 1578
    if-eqz v4, :cond_a

    const/16 v18, 0x1

    :goto_3
    sput-boolean v18, Lcom/android/internal/telephony/gsm/GSMPhone;->cf_state_unconditional:Z

    .line 1586
    :cond_9
    :goto_4
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1587
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1578
    :cond_a
    const/16 v18, 0x0

    goto :goto_3

    .line 1579
    :cond_b
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_d

    .line 1580
    if-eqz v4, :cond_c

    const/16 v18, 0x1

    :goto_5
    sput-boolean v18, Lcom/android/internal/telephony/gsm/GSMPhone;->cf_state_busy:Z

    goto :goto_4

    :cond_c
    const/16 v18, 0x0

    goto :goto_5

    .line 1581
    :cond_d
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v11, v0, :cond_f

    .line 1582
    if-eqz v4, :cond_e

    const/16 v18, 0x1

    :goto_6
    sput-boolean v18, Lcom/android/internal/telephony/gsm/GSMPhone;->cf_state_no_reply:Z

    goto :goto_4

    :cond_e
    const/16 v18, 0x0

    goto :goto_6

    .line 1583
    :cond_f
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v11, v0, :cond_9

    .line 1584
    if-eqz v4, :cond_10

    const/16 v18, 0x1

    :goto_7
    sput-boolean v18, Lcom/android/internal/telephony/gsm/GSMPhone;->cf_state_not_reachable:Z

    goto :goto_4

    :cond_10
    const/16 v18, 0x0

    goto :goto_7

    .line 1595
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v4           #cffEnabled:Z
    .end local v11           #mCommandInterfaceCFReason:I
    .end local v15           #onComplete:Landroid/os/Message;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1599
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1600
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_11

    .line 1601
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    .line 1603
    :cond_11
    iget-object v15, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v15, Landroid/os/Message;

    .line 1604
    .restart local v15       #onComplete:Landroid/os/Message;
    if-eqz v15, :cond_0

    .line 1605
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1606
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1613
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v15           #onComplete:Landroid/os/Message;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/telephony/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    goto/16 :goto_0

    .line 1616
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1617
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v14, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/gsm/SuppCrssNotification;

    .line 1618
    .local v14, noti:Lcom/android/internal/telephony/gsm/SuppCrssNotification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1622
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v14           #noti:Lcom/android/internal/telephony/gsm/SuppCrssNotification;
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1623
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    move-object/from16 v16, v18

    check-cast v16, [I

    .line 1624
    .local v16, result:[I
    if-eqz v16, :cond_17

    .line 1625
    const/16 v18, 0x0

    aget v18, v16, v18

    sput v18, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    .line 1626
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsToResetRadio:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 1627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    .line 1631
    :cond_12
    :goto_8
    sget v18, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    .line 1632
    const/16 v18, 0x0

    sput v18, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    .line 1636
    :cond_13
    :goto_9
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsToResetRadio:Z

    .line 1638
    sget v18, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    if-nez v18, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    move/from16 v18, v0

    if-eqz v18, :cond_15

    :cond_14
    sget v18, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 1640
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getCalibrationData(Landroid/os/Message;)V

    .line 1643
    :cond_16
    const/16 v18, 0x1

    sget v19, Lcom/android/internal/telephony/gsm/GSMPhone;->mTargetNetworkMode:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 1644
    const/16 v18, -0x1

    sput v18, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    .line 1645
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] No 3G but modem 3G capability SIM ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/internal/telephony/gsm/GSMPhone;->mTargetNetworkMode:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "preferred_network_mode"

    sget v20, Lcom/android/internal/telephony/gsm/GSMPhone;->mTargetNetworkMode:I

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1629
    :cond_17
    const/16 v18, -0x1

    sput v18, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    goto/16 :goto_8

    .line 1633
    :cond_18
    sget v18, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 1634
    const/16 v18, 0x1

    sput v18, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    goto/16 :goto_9

    .line 1647
    :cond_19
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] 3G capability SIM ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/internal/telephony/gsm/GSMPhone;->mTargetNetworkMode:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1655
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v16           #result:[I
    :pswitch_14
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsToResetRadio:Z

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->get3GCapabilitySIM(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1663
    :pswitch_15
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1664
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_1c

    .line 1665
    iget-object v7, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/IccCardStatus;

    .line 1666
    .local v7, iccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v18

    if-nez v18, :cond_1a

    .line 1667
    const-string v18, "GSM"

    const-string v19, "[GSMPhone, EVENT_QUERY_SIM_MISSING_STATUS, execute notifySimMissing]"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->notifySimMissing()V

    goto/16 :goto_0

    .line 1671
    :cond_1a
    if-nez v7, :cond_1b

    .line 1672
    const-string v18, "GSM"

    const-string v19, "[GSMPhone, EVENT_QUERY_SIM_MISSING_STATUS, card is null]"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1675
    :cond_1b
    const-string v18, "GSM"

    const-string v19, "[GSMPhone, EVENT_QUERY_SIM_MISSING_STATUS, card is present]"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1680
    .end local v7           #iccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    :cond_1c
    const-string v18, "GSM"

    const-string v19, "[GSMPhone, EVENT_QUERY_SIM_MISSING_STATUS, exception]"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1687
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1688
    .restart local v3       #ar:Landroid/os/AsyncResult;
    const/4 v10, 0x0

    .line 1690
    .local v10, mCalibrationData:Z
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1d

    .line 1691
    const-string v18, "GSM"

    const-string v19, "Null CALIBRATION DATA!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    const/4 v10, 0x0

    .line 1693
    goto/16 :goto_0

    .line 1696
    :cond_1d
    iget-object v12, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 1697
    .local v12, mIsDownloaded:Ljava/lang/String;
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mIsDownloaded: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const-string v18, "+ECAL: 1"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 1700
    const/4 v10, 0x1

    .line 1705
    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateIsDownloadCalibrationData(Z)V

    goto/16 :goto_0

    .line 1702
    :cond_1e
    const/4 v10, 0x0

    goto :goto_b

    .line 1379
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_b
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_c
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_3
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_8
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"

    .prologue
    const/4 v3, 0x0

    .line 895
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 897
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinCommand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 900
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    .line 901
    const/4 v1, 0x1

    .line 904
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hangupActiveCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupActiveCall()V

    .line 1917
    return-void
.end method

.method public hangupAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAll()V

    .line 1912
    return-void
.end method

.method protected isCfEnable(I)Z
    .locals 2
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 1082
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method public isDeviceIdAbnormal()I
    .locals 1

    .prologue
    .line 2037
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiAbnormal:I

    return v0
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 848
    .local v1, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 849
    .local v0, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 851
    .local v2, ringingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isRadioAvailable()Z
    .locals 1

    .prologue
    .line 2336
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsRadioAvailable:Z

    return v0
.end method

.method public isSimInsert()Z
    .locals 4

    .prologue
    .line 2254
    const/4 v0, 0x0

    .line 2255
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2256
    const/4 v0, 0x1

    .line 2258
    :cond_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimInsert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    return v0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 567
    return-void
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "cn"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 539
    return-void
.end method

.method notifyLocationChanged()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 557
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 533
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 534
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 519
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 527
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 528
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "ss"

    .prologue
    .line 551
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 552
    return-void
.end method

.method notifySignalStrength()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 562
    return-void
.end method

.method notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 547
    return-void
.end method

.method notifyUnknownConnection()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 543
    return-void
.end method

.method notifyVtReplaceDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "cn"

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1897
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 3
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 1292
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1296
    :cond_1
    return-void
.end method

.method public queryCellBroadcastSmsActivation(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->queryCellBroadcastActivation(Landroid/os/Message;)V

    .line 2078
    return-void
.end method

.method public refreshSpnDisplay()V
    .locals 1

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->refreshSpnDisplay()V

    .line 2123
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1903
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    .line 580
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 582
    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V

    .line 597
    return-void
.end method

.method public removeReferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 343
    const-string v0, "GSM"

    const-string/jumbo v1, "removeReferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 345
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 346
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    .line 347
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 348
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    .line 349
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    .line 350
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 351
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 352
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 353
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 354
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 355
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 356
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 357
    return-void
.end method

.method public resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V

    .line 1947
    return-void
.end method

.method public saveClirSetting(I)V
    .locals 4
    .parameter "commandInterfaceCLIRMode"

    .prologue
    .line 1799
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1800
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1801
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "clir_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1804
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1805
    const-string v2, "GSM"

    const-string v3, "failed to commit CLIR preference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_0
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 7
    .parameter "network"
    .parameter "response"

    .prologue
    .line 1216
    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;-><init>()V

    .line 1217
    .local v2, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iput-object p2, v2, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1218
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1219
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1222
    const/16 v4, 0x10

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1225
    .local v1, msg:Landroid/os/Message;
    const-string v4, "gsm.baseband.capability"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1226
    .local v3, result:Ljava/lang/String;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/4 v4, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1228
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    .line 1237
    :goto_0
    return-void

    .line 1230
    :cond_0
    const-string v0, "0"

    .line 1231
    .local v0, actype:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3G"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1232
    const-string v0, "2"

    .line 1234
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .locals 1
    .parameter "dtmfString"

    .prologue
    .line 942
    const-string/jumbo v0, "sendBurstDtmf() is a CDMA method"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 943
    return-void
.end method

.method public sendDtmf(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 917
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "ussdMessge"

    .prologue
    const/4 v3, 0x0

    .line 908
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 909
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 911
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method public set3GCapabilitySIM(I)Z
    .locals 5
    .parameter "simId"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2292
    sget v2, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    if-eq v2, p1, :cond_3

    .line 2293
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] set3GCapabilitySIM ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    if-nez p1, :cond_1

    .line 2295
    const/4 p1, 0x1

    .line 2299
    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 2300
    sput v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTargetNetworkMode:I

    .line 2304
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->set3GCapabilitySIM(ILandroid/os/Message;)V

    .line 2310
    :goto_2
    return v0

    .line 2296
    :cond_1
    if-ne p1, v0, :cond_0

    .line 2297
    const/4 p1, 0x2

    goto :goto_0

    .line 2302
    :cond_2
    sput v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mTargetNetworkMode:I

    goto :goto_1

    .line 2307
    :cond_3
    const-string v0, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] set3GCapabilitySIM to the same SIM["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2310
    goto :goto_2
.end method

.method public setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "acmmax"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1942
    return-void
.end method

.method public setAutoGprsAttach(I)V
    .locals 1
    .parameter "auto"

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAutoGprsAttach(I)V

    .line 2025
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1117
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    const/4 v7, 0x0

    .line 1123
    .local v7, isShowCFIForBusyNoanswerNotavailable:Z
    const-string/jumbo v0, "ro.update.cfi.for.all"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1125
    .local v8, value:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1127
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 1129
    :cond_0
    if-eqz v7, :cond_3

    .line 1131
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    :goto_0
    invoke-virtual {p0, v2, v0, v1, p5}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1142
    .local v6, resp:Landroid/os/Message;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1149
    .end local v6           #resp:Landroid/os/Message;
    .end local v7           #isShowCFIForBusyNoanswerNotavailable:Z
    .end local v8           #value:Ljava/lang/String;
    :cond_1
    return-void

    .restart local v7       #isShowCFIForBusyNoanswerNotavailable:Z
    .restart local v8       #value:Ljava/lang/String;
    :cond_2
    move v0, v1

    .line 1131
    goto :goto_0

    .line 1135
    :cond_3
    if-nez p2, :cond_5

    .line 1136
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_2
    invoke-virtual {p0, v2, v0, v1, p5}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .restart local v6       #resp:Landroid/os/Message;
    goto :goto_1

    .end local v6           #resp:Landroid/os/Message;
    :cond_4
    move v0, v1

    goto :goto_2

    .line 1139
    :cond_5
    move-object v6, p5

    .restart local v6       #resp:Landroid/os/Message;
    goto :goto_1
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 1169
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 1870
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    return-void
.end method

.method public setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 4
    .parameter "chIdList"
    .parameter "langList"
    .parameter "response"

    .prologue
    .line 2063
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2064
    .local v0, chid_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 2065
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2064
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2068
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2069
    .local v2, lang_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    const/4 v1, 0x0

    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 2070
    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2069
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2072
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v3, v0, v2, p3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->setCellBroadcastConfig(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 2073
    return-void
.end method

.method public setCurrentPreferredNetworkType()V
    .locals 1

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->setCurrentPreferredNetworkType()V

    .line 2349
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataOnRoamingEnabled(Z)V

    .line 1278
    return-void
.end method

.method public setDeviceIdAbnormal(I)V
    .locals 0
    .parameter "abnormal"

    .prologue
    .line 2041
    iput p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiAbnormal:I

    .line 2042
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "facility"
    .parameter "enable"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 2098
    return-void
.end method

.method public setGprsConnType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setGprsConnType(I)V

    .line 2029
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1043
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 1250
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 1198
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;-><init>()V

    .line 1199
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iput-object p1, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1200
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1201
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1204
    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1206
    .local v0, msg:Landroid/os/Message;
    const-string v2, "GSM"

    const-string/jumbo v3, "wrapping and sending message to connect automatically"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1209
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1245
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 1246
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 3
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1159
    return-void
.end method

.method public setPOLEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 4
    .parameter "networkWithAct"
    .parameter "onComplete"

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getAccessTechnology()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2333
    return-void
.end method

.method public setPeerPhone(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .parameter "mPhone"

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPeerPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 1887
    return-void
.end method

.method public setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "currency"
    .parameter "ppu"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1952
    return-void
.end method

.method public setPreferredNetworkTypeRIL(I)V
    .locals 1
    .parameter "NetworkType"

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkTypeRIL(I)V

    .line 2345
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRadioPower(Z)V

    .line 949
    return-void
.end method

.method public setRadioPower(ZZ)V
    .locals 1
    .parameter "power"
    .parameter "shutdown"

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRadioPower(ZZ)V

    .line 2021
    return-void
.end method

.method public setRadioPowerOn()V
    .locals 1

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRadioPowerOn()V

    .line 2016
    return-void
.end method

.method public setSimRecoveryOn(ILandroid/os/Message;)V
    .locals 1
    .parameter "Type"
    .parameter "response"

    .prologue
    .line 2352
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setSimRecoveryOn(ILandroid/os/Message;)V

    .line 2353
    return-void
.end method

.method public final setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "property"
    .parameter "value"

    .prologue
    .line 575
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public setTRM(ILandroid/os/Message;)V
    .locals 1
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    .line 2361
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    const/4 v2, 0x0

    .line 1050
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    .line 1051
    const/16 v1, 0x14

    invoke-virtual {p0, v1, v2, v2, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1052
    .local v0, resp:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/internal/telephony/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1053
    return-void
.end method

.method public setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 2142
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2145
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x200

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 2152
    :cond_0
    return-void
.end method

.method public setVtCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 2159
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x200

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 2160
    return-void
.end method

.method public setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "facility"
    .parameter "enable"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x200

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 2168
    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 928
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 933
    :goto_0
    return-void

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 938
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 602
    return-void
.end method

.method protected syncClirSetting()V
    .locals 4

    .prologue
    .line 1367
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1368
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "clir_key"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1369
    .local v0, clirSetting:I
    if-ltz v0, :cond_0

    .line 1370
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1372
    :cond_0
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1907
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 3
    .parameter "h"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 587
    :cond_0
    return-void
.end method

.method updateCurrentCarrierInProvider()Z
    .locals 5

    .prologue
    .line 1720
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v3, :cond_1

    .line 1723
    const/4 v2, 0x0

    .line 1725
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    iget v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    if-nez v3, :cond_0

    .line 1726
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "current"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1734
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1735
    .local v1, map:Landroid/content/ContentValues;
    const-string/jumbo v3, "numeric"

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1737
    const/4 v3, 0x1

    .line 1747
    .end local v1           #map:Landroid/content/ContentValues;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_1
    return v3

    .line 1728
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_0
    sget-object v3, Landroid/provider/Telephony$Carriers$GeminiCarriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "current"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1738
    :catch_0
    move-exception v0

    .line 1739
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "GSM"

    const-string v4, "Can\'t store current operator"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1747
    .end local v0           #e:Landroid/database/SQLException;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1744
    :cond_1
    const-string v3, "GSM"

    const-string/jumbo v4, "updateCurrentCarrierInProvider():mIccRecords is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableSingleLocationUpdate()V

    .line 1262
    return-void
.end method

.method public updateSimIndicateState()V
    .locals 8

    .prologue
    .line 2172
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    .line 2173
    .local v3, simState:Lcom/android/internal/telephony/IccCard$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    .line 2174
    .local v0, dataState:Lcom/android/internal/telephony/Phone$DataState;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    .line 2179
    .local v4, svState:Landroid/telephony/ServiceState;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPeerPhone()Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    .line 2180
    .local v2, peerPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    if-eqz v2, :cond_0

    .line 2181
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2182
    sget-object v5, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v5, v0, :cond_0

    .line 2183
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    .line 2189
    :cond_0
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSimIndicateState simState is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dataState is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " svState is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSimIndicatorStateFromStates(Lcom/android/internal/telephony/IccCard$State;Landroid/telephony/ServiceState;Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v1

    .line 2192
    .local v1, newState:I
    iget v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimIndicatorState:I

    if-eq v5, v1, :cond_1

    .line 2193
    iput v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimIndicatorState:I

    .line 2194
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->broadcastSimIndStateChangedIntent(I)V

    .line 2196
    :cond_1
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSimIndicateState new state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    return-void
.end method

.method public voiceAccept()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceAccept()V

    .line 2009
    return-void
.end method

.method public vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1978
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 6
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1984
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1985
    .local v2, newDialString:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vtDial:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "newVtDial:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 1988
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1989
    .local v1, networkPortion:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "network portion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 1990
    invoke-static {v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1991
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dialing w/ mmi \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->Cclog(Ljava/lang/String;)V

    .line 1993
    if-nez v0, :cond_0

    .line 1994
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3, v2, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 2003
    :goto_0
    return-object v3

    .line 1995
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1996
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 2003
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
