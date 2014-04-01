.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_AAS_LOAD_DONE:I = 0x8

.field private static final EVENT_ANR_LOAD_DONE:I = 0x5

.field private static final EVENT_ANR_RECORD_LOAD_DONE:I = 0xd

.field private static final EVENT_ANR_UPDATE_DONE:I = 0x9

.field private static final EVENT_EMAIL_LENGTH_READ_DONE:I = 0x12

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_EMAIL_UPDATE_DONE:I = 0xb

.field private static final EVENT_GAS_LOAD_DONE:I = 0x7

.field private static final EVENT_GAS_UPDATE_DONE:I = 0x11

.field private static final EVENT_GET_ANR_RECORD_SIZE_DONE:I = 0xe

.field private static final EVENT_GRP_LOAD_DONE:I = 0x6

.field private static final EVENT_GRP_RECORD_LOAD_DONE:I = 0xf

.field private static final EVENT_GRP_UPDATE_DONE:I = 0xa

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_IAP_UPDATE_DONE:I = 0xc

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_UPB_CAPABILITY_QUERY_DONE:I = 0x10

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final UPB_EF_AAS:I = 0x3

.field private static final UPB_EF_ANR:I = 0x0

.field private static final UPB_EF_EMAIL:I = 0x1

.field private static final UPB_EF_GAS:I = 0x4

.field private static final UPB_EF_GRP:I = 0x5

.field private static final UPB_EF_SNE:I = 0x2

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field public static final USIM_ERROR_GROUP_COUNT:I = -0x14

.field public static final USIM_ERROR_NAME_LEN:I = -0xa

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field private mAasFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAasForAnrRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field private mAdnFileSize:I

.field private mAnrFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAnrFileSize:I

.field private mAnrForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrRecordSize:I

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailFileSize:I

.field private mEmailPresentInIap:Z

.field private mEmailRecTable:[I

.field private mEmailRecordSize:I

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGasForGrp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/UsimGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mGasLock:Ljava/lang/Object;

.field private mIapFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mIapFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLoadFail:Z

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPbrFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mReadLock:Ljava/lang/Object;

.field private mReadingAnrNum:I

.field private mReadingGrpNum:I

.field private mRefreshCache:Z

.field private mResult:I

.field private mUpbCap:[I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/AdnRecordCache;)V
    .locals 5
    .parameter "phone"
    .parameter "cache"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 59
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    .line 62
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 63
    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 64
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 65
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    .line 66
    const/16 v1, 0xfa

    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    .line 74
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 77
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 78
    const/16 v1, 0x190

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    .line 79
    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:I

    .line 80
    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:I

    .line 81
    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 82
    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:I

    .line 83
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    .line 84
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 132
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadLock:Ljava/lang/Object;

    .line 133
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLoadFail:Z

    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 140
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 143
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 144
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.ACTION_PHONE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "SimId"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    const-string v1, "GSM"

    const-string v2, "UsimPhoneBookManager constructor finished. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method private buildAnrRecord(Ljava/lang/String;II)[B
    .locals 6
    .parameter "anr"
    .parameter "recordSize"
    .parameter "adnIndex"

    .prologue
    const/4 v5, 0x0

    .line 1427
    new-array v0, p2, [B

    .line 1428
    .local v0, anrString:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 1429
    const/4 v3, -0x1

    aput-byte v3, v0, v2

    .line 1428
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1432
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1433
    const-string v3, "GSM"

    const-string v4, "[buildAdnString] Empty dialing number"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    .end local v0           #anrString:[B
    :cond_1
    :goto_1
    return-object v0

    .line 1435
    .restart local v0       #anrString:[B
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_3

    .line 1436
    const-string v3, "GSM"

    const-string v4, "[buildAnrRecord] Max length of dialing number is 20"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const/4 v0, 0x0

    goto :goto_1

    .line 1440
    :cond_3
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1441
    .local v1, bcdNumber:[B
    if-eqz v1, :cond_1

    .line 1442
    int-to-byte v3, p3

    aput-byte v3, v0, v5

    .line 1443
    const/4 v3, 0x2

    array-length v4, v1

    invoke-static {v1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1445
    const/4 v3, 0x1

    array-length v4, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    goto :goto_1
.end method

.method private buildEmailRecord(Ljava/lang/String;II)[B
    .locals 6
    .parameter "strEmail"
    .parameter "adnIndex"
    .parameter "recordSize"

    .prologue
    const/4 v5, 0x0

    .line 1454
    new-array v1, p3, [B

    .line 1455
    .local v1, eMailRecData:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 1456
    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 1455
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1458
    :cond_0
    if-eqz p1, :cond_1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1459
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 1460
    .local v0, eMailData:[B
    array-length v3, v0

    array-length v4, v1

    if-le v3, v4, :cond_2

    const/4 v1, 0x0

    .line 1465
    .end local v0           #eMailData:[B
    .end local v1           #eMailRecData:[B
    :cond_1
    :goto_1
    return-object v1

    .line 1461
    .restart local v0       #eMailData:[B
    .restart local v1       #eMailRecData:[B
    :cond_2
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 541
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 545
    :goto_0
    return-void

    .line 544
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private decodeGas(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "srcGas"

    .prologue
    .line 977
    if-nez p1, :cond_0

    .line 978
    const/4 v2, 0x0

    .line 992
    :goto_0
    return-object v2

    .line 980
    :cond_0
    const/4 v2, 0x0

    .line 981
    .local v2, retGas:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 982
    .local v0, ba:[B
    if-nez v0, :cond_1

    .line 983
    const-string v4, "GSM"

    const-string v5, "gas string is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 988
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const-string/jumbo v6, "utf-16be"

    invoke-direct {v3, v0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #retGas:Ljava/lang/String;
    .local v3, retGas:Ljava/lang/String;
    move-object v2, v3

    .line 991
    .end local v3           #retGas:Ljava/lang/String;
    .restart local v2       #retGas:Ljava/lang/String;
    goto :goto_0

    .line 989
    :catch_0
    move-exception v1

    .line 990
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v4, "GSM"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private encodeATUCS2(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    .line 1000
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1002
    .local v3, output:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1004
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, hexInt:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_0

    .line 1006
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1007
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1010
    .end local v0           #hexInt:Ljava/lang/String;
    .end local v2           #j:I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getRecNum([Ljava/lang/String;II[BI)I
    .locals 9
    .parameter "emails"
    .parameter "pbrRecNum"
    .parameter "nIapRecNum"
    .parameter "iapRec"
    .parameter "tagNum"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xff

    const/4 v4, -0x1

    .line 1293
    const/4 v0, 0x0

    .line 1294
    .local v0, hasEmail:Z
    if-nez p1, :cond_2

    .line 1296
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    if-eq v5, v7, :cond_0

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    if-lez v5, :cond_0

    .line 1297
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v6, p4, v6

    add-int/lit8 v6, v6, -0x1

    aput v8, v5, v6

    :cond_0
    move v3, v4

    .line 1326
    :cond_1
    :goto_0
    return v3

    .line 1300
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 1301
    aget-object v5, p1, v1

    if-eqz v5, :cond_5

    aget-object v5, p1, v1

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1302
    const/4 v0, 0x1

    .line 1306
    :cond_3
    if-nez v0, :cond_6

    .line 1307
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    if-eq v5, v7, :cond_4

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    if-lez v5, :cond_4

    .line 1308
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v6, p4, v6

    add-int/lit8 v6, v6, -0x1

    aput v8, v5, v6

    :cond_4
    move v3, v4

    .line 1309
    goto :goto_0

    .line 1300
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1311
    :cond_6
    aget-byte v3, p4, p5

    .line 1312
    .local v3, recNum:I
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-gt v3, v5, :cond_7

    if-eq v3, v7, :cond_7

    if-ne v3, v4, :cond_8

    .line 1314
    :cond_7
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v2, p2, v5

    .line 1315
    .local v2, nOffset:I
    move v1, v2

    :goto_2
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v5, v2

    if-ge v1, v5, :cond_8

    .line 1316
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateEmailsByAdnIndex: mEmailRecTable["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v5, v5, v1

    if-nez v5, :cond_a

    .line 1318
    add-int/lit8 v5, v1, 0x1

    sub-int v3, v5, v2

    .line 1319
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aput p3, v5, v1

    .line 1324
    .end local v2           #nOffset:I
    :cond_8
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-le v3, v5, :cond_9

    const/16 v3, 0xff

    .line 1325
    :cond_9
    if-ne v3, v4, :cond_1

    const/4 v3, -0x2

    goto/16 :goto_0

    .line 1315
    .restart local v2       #nOffset:I
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1267
    const-string v0, "GSM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    return-void
.end method

.method private queryUpbCapablityAndWait()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 863
    const-string v2, "GSM"

    const-string v3, "UsimPhoneBookManager queryUpbCapablityAndWait begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 865
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 866
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v4, 0x0

    aput v4, v2, v1

    .line 865
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 868
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 874
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 875
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimPhoneBookManager queryUpbCapablityAndWait done:N_Anr is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", N_Email is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",N_Sne is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",N_Aas is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", L_Aas is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",N_Gas is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",L_Gas is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", N_Grp is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return-void

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "GSM"

    const-string v4, "Interrupted Exception in queryUpbCapablityAndWait"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 874
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private readAdnFileAndWait(I)V
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0x6f3a

    .line 514
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsimPhoneBookManager readAdnFileAndWait: recNum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GSM"

    const-string v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readAnrFileAndWait(I)V
    .locals 14
    .parameter "recNum"

    .prologue
    const/16 v13, 0xc4

    .line 282
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v10, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 284
    .local v3, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 285
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UsimPhoneBookManager readAnrFileAndWait: recNum is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 288
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UsimPhoneBookManager readAnrFileAndWait: No anr tag in pbr record "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 293
    .local v2, efid:I
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UsimPhoneBookManager readAnrFileAndWait: recNum is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " EFANR id is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 296
    .local v8, numAdnRecs:I
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    mul-int v7, p1, v10

    .line 297
    .local v7, nOffset:I
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    add-int v6, v7, v10

    .line 298
    .local v6, nMax:I
    if-ge v8, v6, :cond_3

    .line 299
    move v6, v8

    .line 302
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v5

    .line 303
    .local v5, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v5, :cond_0

    .line 304
    const/16 v10, 0xe

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v5, v2, v10}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 310
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_1
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    if-nez v10, :cond_4

    .line 316
    const-string v10, "GSM"

    const-string v11, "UsimPhoneBookManager readAnrFileAndWait: AnrRecordSize is 0. "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v10, "GSM"

    const-string v11, "Interrupted Exception in readAnrFileAndWait"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 319
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_4
    move v4, v7

    .local v4, i:I
    :goto_2
    if-ge v4, v6, :cond_7

    .line 322
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/AdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 327
    .local v9, rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v9}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_5

    invoke-virtual {v9}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 328
    :cond_5
    const/4 v10, 0x2

    new-array v0, v10, [I

    .line 329
    .local v0, data:[I
    const/4 v10, 0x0

    aput p1, v0, v10

    .line 330
    const/4 v10, 0x1

    aput v4, v0, v10

    .line 331
    add-int/lit8 v10, v4, 0x1

    sub-int/2addr v10, v7

    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    const/16 v12, 0xd

    invoke-virtual {p0, v12, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v5, v2, v10, v11, v12}, Lcom/android/internal/telephony/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 333
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:I

    .line 334
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UsimPhoneBookManager readAnrFileAndWait: read anr for  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " adn "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "( "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " )  mReadingAnrNum is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v0           #data:[I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 323
    .end local v9           #rec:Lcom/android/internal/telephony/AdnRecord;
    :catch_1
    move-exception v1

    .line 324
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UsimPhoneBookManager readAnrFileAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "index is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_7
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:I

    if-eqz v10, :cond_0

    .line 342
    :try_start_2
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 343
    :catch_2
    move-exception v1

    .line 344
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v10, "GSM"

    const-string v11, "Interrupted Exception in readAnrFileAndWait"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 6
    .parameter "recNum"

    .prologue
    const/16 v5, 0xca

    .line 235
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 237
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 239
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 245
    .local v1, efid:I
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v3, :cond_2

    .line 246
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 247
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 248
    const-string v3, "GSM"

    const-string v4, "Error: IAP file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 256
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 262
    const-string v3, "GSM"

    const-string v4, "Error: Email file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "GSM"

    const-string v4, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 266
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordByEmailFile(I)V

    goto/16 :goto_0
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 7
    .parameter "recNum"

    .prologue
    .line 481
    const/4 v3, 0x0

    .line 483
    .local v3, emailRec:[B
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    array-length v4, v3

    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 489
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsimPhoneBookManager readEmailRecord: emailRec.length is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 491
    :goto_0
    return-object v2

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsimPhoneBookManager readEmailRecord: recNum is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readGasListAndWait()V
    .locals 6

    .prologue
    .line 881
    const-string v1, "GSM"

    const-string v2, "UsimPhoneBookManager readGasListAndWait begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v2

    .line 883
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    if-gtz v1, :cond_0

    .line 884
    const-string v1, "GSM"

    const-string v3, "UsimPhoneBookManager readGasListAndWait no need to read. return"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    monitor-exit v2

    .line 894
    :goto_0
    return-void

    .line 887
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->readUPBGasList(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 893
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "GSM"

    const-string v3, "Interrupted Exception in readGasListAndWait"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private readGrpIdsAndWait()V
    .locals 9

    .prologue
    .line 350
    const-string v6, "GSM"

    const-string v7, "UsimPhoneBookManager readGrpIdsAndWait begin"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 354
    .local v4, numAdnRecs:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 357
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .local v5, rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 363
    :cond_0
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getRecordIndex()I

    move-result v0

    .line 364
    .local v0, adnIndex:I
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 365
    .local v1, data:[I
    const/4 v6, 0x0

    aput v3, v1, v6

    .line 366
    const/4 v6, 0x1

    aput v0, v1, v6

    .line 367
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0xf

    invoke-virtual {p0, v7, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lcom/android/internal/telephony/CommandsInterface;->readUPBGrpEntry(ILandroid/os/Message;)V

    .line 369
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:I

    .line 370
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UsimPhoneBookManager readGrpIdsAndWait: read grp for  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " adn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " )  mReadingGrpNum is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v0           #adnIndex:I
    .end local v1           #data:[I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 358
    .end local v5           #rec:Lcom/android/internal/telephony/AdnRecord;
    :catch_0
    move-exception v2

    .line 359
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UsimPhoneBookManager readGrpIdsAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "index is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:I

    if-nez v6, :cond_3

    .line 382
    :goto_1
    return-void

    .line 378
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 379
    :catch_1
    move-exception v2

    .line 380
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v6, "GSM"

    const-string v7, "Interrupted Exception in readAnrFileAndWait"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readIapFileAndWait(I)V
    .locals 3
    .parameter "efid"

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GSM"

    const-string v2, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readPbrFileAndWait(Z)V
    .locals 4
    .parameter "is7FFF"

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;Z)V

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GSM"

    const-string v2, "Interrupted Exception in readPbrFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshCache()V
    .locals 3

    .prologue
    .line 211
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 218
    :cond_0
    return-void

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 214
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 215
    .local v1, numRecs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 216
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updatePhoneAdnRecord()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 385
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v9, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 387
    .local v5, numAdnRecs:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    .line 393
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 394
    const/4 v8, 0x0

    .line 396
    .local v8, record:[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #record:[B
    check-cast v8, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .restart local v8       #record:[B
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v8, v9

    .line 403
    .local v7, recNum:I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    .line 404
    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    .line 406
    .local v2, emails:[Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v11

    .line 407
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    .line 408
    .local v6, rec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v6, :cond_5

    .line 409
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 414
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 393
    .end local v2           #emails:[Ljava/lang/String;
    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 397
    .end local v7           #recNum:I
    .end local v8           #record:[B
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "GSM"

    const-string v10, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v3           #i:I
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 426
    .local v4, len:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    if-nez v9, :cond_4

    .line 427
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(I)V

    .line 429
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v5, :cond_0

    .line 430
    const/4 v1, 0x0

    .line 432
    .local v1, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 436
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_6

    .line 429
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 412
    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #len:I
    .restart local v2       #emails:[Ljava/lang/String;
    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    .restart local v7       #recNum:I
    .restart local v8       #record:[B
    :cond_5
    new-instance v6, Lcom/android/internal/telephony/AdnRecord;

    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v9, ""

    const-string v10, ""

    invoke-direct {v6, v9, v10, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_2

    .line 433
    .end local v2           #emails:[Ljava/lang/String;
    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    .end local v7           #recNum:I
    .end local v8           #record:[B
    .restart local v4       #len:I
    :catch_1
    move-exception v0

    .line 434
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .line 438
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    .line 440
    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .line 441
    .restart local v2       #emails:[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v11, v2, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 443
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method private updatePhoneAdnRecordByEmailFile(I)V
    .locals 14
    .parameter "nPbrRecNum"

    .prologue
    const/4 v13, 0x0

    .line 1501
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    .line 1588
    :cond_0
    :goto_0
    return-void

    .line 1502
    :cond_1
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v5, p1, v10

    .line 1504
    .local v5, nOffset:I
    move v2, v5

    .local v2, i:I
    :goto_1
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v10, v5

    if-ge v2, v10, :cond_2

    .line 1506
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    const/4 v11, 0x0

    aput v11, v10, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1507
    :catch_0
    move-exception v0

    .line 1508
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UsimPhoneBookManager updatePhoneAdnRecordByEmailFile: mEmailRecTable ArrayIndexOutOfBoundsException, nPbrRecNum is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    .line 1518
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1519
    .local v6, numAdnRecs:I
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    mul-int v3, p1, v10

    .line 1520
    .local v3, nAdnOffset:I
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    add-int v4, v5, v10

    .line 1521
    .local v4, nMax:I
    if-ge v6, v4, :cond_3

    .line 1522
    move v4, v6

    .line 1524
    :cond_3
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UsimPhoneBookManager updatePhoneAdnRecordByEmailFile:  nAdnOffset is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "nMax is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    move v2, v3

    :goto_2
    if-ge v2, v4, :cond_0

    .line 1528
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/AdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1533
    .local v7, rec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 1535
    :cond_4
    const/4 v9, 0x0

    .line 1537
    .local v9, record:[B
    :try_start_2
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    sub-int v11, v2, v3

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #record:[B
    check-cast v9, [B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1542
    .restart local v9       #record:[B
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v8, v9, v10

    .line 1544
    .local v8, recNum:I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_5

    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-gt v8, v10, :cond_5

    .line 1545
    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/String;

    .line 1547
    .local v1, emails:[Ljava/lang/String;
    add-int/lit8 v10, v8, -0x1

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v13

    .line 1549
    :try_start_3
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int/2addr v11, p1

    add-int/2addr v11, v8

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v2, 0x1

    aput v12, v10, v11
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1555
    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 1556
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1525
    .end local v1           #emails:[Ljava/lang/String;
    .end local v8           #recNum:I
    .end local v9           #record:[B
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1529
    .end local v7           #rec:Lcom/android/internal/telephony/AdnRecord;
    :catch_1
    move-exception v0

    .line 1530
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UsimPhoneBookManager updatePhoneAdnRecordByEmailFile: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "index is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1538
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v7       #rec:Lcom/android/internal/telephony/AdnRecord;
    :catch_2
    move-exception v0

    .line 1539
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: updatePhoneAdnRecord : No IAP record for ADN "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , continuing"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1550
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #emails:[Ljava/lang/String;
    .restart local v8       #recNum:I
    .restart local v9       #record:[B
    :catch_3
    move-exception v0

    .line 1551
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: updatePhoneAdnRecord : Email record index out of table storage "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , continuing"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updatePhoneAdnRecordWithAnrByIndex(II[B)V
    .locals 7
    .parameter "recNum"
    .parameter "index"
    .parameter "anrRecData"

    .prologue
    const/4 v6, 0x1

    .line 897
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePhoneAdnRecordWithAnrByIndex the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "th anr record is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    aget-byte v1, p3, v6

    .line 903
    .local v1, anrRecLength:I
    if-lez v1, :cond_0

    const/16 v3, 0xb

    if-gt v1, v3, :cond_0

    .line 904
    const/4 v3, 0x2

    aget-byte v4, p3, v6

    invoke-static {p3, v3, v4}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, anr:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 910
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updatePhoneAdnRecordWithAnrByIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " th anr is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    .line 913
    .local v2, rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 914
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 917
    .end local v0           #anr:Ljava/lang/String;
    .end local v2           #rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_0
    return-void
.end method

.method private updatePhoneAdnRecordWithGrpByIndex(II[I)V
    .locals 7
    .parameter "recIndex"
    .parameter "adnIndex"
    .parameter "grpIds"

    .prologue
    .line 1475
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updatePhoneAdnRecordWithGrpByIndex the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "th grp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 1499
    :cond_0
    :goto_0
    return-void

    .line 1479
    :cond_1
    array-length v1, p3

    .line 1481
    .local v1, grpSize:I
    if-lez v1, :cond_0

    .line 1482
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 1483
    .local v3, rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updatePhoneAdnRecordWithGrpByIndex the adnIndex is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; the original index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getRecordIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1486
    .local v0, grpIdsSb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_2

    .line 1487
    aget v4, p3, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1488
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1490
    :cond_2
    add-int/lit8 v4, v1, -0x1

    aget v4, p3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/AdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 1494
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updatePhoneAdnRecordWithGrpByIndex grpIds is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addContactToGroup(II)Z
    .locals 15
    .parameter "adnIndex"
    .parameter "grpIndex"

    .prologue
    .line 1089
    const/4 v10, 0x0

    .line 1090
    .local v10, ret:Z
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UsimPhoneBookManager addContactToGroup adnIndex is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to grp "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    if-lez p1, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v0, p1

    if-le v0, v11, :cond_1

    .line 1093
    :cond_0
    const-string v11, "GSM"

    const-string v12, "UsimPhoneBookManager addContactToGroup no records or invalid index."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/4 v11, 0x0

    .line 1149
    :goto_0
    return v11

    .line 1096
    :cond_1
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1098
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v13, p1, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/AdnRecord;

    .line 1100
    .local v9, rec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v9, :cond_4

    .line 1101
    const-string v11, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " addContactToGroup the adn index is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/android/internal/telephony/AdnRecord;->getRecordIndex()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " old grpList is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/android/internal/telephony/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-virtual {v9}, Lcom/android/internal/telephony/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v6

    .line 1104
    .local v6, grpList:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1105
    .local v1, bExist:Z
    const/4 v8, -0x1

    .line 1106
    .local v8, nOrder:I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v13, 0x7

    aget v3, v11, v13

    .line 1107
    .local v3, grpCount:I
    new-array v4, v3, [I

    .line 1108
    .local v4, grpIdArray:[I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v3, :cond_2

    .line 1109
    const/4 v11, 0x0

    aput v11, v4, v7

    .line 1108
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1111
    :cond_2
    if-eqz v6, :cond_8

    .line 1112
    invoke-virtual {v9}, Lcom/android/internal/telephony/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v11

    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1113
    .local v5, grpIds:[Ljava/lang/String;
    const/4 v7, 0x0

    :goto_2
    array-length v11, v5

    if-ge v7, v11, :cond_3

    .line 1114
    aget-object v11, v5, v7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v4, v7

    .line 1115
    aget v11, v4, v7

    move/from16 v0, p2

    if-ne v0, v11, :cond_5

    .line 1116
    const/4 v1, 0x1

    .line 1117
    const-string v11, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " addContactToGroup the adn is already in the group. i is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    .end local v5           #grpIds:[Ljava/lang/String;
    :cond_3
    :goto_3
    if-nez v1, :cond_4

    if-ltz v8, :cond_4

    .line 1133
    aput p2, v4, v8

    .line 1134
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v11, v11, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v13, 0xa

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move/from16 v0, p1

    invoke-interface {v11, v0, v4, v13}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1140
    :goto_4
    :try_start_2
    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v11, :cond_4

    .line 1141
    const/4 v10, 0x1

    .line 1142
    add-int/lit8 v11, p1, -0x1

    move/from16 v0, p1

    invoke-direct {p0, v11, v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 1143
    const-string v11, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " addContactToGroup the adn index is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/android/internal/telephony/AdnRecord;->getRecordIndex()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 1148
    .end local v1           #bExist:Z
    .end local v3           #grpCount:I
    .end local v4           #grpIdArray:[I
    .end local v6           #grpList:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #nOrder:I
    :cond_4
    monitor-exit v12

    move v11, v10

    .line 1149
    goto/16 :goto_0

    .line 1121
    .restart local v1       #bExist:Z
    .restart local v3       #grpCount:I
    .restart local v4       #grpIdArray:[I
    .restart local v5       #grpIds:[Ljava/lang/String;
    .restart local v6       #grpList:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v8       #nOrder:I
    :cond_5
    aget v11, v4, v7

    if-eqz v11, :cond_6

    aget v11, v4, v7

    const/16 v13, 0xff

    if-ne v11, v13, :cond_7

    .line 1122
    :cond_6
    move v8, v7

    .line 1123
    const-string v11, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " addContactToGroup found an unsed position in the group list. i is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 1129
    .end local v5           #grpIds:[Ljava/lang/String;
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 1137
    :catch_0
    move-exception v2

    .line 1138
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v11, "GSM"

    const-string v13, "Interrupted Exception in addContactToGroup"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1148
    .end local v1           #bExist:Z
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v3           #grpCount:I
    .end local v4           #grpIdArray:[I
    .end local v6           #grpList:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #nOrder:I
    .end local v9           #rec:Lcom/android/internal/telephony/AdnRecord;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11
.end method

.method public checkEmailCapacityFree(I[Ljava/lang/String;)Z
    .locals 7
    .parameter "adnIndex"
    .parameter "emails"

    .prologue
    const/4 v4, 0x1

    .line 1330
    add-int/lit8 v5, p1, -0x1

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v3, v5, v6

    .line 1331
    .local v3, pbrRecNum:I
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v2, v3, v5

    .line 1332
    .local v2, nOffset:I
    const/4 v0, 0x0

    .line 1333
    .local v0, hasEmail:Z
    if-nez p2, :cond_1

    .line 1351
    :cond_0
    :goto_0
    return v4

    .line 1336
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, p2

    if-ge v1, v5, :cond_2

    .line 1337
    aget-object v5, p2, v1

    if-eqz v5, :cond_3

    aget-object v5, p2, v1

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1338
    const/4 v0, 0x1

    .line 1342
    :cond_2
    if-eqz v0, :cond_0

    .line 1346
    move v1, v2

    :goto_2
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v5, v2

    if-ge v1, v5, :cond_4

    .line 1347
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v5, v5, v1

    if-eqz v5, :cond_0

    .line 1346
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1336
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1351
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public checkEmailLength([Ljava/lang/String;)Z
    .locals 4
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 1354
    if-eqz p1, :cond_0

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 1355
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 1356
    .local v0, eMailData:[B
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    array-length v2, v0

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-le v2, v3, :cond_0

    .line 1358
    .end local v0           #eMailData:[B
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getUSIMGroupById(I)Ljava/lang/String;
    .locals 5
    .parameter "nGasId"

    .prologue
    .line 932
    const/4 v0, 0x0

    .line 933
    .local v0, grpName:Ljava/lang/String;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimPhoneBookManager getUSIMGroupById nGasId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 935
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/UsimGroup;

    .line 936
    .local v1, uGas:Lcom/android/internal/telephony/UsimGroup;
    if-eqz v1, :cond_0

    .line 937
    invoke-virtual {v1}, Lcom/android/internal/telephony/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 938
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUSIMGroupById index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/UsimGroup;->getRecordIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    .end local v1           #uGas:Lcom/android/internal/telephony/UsimGroup;
    :cond_0
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimPhoneBookManager getUSIMGroupById grpName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    return-object v0
.end method

.method public getUSIMGrpMaxCount()I
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 1246
    const/4 v2, -0x1

    .line 1248
    .local v2, ret:I
    const-string v3, "GSM"

    const-string v4, "UsimPhoneBookManager getUSIMGrpMaxCount begin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1250
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 1251
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x0

    aput v5, v3, v1

    .line 1250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1253
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1259
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1261
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v2, v3, v6

    .line 1262
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsimPhoneBookManager getUSIMGrpMaxCount done: N_Gas is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    return v2

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "GSM"

    const-string v5, "Interrupted Exception in getUSIMGrpMaxCount"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1259
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getUSIMGrpMaxNameLen()I
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 1225
    const/4 v2, -0x1

    .line 1227
    .local v2, ret:I
    const-string v3, "GSM"

    const-string v4, "UsimPhoneBookManager getUSIMGrpMaxNameLen begin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1229
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 1230
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x0

    aput v5, v3, v1

    .line 1229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1232
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1238
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1239
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v2, v3, v6

    .line 1240
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsimPhoneBookManager getUSIMGrpMaxNameLen done: L_Gas is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    return v2

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "GSM"

    const-string v5, "Interrupted Exception in getUSIMGrpMaxNameLen"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1238
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getUsimGroups()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/UsimGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 920
    const-string v0, "GSM"

    const-string v1, "UsimPhoneBookManager getUsimGroups "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 922
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    monitor-exit v1

    .line 928
    :goto_0
    return-object v0

    .line 923
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->queryUpbCapablityAndWait()V

    .line 926
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readGasListAndWait()V

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    goto :goto_0

    .line 923
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 550
    const/4 v10, 0x0

    .line 551
    .local v10, userData:[I
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 790
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 553
    :pswitch_1
    const-string v11, "GSM"

    const-string v12, "UsimPhoneBookManager handleMessage: EVENT_PBR_LOAD_DONE"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 555
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_1

    .line 556
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 558
    :cond_1
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 559
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 560
    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 563
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v11, "Loading USIM ADN records done"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 564
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 565
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_2

    .line 566
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 567
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLoadFail:Z

    .line 572
    :goto_1
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 573
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 574
    monitor-exit v12

    goto :goto_0

    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v11

    .line 569
    :cond_2
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLoadFail:Z

    .line 570
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Loading USIM ADN records done exception="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 577
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    move-object v0, v11

    check-cast v0, Landroid/os/AsyncResult;

    .line 578
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_4

    .line 579
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    move-object v7, v11

    check-cast v7, [I

    .line 585
    .local v7, recordSize:[I
    array-length v11, v7

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    .line 586
    const/4 v11, 0x2

    aget v11, v7, v11

    iput v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:I

    .line 587
    const/4 v11, 0x0

    aget v11, v7, v11

    iput v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 596
    .end local v7           #recordSize:[I
    :goto_2
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 597
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 598
    monitor-exit v12

    goto/16 :goto_0

    :catchall_2
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v11

    .line 589
    .restart local v7       #recordSize:[I
    :cond_3
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get wrong EF record size format"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 593
    .end local v7           #recordSize:[I
    :cond_4
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get EF record size failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 601
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v11, "Loading USIM ANR records done"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 602
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 603
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_5

    .line 604
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecords:Ljava/util/ArrayList;

    .line 606
    :cond_5
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 607
    :try_start_3
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 608
    monitor-exit v12

    goto/16 :goto_0

    :catchall_3
    move-exception v11

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v11

    .line 611
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v11, "Loading USIM ANR record done"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 612
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 613
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v11, [I

    move-object v10, v11

    check-cast v10, [I

    .line 614
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/IccIoResult;

    .line 616
    .local v8, result:Lcom/android/internal/telephony/IccIoResult;
    if-eqz v8, :cond_6

    .line 617
    invoke-virtual {v8}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v6

    .line 619
    .local v6, iccException:Lcom/android/internal/telephony/IccException;
    if-nez v6, :cond_6

    .line 620
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Loading USIM ANR record done result is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 621
    const/4 v11, 0x0

    aget v11, v10, v11

    const/4 v12, 0x1

    aget v12, v10, v12

    iget-object v13, v8, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-direct {p0, v11, v12, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithAnrByIndex(II[B)V

    .line 630
    .end local v6           #iccException:Lcom/android/internal/telephony/IccException;
    :cond_6
    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:I

    .line 631
    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:I

    if-nez v11, :cond_0

    .line 632
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 633
    :try_start_4
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 634
    monitor-exit v12

    goto/16 :goto_0

    :catchall_4
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v11

    .line 638
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v8           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_6
    const-string v11, "Loading USIM IAP records done"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 639
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 640
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_8

    .line 641
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    .line 642
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-nez v11, :cond_7

    .line 643
    const-string v11, "IapFileList is null !!!! recreat it !"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 644
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 647
    :cond_7
    :try_start_5
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 652
    :cond_8
    :goto_3
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 653
    :try_start_6
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 654
    monitor-exit v12

    goto/16 :goto_0

    :catchall_5
    move-exception v11

    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v11

    .line 648
    :catch_0
    move-exception v1

    .line 649
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 657
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_7
    const-string v11, "Loading USIM Email records done"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 658
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 659
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_9

    .line 660
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 663
    :cond_9
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 664
    :try_start_7
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 665
    monitor-exit v12

    goto/16 :goto_0

    :catchall_6
    move-exception v11

    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v11

    .line 668
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    const-string v11, "Loading USIM Email length done"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 669
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    move-object v0, v11

    check-cast v0, Landroid/os/AsyncResult;

    .line 670
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_b

    .line 671
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    move-object v7, v11

    check-cast v7, [I

    .line 672
    .restart local v7       #recordSize:[I
    array-length v11, v7

    const/4 v12, 0x3

    if-ne v11, v12, :cond_a

    .line 673
    const/4 v11, 0x2

    aget v11, v7, v11

    iput v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    .line 674
    const/4 v11, 0x0

    aget v11, v7, v11

    iput v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 682
    .end local v7           #recordSize:[I
    :goto_4
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadLock:Ljava/lang/Object;

    monitor-enter v12

    .line 683
    :try_start_8
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 684
    monitor-exit v12

    goto/16 :goto_0

    :catchall_7
    move-exception v11

    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    throw v11

    .line 676
    .restart local v7       #recordSize:[I
    :cond_a
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get wrong EFEMAIL record size format"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 679
    .end local v7           #recordSize:[I
    :cond_b
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get EF record size failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 687
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    const-string v11, "Updating USIM Email records done"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 688
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 689
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_0

    .line 690
    const-string v11, "Updating USIM Email records successfully!"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 694
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    const-string v11, "Updating USIM IAP records done"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 695
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 696
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_0

    .line 697
    const-string v11, "Updating USIM IAP records successfully!"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 701
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_b
    const-string v11, "Load USIM GRP record done"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 702
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 703
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v11, [I

    move-object v10, v11

    check-cast v10, [I

    .line 705
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v11, :cond_d

    .line 706
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    move-object v4, v11

    check-cast v4, [I

    .line 708
    .local v4, grpIds:[I
    array-length v11, v4

    if-lez v11, :cond_d

    .line 709
    const-string v11, "Load USIM GRP record done result is "

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 710
    const/4 v5, 0x0

    .local v5, i:I
    :goto_5
    array-length v11, v4

    if-ge v5, v11, :cond_c

    .line 711
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v4, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 710
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 713
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Load USIM GRP record done result is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 714
    const/4 v11, 0x0

    aget v11, v10, v11

    const/4 v12, 0x1

    aget v12, v10, v12

    invoke-direct {p0, v11, v12, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 718
    .end local v4           #grpIds:[I
    .end local v5           #i:I
    :cond_d
    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:I

    .line 719
    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:I

    if-nez v11, :cond_0

    .line 720
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 721
    :try_start_9
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 722
    monitor-exit v12

    goto/16 :goto_0

    :catchall_8
    move-exception v11

    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    throw v11

    .line 726
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_c
    const-string v11, "Query UPB capability done"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 727
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 728
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_e

    .line 729
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    check-cast v11, [I

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    .line 732
    :cond_e
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 733
    :try_start_a
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 734
    monitor-exit v12

    goto/16 :goto_0

    :catchall_9
    move-exception v11

    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    throw v11

    .line 737
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_d
    const-string v11, "Load UPB GAS done"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 738
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 739
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_f

    .line 740
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/String;

    move-object v3, v11

    check-cast v3, [Ljava/lang/String;

    .line 741
    .local v3, gasList:[Ljava/lang/String;
    if-eqz v3, :cond_f

    array-length v11, v3

    if-lez v11, :cond_f

    .line 742
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 743
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_6
    array-length v11, v3

    if-ge v5, v11, :cond_f

    .line 745
    aget-object v11, v3, v5

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->decodeGas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, gas:Ljava/lang/String;
    new-instance v9, Lcom/android/internal/telephony/UsimGroup;

    add-int/lit8 v11, v5, 0x1

    invoke-direct {v9, v11, v2}, Lcom/android/internal/telephony/UsimGroup;-><init>(ILjava/lang/String;)V

    .line 747
    .local v9, uGasEntry:Lcom/android/internal/telephony/UsimGroup;
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Load UPB GAS done i is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", gas is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 743
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 752
    .end local v2           #gas:Ljava/lang/String;
    .end local v3           #gasList:[Ljava/lang/String;
    .end local v5           #i:I
    .end local v9           #uGasEntry:Lcom/android/internal/telephony/UsimGroup;
    :cond_f
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v12

    .line 753
    :try_start_b
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 754
    monitor-exit v12

    goto/16 :goto_0

    :catchall_a
    move-exception v11

    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    throw v11

    .line 757
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_e
    const-string/jumbo v11, "update UPB GAS done"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 758
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 759
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_10

    .line 760
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 772
    :goto_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "update UPB GAS done mResult is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 773
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v12

    .line 774
    :try_start_c
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 775
    monitor-exit v12

    goto/16 :goto_0

    :catchall_b
    move-exception v11

    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    throw v11

    .line 762
    :cond_10
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 764
    .local v1, e:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/CommandException$Error;->TEXT_STRING_TOO_LONG:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v11, v12, :cond_11

    .line 765
    const/16 v11, -0xa

    iput v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_7

    .line 766
    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/CommandException$Error;->SIM_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v11, v12, :cond_12

    .line 767
    const/16 v11, -0x14

    iput v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_7

    .line 769
    :cond_12
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_7

    .line 778
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #e:Lcom/android/internal/telephony/CommandException;
    :pswitch_f
    const-string/jumbo v11, "update UPB GRP done"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 779
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 780
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_13

    .line 781
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 785
    :goto_8
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 786
    :try_start_d
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 787
    monitor-exit v12

    goto/16 :goto_0

    :catchall_c
    move-exception v11

    monitor-exit v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    throw v11

    .line 783
    :cond_13
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_8

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_3
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method

.method public hasExistGroup(Ljava/lang/String;)I
    .locals 7
    .parameter "grpName"

    .prologue
    .line 1203
    const/4 v0, -0x1

    .line 1204
    .local v0, grpId:I
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsimPhoneBookManager hasExistGroup grpName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    if-nez p1, :cond_0

    move v1, v0

    .line 1221
    .end local v0           #grpId:I
    .local v1, grpId:I
    :goto_0
    return v1

    .line 1208
    .end local v1           #grpId:I
    .restart local v0       #grpId:I
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1209
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1210
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/UsimGroup;

    .line 1211
    .local v3, uGas:Lcom/android/internal/telephony/UsimGroup;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1212
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUSIMGroupById index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/UsimGroup;->getRecordIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-virtual {v3}, Lcom/android/internal/telephony/UsimGroup;->getRecordIndex()I

    move-result v0

    .line 1220
    .end local v2           #i:I
    .end local v3           #uGas:Lcom/android/internal/telephony/UsimGroup;
    :cond_1
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsimPhoneBookManager hasExistGroup grpId is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1221
    .end local v0           #grpId:I
    .restart local v1       #grpId:I
    goto :goto_0

    .line 1209
    .end local v1           #grpId:I
    .restart local v0       #grpId:I
    .restart local v2       #i:I
    .restart local v3       #uGas:Lcom/android/internal/telephony/UsimGroup;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public declared-synchronized insertUSIMGroup(Ljava/lang/String;)I
    .locals 11
    .parameter "grpName"

    .prologue
    .line 1013
    monitor-enter p0

    const/4 v3, -0x1

    .line 1014
    .local v3, index:I
    :try_start_0
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsimPhoneBookManager insertUSIMGroup grpName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1016
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1017
    const-string v0, "GSM"

    const-string v1, "UsimPhoneBookManager insertUSIMGroup fail "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :goto_0
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 1052
    :goto_1
    monitor-exit p0

    return v0

    .line 1019
    :cond_0
    const/4 v8, 0x0

    .line 1020
    .local v8, gasEntry:Lcom/android/internal/telephony/UsimGroup;
    const/4 v9, 0x0

    .line 1021
    .local v9, i:I
    const/4 v9, 0x0

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #gasEntry:Lcom/android/internal/telephony/UsimGroup;
    check-cast v8, Lcom/android/internal/telephony/UsimGroup;

    .line 1023
    .restart local v8       #gasEntry:Lcom/android/internal/telephony/UsimGroup;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/android/internal/telephony/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1024
    invoke-virtual {v8}, Lcom/android/internal/telephony/UsimGroup;->getRecordIndex()I

    move-result v3

    .line 1025
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsimPhoneBookManager insertUSIMGroup index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_1
    if-gez v3, :cond_3

    .line 1030
    const-string v0, "GSM"

    const-string v1, "UsimPhoneBookManager insertUSIMGroup fail: gas file is full."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/16 v3, -0x14

    .line 1032
    monitor-exit v10

    move v0, v3

    goto :goto_1

    .line 1021
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1034
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeATUCS2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1035
    .local v4, temp:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x11

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1037
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1042
    :goto_3
    :try_start_4
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-gez v0, :cond_4

    .line 1043
    const-string v0, "GSM"

    const-string/jumbo v1, "result is negative. insertUSIMGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    monitor-exit v10

    goto :goto_1

    .line 1051
    .end local v4           #temp:Ljava/lang/String;
    .end local v8           #gasEntry:Lcom/android/internal/telephony/UsimGroup;
    .end local v9           #i:I
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1013
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1038
    .restart local v4       #temp:Ljava/lang/String;
    .restart local v8       #gasEntry:Lcom/android/internal/telephony/UsimGroup;
    .restart local v9       #i:I
    :catch_0
    move-exception v7

    .line 1039
    .local v7, e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v0, "GSM"

    const-string v1, "Interrupted Exception in insertUSIMGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1046
    .end local v7           #e:Ljava/lang/InterruptedException;
    :cond_4
    invoke-virtual {v8, p1}, Lcom/android/internal/telephony/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0, v9, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 222
    return-void
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 168
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v2, :cond_0

    .line 170
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v4

    .line 207
    :goto_0
    return-object v2

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v4

    move-object v2, v3

    goto :goto_0

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_3

    .line 181
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V

    .line 184
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_4

    .line 185
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V

    .line 188
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_5

    .line 189
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 190
    monitor-exit v4

    move-object v2, v3

    goto :goto_0

    .line 192
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/16 v5, 0xca

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 193
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/16 v5, 0xca

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readRecordSize(I)V

    .line 194
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 196
    .local v1, numRecs:I
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 197
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLoadFail:Z

    if-eqz v2, :cond_7

    .line 198
    monitor-exit v4

    move-object v2, v3

    goto :goto_0

    .line 200
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_8

    .line 201
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 202
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readGrpIdsAndWait()V

    .line 206
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 206
    .end local v0           #i:I
    .end local v1           #numRecs:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method parseType1EmailFile(I)V
    .locals 8
    .parameter "numRecs"

    .prologue
    .line 448
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 449
    const/4 v3, 0x0

    .line 450
    .local v3, emailRec:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 452
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #emailRec:[B
    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .restart local v3       #emailRec:[B
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-byte v0, v3, v6

    .line 459
    .local v0, adnRecNum:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    .line 450
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 453
    .end local v0           #adnRecNum:I
    .end local v3           #emailRec:[B
    :catch_0
    move-exception v1

    .line 454
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "GSM"

    const-string v7, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    return-void

    .line 463
    .restart local v0       #adnRecNum:I
    .restart local v3       #emailRec:[B
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, email:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 470
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 471
    .local v5, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_3

    .line 472
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .restart local v5       #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method readRecordSize(I)V
    .locals 4
    .parameter "fileId"

    .prologue
    .line 494
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadLock:Ljava/lang/Object;

    monitor-enter v2

    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 501
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 502
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GSM"

    const-string v3, "Interrupted Exception in readRecordSize"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 501
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized removeContactFromGroup(II)Z
    .locals 13
    .parameter "adnIndex"
    .parameter "grpIndex"

    .prologue
    const/4 v9, 0x0

    .line 1153
    monitor-enter p0

    const/4 v8, 0x0

    .line 1154
    .local v8, ret:Z
    :try_start_0
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UsimPhoneBookManager removeContactFromGroup adnIndex is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to grp "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1158
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-nez v11, :cond_0

    .line 1159
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1199
    :goto_0
    monitor-exit p0

    return v9

    .line 1161
    :cond_0
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v12, p1, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/AdnRecord;

    .line 1162
    .local v7, rec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v7, :cond_4

    .line 1163
    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v4

    .line 1164
    .local v4, grpList:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1165
    const-string v11, "GSM"

    const-string v12, " the adn is not in any group. "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    monitor-exit v10

    goto :goto_0

    .line 1198
    .end local v4           #grpList:Ljava/lang/String;
    .end local v7           #rec:Lcom/android/internal/telephony/AdnRecord;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1153
    :catchall_1
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1168
    .restart local v4       #grpList:Ljava/lang/String;
    .restart local v7       #rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_1
    :try_start_4
    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1169
    .local v3, grpIds:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1170
    .local v0, bExist:Z
    const/4 v6, -0x1

    .line 1171
    .local v6, nOrder:I
    array-length v9, v3

    new-array v2, v9, [I

    .line 1172
    .local v2, grpIdArray:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v9, v3

    if-ge v5, v9, :cond_3

    .line 1173
    aget-object v9, v3, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v2, v5

    .line 1174
    aget v9, v2, v5

    if-ne p2, v9, :cond_2

    .line 1175
    const/4 v0, 0x1

    .line 1176
    move v6, v5

    .line 1177
    const-string v9, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " removeContactFromGroup the adn is in the group. i is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1181
    :cond_3
    if-eqz v0, :cond_5

    if-ltz v6, :cond_5

    .line 1182
    const/4 v9, 0x0

    aput v9, v2, v6

    .line 1183
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xa

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v9, p1, v2, v11}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1185
    :try_start_5
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1189
    :goto_2
    :try_start_6
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v9, :cond_4

    .line 1190
    const/4 v8, 0x1

    .line 1191
    add-int/lit8 v9, p1, -0x1

    invoke-direct {p0, v9, p1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 1192
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 1198
    .end local v0           #bExist:Z
    .end local v2           #grpIdArray:[I
    .end local v3           #grpIds:[Ljava/lang/String;
    .end local v4           #grpList:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #nOrder:I
    :cond_4
    :goto_3
    monitor-exit v10

    move v9, v8

    .line 1199
    goto/16 :goto_0

    .line 1186
    .restart local v0       #bExist:Z
    .restart local v2       #grpIdArray:[I
    .restart local v3       #grpIds:[Ljava/lang/String;
    .restart local v4       #grpList:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v6       #nOrder:I
    :catch_0
    move-exception v1

    .line 1187
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v9, "GSM"

    const-string v11, "Interrupted Exception in removeContactFromGroup"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1195
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_5
    const-string v9, "GSM"

    const-string v11, " removeContactFromGroup the adn is not in the group. "

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method public declared-synchronized removeUSIMGroupById(I)Z
    .locals 8
    .parameter "nGasId"

    .prologue
    .line 947
    monitor-enter p0

    const/4 v1, 0x0

    .line 948
    .local v1, ret:Z
    :try_start_0
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsimPhoneBookManager removeUSIMGroupById nGasId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 951
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le p1, v3, :cond_2

    .line 952
    :cond_0
    const-string v3, "GSM"

    const-string v5, "UsimPhoneBookManager removeUSIMGroupById fail "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_1
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 973
    :try_start_2
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsimPhoneBookManager removeUSIMGroupById result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 974
    monitor-exit p0

    return v1

    .line 954
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/UsimGroup;

    .line 955
    .local v2, uGas:Lcom/android/internal/telephony/UsimGroup;
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " removeUSIMGroupById index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/UsimGroup;->getRecordIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 957
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x11

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v3, v5, v6, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 959
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 966
    :goto_1
    :try_start_5
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v3, :cond_1

    .line 967
    const/4 v1, 0x1

    .line 968
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 969
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 972
    .end local v2           #uGas:Lcom/android/internal/telephony/UsimGroup;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 947
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 960
    .restart local v2       #uGas:Lcom/android/internal/telephony/UsimGroup;
    :catch_0
    move-exception v0

    .line 961
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_7
    const-string v3, "GSM"

    const-string v5, "Interrupted Exception in removeUSIMGroupById"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 964
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    const-string v3, "GSM"

    const-string v5, "UsimPhoneBookManager removeUSIMGroupById fail: this gas doesn\'t exist "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    .line 156
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 157
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 158
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 159
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 161
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFileRecords:Ljava/util/ArrayList;

    .line 162
    const-string v0, "GSM"

    const-string v1, "UsimPhoneBookManager reset finished. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public updateAnrByAdnIndex(Ljava/lang/String;I)V
    .locals 9
    .parameter "anr"
    .parameter "adnIndex"

    .prologue
    const/16 v4, 0xc4

    .line 1273
    add-int/lit8 v0, p2, -0x1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v8, v0, v2

    .line 1274
    .local v8, pbrRecNum:I
    add-int/lit8 v0, p2, -0x1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v6, v0, v2

    .line 1275
    .local v6, anrRecNum:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v0, :cond_1

    .line 1291
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 1277
    .local v7, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1279
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1280
    const-string v0, "GSM"

    const-string v2, "UsimPhoneBookManager updateAnrByAdnIndex: No anr tag in pbr record 0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1284
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1285
    .local v1, efid:I
    const-string v0, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimPhoneBookManager updateAnrByAdnIndex: recNum is 0  EFANR id is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    add-int/lit8 v2, v6, 0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;II)[B

    move-result-object v3

    .line 1288
    .local v3, data:[B
    if-eqz v3, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    add-int/lit8 v2, v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public updateEmailsByAdnIndex([Ljava/lang/String;I)I
    .locals 19
    .parameter "emails"
    .parameter "adnIndex"

    .prologue
    .line 1363
    add-int/lit8 v2, p2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v4, v2, v3

    .line 1364
    .local v4, pbrRecNum:I
    add-int/lit8 v2, p2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v17, v2, v3

    .line 1366
    .local v17, nIapRecNum:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 1420
    :goto_0
    return v2

    .line 1367
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    .line 1368
    .local v15, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v15, :cond_1

    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1370
    :cond_2
    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1371
    const-string v2, "GSM"

    const-string v3, "UsimPhoneBookManager updateEmailsByAdnIndex: No email tag in pbr record 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const/4 v2, 0x0

    goto :goto_0

    .line 1375
    :cond_3
    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1376
    .local v8, efid:I
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsimPhoneBookManager updateEmailsByAdnIndex: pbrrecNum is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " EFEMAIL id is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v2, :cond_7

    .line 1382
    const/4 v6, 0x0

    .line 1384
    .local v6, iapRec:[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 1385
    .local v16, iapFile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #iapRec:[B
    check-cast v6, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    .restart local v6       #iapRec:[B
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getRecNum([Ljava/lang/String;II[BI)I

    move-result v18

    .line 1393
    .local v18, recNum:I
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsimPhoneBookManager updateEmailsByAdnIndex: Email recNum is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const/4 v2, -0x2

    move/from16 v0, v18

    if-ne v2, v0, :cond_4

    .line 1395
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1386
    .end local v6           #iapRec:[B
    .end local v16           #iapFile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v18           #recNum:I
    :catch_0
    move-exception v13

    .line 1387
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 1389
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1398
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v6       #iapRec:[B
    .restart local v16       #iapFile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .restart local v18       #recNum:I
    :cond_4
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateEmailsByAdnIndex: found Email recNum is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v0, v18

    int-to-byte v3, v0

    aput-byte v3, v6, v2

    .line 1400
    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v7

    add-int/lit8 v9, v17, 0x1

    const/4 v11, 0x0

    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    move-object v10, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1404
    const/16 v2, 0xff

    move/from16 v0, v18

    if-eq v0, v2, :cond_7

    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_7

    .line 1405
    const/4 v14, 0x0

    .line 1406
    .local v14, eMailAd:Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 1408
    const/4 v2, 0x0

    :try_start_1
    aget-object v14, p1, v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1412
    :goto_1
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1409
    :catch_1
    move-exception v13

    .line 1410
    .local v13, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "GSM"

    const-string v3, "Error: updateEmailsByAdnIndex no email address, continuing"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1413
    .end local v13           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v10

    .line 1414
    .local v10, eMailRecData:[B
    if-nez v10, :cond_6

    const/4 v2, -0x2

    goto/16 :goto_0

    .line 1415
    :cond_6
    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v7

    const/4 v11, 0x0

    const/16 v2, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    move/from16 v9, v18

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1420
    .end local v6           #iapRec:[B
    .end local v10           #eMailRecData:[B
    .end local v14           #eMailAd:Ljava/lang/String;
    .end local v16           #iapFile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v18           #recNum:I
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized updateUSIMGroup(ILjava/lang/String;)I
    .locals 11
    .parameter "nGasId"
    .parameter "grpName"

    .prologue
    .line 1056
    monitor-enter p0

    const/4 v8, -0x1

    .line 1057
    .local v8, ret:I
    :try_start_0
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsimPhoneBookManager updateUSIMGroup nGasId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1060
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 1061
    :cond_0
    const-string v0, "GSM"

    const-string v1, "UsimPhoneBookManager updateUSIMGroup fail "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v0, :cond_4

    .line 1072
    move v8, p1

    .line 1073
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/UsimGroup;

    .line 1074
    .local v9, uGasEntry:Lcom/android/internal/telephony/UsimGroup;
    if-eqz v9, :cond_3

    .line 1075
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUSIMGroup index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/UsimGroup;->getRecordIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-virtual {v9, p2}, Lcom/android/internal/telephony/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 1084
    .end local v9           #uGasEntry:Lcom/android/internal/telephony/UsimGroup;
    :goto_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1085
    monitor-exit p0

    return v8

    .line 1062
    :cond_2
    if-eqz p2, :cond_1

    .line 1063
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeATUCS2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1064
    .local v4, temp:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1066
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1067
    :catch_0
    move-exception v7

    .line 1068
    .local v7, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v0, "GSM"

    const-string v1, "Interrupted Exception in updateUSIMGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1084
    .end local v4           #temp:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1056
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1078
    .restart local v9       #uGasEntry:Lcom/android/internal/telephony/UsimGroup;
    :cond_3
    :try_start_6
    const-string v0, "GSM"

    const-string/jumbo v1, "updateUSIMGroup the entry doesn\'t exist "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1082
    .end local v9           #uGasEntry:Lcom/android/internal/telephony/UsimGroup;
    :cond_4
    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public updateUsimPhonebookRecordsList(ILcom/android/internal/telephony/AdnRecord;)V
    .locals 3
    .parameter "index"
    .parameter "newAdn"

    .prologue
    .line 1468
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUsimPhonebookRecordsList update the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "th record."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :cond_0
    return-void
.end method
