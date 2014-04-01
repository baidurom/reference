.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN:I = 0x1

.field private static final ADN1:I = 0x65

.field private static final ADN2:I = 0xc9

.field private static final DBG:Z = true

.field public static final ERROR_ICC_PROVIDER_ADN_LIST_NOT_EXIST:I = -0xb

.field public static final ERROR_ICC_PROVIDER_ANR_TOO_LONG:I = -0x6

.field public static final ERROR_ICC_PROVIDER_EMAIL_FULL:I = -0xc

.field public static final ERROR_ICC_PROVIDER_EMAIL_TOOLONG:I = -0xd

.field public static final ERROR_ICC_PROVIDER_GENERIC_FAILURE:I = -0xa

.field public static final ERROR_ICC_PROVIDER_NOT_READY:I = -0x4

.field public static final ERROR_ICC_PROVIDER_NO_ERROR:I = 0x1

.field public static final ERROR_ICC_PROVIDER_NUMBER_TOO_LONG:I = -0x1

.field public static final ERROR_ICC_PROVIDER_PASSWORD_ERROR:I = -0x5

.field public static final ERROR_ICC_PROVIDER_STORAGE_FULL:I = -0x3

.field public static final ERROR_ICC_PROVIDER_TEXT_TOO_LONG:I = -0x2

.field public static final ERROR_ICC_PROVIDER_UNKNOWN:I = 0x0

.field private static final FDN:I = 0x2

.field private static final FDN1:I = 0x66

.field private static final FDN2:I = 0xca

.field private static final SDN:I = 0x3

.field private static final SDN1:I = 0x67

.field private static final SDN2:I = 0xcb

.field private static final STR_ANR:Ljava/lang/String; = "anr"

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_INDEX:Ljava/lang/String; = "index"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final UPB:I = 0x4

.field private static final UPB1:I = 0x68

.field private static final UPB2:I = 0xcc

.field private static final UPB_GRP_COLUMN_NAMES:[Ljava/lang/String;

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "index"

    aput-object v1, v0, v5

    const-string/jumbo v1, "name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "number"

    aput-object v1, v0, v4

    const-string v1, "emails"

    aput-object v1, v0, v6

    const-string v1, "additionalNumber"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "groupIds"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 56
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "index"

    aput-object v1, v0, v5

    const-string/jumbo v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->UPB_GRP_COLUMN_NAMES:[Ljava/lang/String;

    .line 84
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 89
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "sdn"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "pbr"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn1"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn2"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn1"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn2"

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "sdn1"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "sdn2"

    const/16 v3, 0xcb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "pbr1"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "pbr2"

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"
    .parameter "simId"

    .prologue
    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEf: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 603
    const/4 v8, 0x0

    .line 611
    .local v8, result:I
    :try_start_0
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 613
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 614
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 622
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 623
    return v8

    .line 619
    :catch_0
    move-exception v7

    .line 620
    .local v7, ex:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private addUsimRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 15
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "strAnr"
    .parameter "strEmail"
    .parameter "strGas"
    .parameter "simId"

    .prologue
    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUSIMRecordToEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 633
    const/4 v14, 0x0

    .line 639
    .local v14, result:I
    const/4 v12, 0x0

    .line 640
    .local v12, emails:[Ljava/lang/String;
    if-eqz p5, :cond_0

    const-string v2, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 641
    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    .line 642
    const/4 v2, 0x0

    aput-object p5, v12, v2

    .line 646
    :cond_0
    :try_start_0
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 648
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 649
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 657
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUsimRecordToEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 658
    return v14

    .line 654
    :catch_0
    move-exception v13

    .line 655
    .local v13, ex:Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 652
    .end local v13           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"
    .parameter "simId"

    .prologue
    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEf: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 774
    const/4 v8, 0x0

    .line 777
    .local v8, result:I
    :try_start_0
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 779
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 780
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 788
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 789
    return v8

    .line 785
    :catch_0
    move-exception v7

    .line 786
    .local v7, ex:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 783
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I
    .locals 8
    .parameter "efType"
    .parameter "nIndex"
    .parameter "pin2"
    .parameter "simId"

    .prologue
    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 796
    const/4 v7, 0x0

    .line 799
    .local v7, result:I
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 801
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 802
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 809
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 810
    return v7

    .line 806
    :catch_0
    move-exception v6

    .line 807
    .local v6, ex:Ljava/lang/SecurityException;
    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 804
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteUsimRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 15
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "simId"

    .prologue
    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUsimRecordFromEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 818
    const/4 v14, 0x0

    .line 821
    .local v14, result:I
    :try_start_0
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 823
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 824
    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 832
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUsimRecordFromEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 833
    return v14

    .line 829
    :catch_0
    move-exception v13

    .line 830
    .local v13, ex:Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 827
    .end local v13           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private deleteUsimRecordFromEfByIndex(III)I
    .locals 10
    .parameter "efType"
    .parameter "nIndex"
    .parameter "simId"

    .prologue
    .line 837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUsimRecordFromEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 839
    const/4 v9, 0x0

    .line 842
    .local v9, result:I
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 844
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 845
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v7, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 853
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUsimRecordFromEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 854
    return v9

    .line 850
    :catch_0
    move-exception v8

    .line 851
    .local v8, ex:Ljava/lang/SecurityException;
    invoke-virtual {v8}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 848
    .end local v8           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getDefaultSim()I
    .locals 2

    .prologue
    .line 914
    const-string/jumbo v0, "persist.radio.default_sim"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 2
    .parameter "simId"

    .prologue
    .line 902
    if-nez p1, :cond_0

    .line 903
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 909
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return-object v0

    .line 906
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    const-string/jumbo v1, "simphonebook2"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .restart local v0       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    goto :goto_0
.end method

.method private loadFromEf(II)Landroid/database/MatrixCursor;
    .locals 8
    .parameter "efType"
    .parameter "simId"

    .prologue
    .line 565
    const/4 v1, 0x0

    .line 567
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromEf: efType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 570
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .line 572
    .local v5, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v5, :cond_0

    .line 573
    invoke-interface {v5, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 580
    .end local v5           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 582
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 583
    .local v0, N:I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 584
    .local v2, cursor:Landroid/database/MatrixCursor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adnRecords.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 585
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 586
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v6, v2, v4}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 585
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 577
    .end local v0           #N:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 578
    .local v3, ex:Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 591
    .end local v3           #ex:Ljava/lang/SecurityException;
    :cond_1
    const-string v6, "IccProvider"

    const-string v7, "Cannot load ADN records"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_2
    return-object v2

    .line 575
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 15
    .parameter "record"
    .parameter "cursor"
    .parameter "id"

    .prologue
    .line 865
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 866
    const/4 v13, 0x7

    new-array v4, v13, [Ljava/lang/Object;

    .line 867
    .local v4, contact:[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 868
    .local v1, alphaTag:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    .line 869
    .local v12, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v7

    .line 870
    .local v7, emails:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v2

    .line 871
    .local v2, anr:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v8

    .line 872
    .local v8, grpIds:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getRecordIndex()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 874
    .local v10, index:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadRecord: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 875
    const/4 v13, 0x0

    aput-object v10, v4, v13

    .line 876
    const/4 v13, 0x1

    aput-object v1, v4, v13

    .line 877
    const/4 v13, 0x2

    aput-object v12, v4, v13

    .line 879
    if-eqz v7, :cond_1

    .line 880
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 881
    .local v6, emailString:Ljava/lang/StringBuilder;
    move-object v3, v7

    .local v3, arr$:[Ljava/lang/String;
    array-length v11, v3

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v5, v3, v9

    .line 882
    .local v5, email:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Adding email:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 883
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    const-string v13, ","

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 886
    .end local v5           #email:Ljava/lang/String;
    :cond_0
    const/4 v13, 0x3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v13

    .line 888
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #emailString:Ljava/lang/StringBuilder;
    .end local v9           #i$:I
    .end local v11           #len$:I
    :cond_1
    const/4 v13, 0x4

    aput-object v2, v4, v13

    .line 889
    const/4 v13, 0x5

    aput-object v8, v4, v13

    .line 890
    const/4 v13, 0x6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v13

    .line 891
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 893
    .end local v1           #alphaTag:Ljava/lang/String;
    .end local v2           #anr:Ljava/lang/String;
    .end local v4           #contact:[Ljava/lang/Object;
    .end local v7           #emails:[Ljava/lang/String;
    .end local v8           #grpIds:Ljava/lang/String;
    .end local v10           #index:Ljava/lang/String;
    .end local v12           #number:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 896
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "inVal"

    .prologue
    const/16 v3, 0x27

    .line 337
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 338
    .local v0, len:I
    move-object v1, p1

    .line 340
    .local v1, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 341
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 344
    :cond_0
    return-object v1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"
    .parameter "simId"

    .prologue
    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIccRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 667
    const/4 v9, 0x0

    .line 670
    .local v9, result:I
    :try_start_0
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 672
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    .line 673
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 681
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIccRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 682
    return v9

    .line 678
    :catch_0
    move-exception v8

    .line 679
    .local v8, ex:Ljava/lang/SecurityException;
    invoke-virtual {v8}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 676
    .end local v8           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter "efType"
    .parameter "nIndex"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"
    .parameter "simId"

    .prologue
    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newnumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 690
    const/4 v7, 0x0

    .line 693
    .local v7, result:I
    :try_start_0
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 695
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p2

    move-object v5, p5

    .line 696
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 704
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 705
    return v7

    .line 701
    :catch_0
    move-exception v6

    .line 702
    .local v6, ex:Ljava/lang/SecurityException;
    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 699
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateUsimRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 15
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "strAnr"
    .parameter "strEmail"
    .parameter "simId"

    .prologue
    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 715
    const/4 v14, 0x0

    .line 717
    .local v14, result:I
    const/4 v12, 0x0

    .line 718
    .local v12, emails:[Ljava/lang/String;
    if-eqz p7, :cond_0

    .line 719
    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    .line 720
    const/4 v2, 0x0

    aput-object p7, v12, v2

    .line 724
    :cond_0
    :try_start_0
    move/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 726
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 727
    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 735
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 736
    return v14

    .line 732
    :catch_0
    move-exception v13

    .line 733
    .local v13, ex:Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 730
    .end local v13           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private updateUsimRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .parameter "efType"
    .parameter "nIndex"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "strAnr"
    .parameter "strEmail"
    .parameter "simId"

    .prologue
    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimRecordInEfByIndex: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 745
    const/4 v10, 0x0

    .line 747
    .local v10, result:I
    const/4 v7, 0x0

    .line 748
    .local v7, emails:[Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 749
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .line 750
    const/4 v2, 0x0

    aput-object p6, v7, v2

    .line 754
    :cond_0
    :try_start_0
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 756
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 757
    const/4 v6, 0x0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move v8, p2

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 765
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimRecordInEfByIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 766
    return v10

    .line 762
    :catch_0
    move-exception v9

    .line 763
    .local v9, ex:Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 760
    .end local v9           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 24
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 352
    const-string v2, "delete"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 354
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 355
    .local v17, match:I
    sparse-switch v17, :sswitch_data_0

    .line 395
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot insert into URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 359
    :sswitch_0
    const/16 v3, 0x6f3a

    .line 360
    .local v3, efType:I
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_1

    .line 361
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getDefaultSim()I

    move-result v7

    .line 400
    .local v7, simId:I
    :goto_0
    const-string v4, ""

    .line 401
    .local v4, tag:Ljava/lang/String;
    const-string v5, ""

    .line 402
    .local v5, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 403
    .local v6, emails:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 404
    .local v13, pin2:Ljava/lang/String;
    const/16 v19, -0x1

    .line 406
    .local v19, nIndex:I
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 407
    .local v22, tokens:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v18, v0

    .line 409
    .local v18, n:I
    :cond_0
    :goto_1
    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_c

    .line 410
    aget-object v20, v22, v18

    .line 411
    .local v20, param:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parsing \'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 413
    const/16 v2, 0x3d

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 414
    .local v15, index:I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_7

    .line 415
    const-string v2, "IccProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resolve: bad whereClause parameter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 362
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v7           #simId:I
    .end local v13           #pin2:Ljava/lang/String;
    .end local v15           #index:I
    .end local v18           #n:I
    .end local v19           #nIndex:I
    .end local v20           #param:Ljava/lang/String;
    .end local v22           #tokens:[Ljava/lang/String;
    :cond_1
    const/16 v2, 0xc9

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    .line 363
    const/4 v7, 0x1

    .restart local v7       #simId:I
    goto :goto_0

    .line 365
    .end local v7           #simId:I
    :cond_2
    const/4 v7, 0x0

    .line 367
    .restart local v7       #simId:I
    goto :goto_0

    .line 372
    .end local v3           #efType:I
    .end local v7           #simId:I
    :sswitch_1
    const/16 v3, 0x6f3b

    .line 373
    .restart local v3       #efType:I
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    .line 374
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getDefaultSim()I

    move-result v7

    .restart local v7       #simId:I
    goto :goto_0

    .line 375
    .end local v7           #simId:I
    :cond_3
    const/16 v2, 0xca

    move/from16 v0, v17

    if-ne v0, v2, :cond_4

    .line 376
    const/4 v7, 0x1

    .restart local v7       #simId:I
    goto :goto_0

    .line 378
    .end local v7           #simId:I
    :cond_4
    const/4 v7, 0x0

    .line 380
    .restart local v7       #simId:I
    goto/16 :goto_0

    .line 384
    .end local v3           #efType:I
    .end local v7           #simId:I
    :sswitch_2
    const/16 v3, 0x6f3a

    .line 385
    .restart local v3       #efType:I
    const/4 v2, 0x4

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    .line 386
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getDefaultSim()I

    move-result v7

    .restart local v7       #simId:I
    goto/16 :goto_0

    .line 387
    .end local v7           #simId:I
    :cond_5
    const/16 v2, 0xcc

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    .line 388
    const/4 v7, 0x1

    .restart local v7       #simId:I
    goto/16 :goto_0

    .line 390
    .end local v7           #simId:I
    :cond_6
    const/4 v7, 0x0

    .line 392
    .restart local v7       #simId:I
    goto/16 :goto_0

    .line 419
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v13       #pin2:Ljava/lang/String;
    .restart local v15       #index:I
    .restart local v18       #n:I
    .restart local v19       #nIndex:I
    .restart local v20       #param:Ljava/lang/String;
    .restart local v22       #tokens:[Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 420
    .local v16, key:Ljava/lang/String;
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 421
    .local v23, val:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parsing key is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " index of = is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " val is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 435
    const-string v2, "index"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 436
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    goto/16 :goto_1

    .line 437
    :cond_8
    const-string/jumbo v2, "tag"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 438
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 439
    :cond_9
    const-string/jumbo v2, "number"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 440
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 441
    :cond_a
    const-string v2, "emails"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 443
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 444
    :cond_b
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 449
    .end local v15           #index:I
    .end local v16           #key:Ljava/lang/String;
    .end local v20           #param:Ljava/lang/String;
    .end local v23           #val:Ljava/lang/String;
    :cond_c
    const/16 v21, 0x0

    .line 450
    .local v21, result:I
    if-lez v19, :cond_f

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete index is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 452
    const/4 v2, 0x4

    move/from16 v0, v17

    if-eq v2, v0, :cond_d

    const/16 v2, 0x68

    move/from16 v0, v17

    if-eq v2, v0, :cond_d

    const/16 v2, 0xcc

    move/from16 v0, v17

    if-ne v2, v0, :cond_e

    .line 453
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1, v7}, Lcom/android/internal/telephony/IccProvider;->deleteUsimRecordFromEfByIndex(III)I

    move-result v21

    :goto_2
    move/from16 v2, v21

    .line 476
    :goto_3
    return v2

    .line 455
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1, v13, v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I

    move-result v21

    goto :goto_2

    .line 463
    :cond_f
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_10

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 464
    const/4 v2, -0x5

    goto :goto_3

    .line 467
    :cond_10
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11

    .line 468
    const/4 v2, 0x0

    goto :goto_3

    .line 471
    :cond_11
    const/4 v2, 0x4

    move/from16 v0, v17

    if-eq v2, v0, :cond_12

    const/16 v2, 0x68

    move/from16 v0, v17

    if-eq v2, v0, :cond_12

    const/16 v2, 0xcc

    move/from16 v0, v17

    if-ne v2, v0, :cond_13

    :cond_12
    move-object/from16 v2, p0

    .line 472
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/IccProvider;->deleteUsimRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v21

    :goto_4
    move/from16 v2, v21

    .line 476
    goto :goto_3

    :cond_13
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move v14, v7

    .line 474
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v21

    goto :goto_4

    .line 355
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x68 -> :sswitch_2
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcc -> :sswitch_2
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 193
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :sswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0xcb -> :sswitch_0
        0xcc -> :sswitch_0
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 21
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 217
    const/4 v15, 0x0

    .line 220
    .local v15, pin2:Ljava/lang/String;
    const-string v2, "insert"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 222
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 223
    .local v18, match:I
    sparse-switch v18, :sswitch_data_0

    .line 263
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot insert into URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :sswitch_0
    const/16 v3, 0x6f3a

    .line 228
    .local v3, efType:I
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_1

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getDefaultSim()I

    move-result v9

    .line 267
    .local v9, simId:I
    :goto_0
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, tag:Ljava/lang/String;
    const-string/jumbo v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, number:Ljava/lang/String;
    const/16 v19, 0x0

    .line 270
    .local v19, result:I
    const/4 v2, 0x4

    move/from16 v0, v18

    if-eq v2, v0, :cond_0

    const/16 v2, 0x68

    move/from16 v0, v18

    if-eq v2, v0, :cond_0

    const/16 v2, 0xcc

    move/from16 v0, v18

    if-ne v2, v0, :cond_7

    .line 271
    :cond_0
    const-string v2, "gas"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 272
    .local v8, strGas:Ljava/lang/String;
    const-string v2, "anr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 273
    .local v6, strAnr:Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, strEmail:Ljava/lang/String;
    move-object/from16 v2, p0

    .line 274
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/IccProvider;->addUsimRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v19

    .line 279
    .end local v6           #strAnr:Ljava/lang/String;
    .end local v7           #strEmail:Ljava/lang/String;
    .end local v8           #strGas:Ljava/lang/String;
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .local v17, buf:Ljava/lang/StringBuilder;
    if-gtz v19, :cond_8

    .line 282
    const-string v2, "error/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 325
    .local v20, resultUri:Landroid/net/Uri;
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 333
    return-object v20

    .line 230
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v9           #simId:I
    .end local v17           #buf:Ljava/lang/StringBuilder;
    .end local v19           #result:I
    .end local v20           #resultUri:Landroid/net/Uri;
    :cond_1
    const/16 v2, 0xc9

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    .line 231
    const/4 v9, 0x1

    .restart local v9       #simId:I
    goto :goto_0

    .line 233
    .end local v9           #simId:I
    :cond_2
    const/4 v9, 0x0

    .line 235
    .restart local v9       #simId:I
    goto :goto_0

    .line 240
    .end local v3           #efType:I
    .end local v9           #simId:I
    :sswitch_1
    const/16 v3, 0x6f3b

    .line 241
    .restart local v3       #efType:I
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getDefaultSim()I

    move-result v9

    .line 248
    .restart local v9       #simId:I
    :goto_3
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 249
    goto/16 :goto_0

    .line 243
    .end local v9           #simId:I
    :cond_3
    const/16 v2, 0xca

    move/from16 v0, v18

    if-ne v0, v2, :cond_4

    .line 244
    const/4 v9, 0x1

    .restart local v9       #simId:I
    goto :goto_3

    .line 246
    .end local v9           #simId:I
    :cond_4
    const/4 v9, 0x0

    .restart local v9       #simId:I
    goto :goto_3

    .line 253
    .end local v3           #efType:I
    .end local v9           #simId:I
    :sswitch_2
    const/16 v3, 0x6f3a

    .line 254
    .restart local v3       #efType:I
    const/4 v2, 0x4

    move/from16 v0, v18

    if-ne v0, v2, :cond_5

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getDefaultSim()I

    move-result v9

    .restart local v9       #simId:I
    goto/16 :goto_0

    .line 256
    .end local v9           #simId:I
    :cond_5
    const/16 v2, 0xcc

    move/from16 v0, v18

    if-ne v0, v2, :cond_6

    .line 257
    const/4 v9, 0x1

    .restart local v9       #simId:I
    goto/16 :goto_0

    .line 259
    .end local v9           #simId:I
    :cond_6
    const/4 v9, 0x0

    .line 261
    .restart local v9       #simId:I
    goto/16 :goto_0

    .line 277
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v19       #result:I
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move-object v12, v4

    move-object v13, v5

    move/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v19

    goto :goto_1

    .line 287
    .restart local v17       #buf:Ljava/lang/StringBuilder;
    :cond_8
    sparse-switch v18, :sswitch_data_1

    .line 320
    :goto_4
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 289
    :sswitch_3
    const-string v2, "adn/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 292
    :sswitch_4
    const-string v2, "adn1/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 295
    :sswitch_5
    const-string v2, "adn2/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 299
    :sswitch_6
    const-string v2, "fdn/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 302
    :sswitch_7
    const-string v2, "fdn1/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 305
    :sswitch_8
    const-string v2, "fdn2/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 308
    :sswitch_9
    const-string/jumbo v2, "pbr/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 311
    :sswitch_a
    const-string/jumbo v2, "pbr1/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 314
    :sswitch_b
    const-string/jumbo v2, "pbr2/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 223
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x68 -> :sswitch_2
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcc -> :sswitch_2
    .end sparse-switch

    .line 287
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_6
        0x4 -> :sswitch_9
        0x65 -> :sswitch_4
        0x66 -> :sswitch_7
        0x68 -> :sswitch_a
        0xc9 -> :sswitch_5
        0xca -> :sswitch_8
        0xcc -> :sswitch_b
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 132
    sget-object v4, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 133
    .local v1, match:I
    sparse-switch v1, :sswitch_data_0

    .line 185
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :sswitch_0
    const/16 v0, 0x6f3a

    .line 138
    .local v0, efType:I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getDefaultSim()I

    move-result v3

    .line 187
    .local v3, simId:I
    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v2

    .line 188
    .local v2, results:Landroid/database/Cursor;
    return-object v2

    .line 140
    .end local v2           #results:Landroid/database/Cursor;
    .end local v3           #simId:I
    :cond_0
    const/16 v4, 0xc9

    if-ne v1, v4, :cond_1

    .line 141
    const/4 v3, 0x1

    .restart local v3       #simId:I
    goto :goto_0

    .line 143
    .end local v3           #simId:I
    :cond_1
    const/4 v3, 0x0

    .line 145
    .restart local v3       #simId:I
    goto :goto_0

    .line 150
    .end local v0           #efType:I
    .end local v3           #simId:I
    :sswitch_1
    const/16 v0, 0x6f3b

    .line 151
    .restart local v0       #efType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 152
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getDefaultSim()I

    move-result v3

    .restart local v3       #simId:I
    goto :goto_0

    .line 153
    .end local v3           #simId:I
    :cond_2
    const/16 v4, 0xca

    if-ne v1, v4, :cond_3

    .line 154
    const/4 v3, 0x1

    .restart local v3       #simId:I
    goto :goto_0

    .line 156
    .end local v3           #simId:I
    :cond_3
    const/4 v3, 0x0

    .line 158
    .restart local v3       #simId:I
    goto :goto_0

    .line 163
    .end local v0           #efType:I
    .end local v3           #simId:I
    :sswitch_2
    const/16 v0, 0x6f49

    .line 164
    .restart local v0       #efType:I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    .line 165
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getDefaultSim()I

    move-result v3

    .restart local v3       #simId:I
    goto :goto_0

    .line 166
    .end local v3           #simId:I
    :cond_4
    const/16 v4, 0xcb

    if-ne v1, v4, :cond_5

    .line 167
    const/4 v3, 0x1

    .restart local v3       #simId:I
    goto :goto_0

    .line 169
    .end local v3           #simId:I
    :cond_5
    const/4 v3, 0x0

    .line 171
    .restart local v3       #simId:I
    goto :goto_0

    .line 175
    .end local v0           #efType:I
    .end local v3           #simId:I
    :sswitch_3
    const/16 v0, 0x4f30

    .line 176
    .restart local v0       #efType:I
    const/4 v4, 0x4

    if-ne v1, v4, :cond_6

    .line 177
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getDefaultSim()I

    move-result v3

    .restart local v3       #simId:I
    goto :goto_0

    .line 178
    .end local v3           #simId:I
    :cond_6
    const/16 v4, 0xcc

    if-ne v1, v4, :cond_7

    .line 179
    const/4 v3, 0x1

    .restart local v3       #simId:I
    goto :goto_0

    .line 181
    .end local v3           #simId:I
    :cond_7
    const/4 v3, 0x0

    .line 183
    .restart local v3       #simId:I
    goto :goto_0

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcb -> :sswitch_2
        0xcc -> :sswitch_3
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 23
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 483
    const/16 v18, 0x0

    .line 486
    .local v18, pin2:Ljava/lang/String;
    const-string/jumbo v1, "update"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 488
    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 489
    .local v21, match:I
    sparse-switch v21, :sswitch_data_0

    .line 529
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot insert into URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 493
    :sswitch_0
    const/16 v2, 0x6f3a

    .line 494
    .local v2, efType:I
    const/4 v1, 0x1

    move/from16 v0, v21

    if-ne v0, v1, :cond_2

    .line 495
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getDefaultSim()I

    move-result v8

    .line 533
    .local v8, simId:I
    :goto_0
    const-string/jumbo v1, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 534
    .local v11, tag:Ljava/lang/String;
    const-string/jumbo v1, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 536
    .local v12, number:Ljava/lang/String;
    const-string/jumbo v1, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 537
    .local v4, newTag:Ljava/lang/String;
    const-string/jumbo v1, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 538
    .local v5, newNumber:Ljava/lang/String;
    const-string v1, "index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    .line 539
    .local v20, idInt:Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 540
    .local v3, index:I
    if-eqz v20, :cond_0

    .line 541
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 543
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update: index="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 544
    const/16 v22, 0x0

    .line 545
    .local v22, result:I
    const/4 v1, 0x4

    move/from16 v0, v21

    if-eq v1, v0, :cond_1

    const/16 v1, 0x68

    move/from16 v0, v21

    if-eq v1, v0, :cond_1

    const/16 v1, 0xcc

    move/from16 v0, v21

    if-ne v1, v0, :cond_9

    .line 546
    :cond_1
    const-string/jumbo v1, "newAnr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 547
    .local v6, strAnr:Ljava/lang/String;
    const-string/jumbo v1, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 549
    .local v7, strEmail:Ljava/lang/String;
    if-lez v3, :cond_8

    move-object/from16 v1, p0

    .line 550
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/IccProvider;->updateUsimRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v22

    .line 561
    .end local v6           #strAnr:Ljava/lang/String;
    .end local v7           #strEmail:Ljava/lang/String;
    :goto_1
    return v22

    .line 496
    .end local v3           #index:I
    .end local v4           #newTag:Ljava/lang/String;
    .end local v5           #newNumber:Ljava/lang/String;
    .end local v8           #simId:I
    .end local v11           #tag:Ljava/lang/String;
    .end local v12           #number:Ljava/lang/String;
    .end local v20           #idInt:Ljava/lang/Integer;
    .end local v22           #result:I
    :cond_2
    const/16 v1, 0xc9

    move/from16 v0, v21

    if-ne v0, v1, :cond_3

    .line 497
    const/4 v8, 0x1

    .restart local v8       #simId:I
    goto/16 :goto_0

    .line 499
    .end local v8           #simId:I
    :cond_3
    const/4 v8, 0x0

    .line 501
    .restart local v8       #simId:I
    goto/16 :goto_0

    .line 506
    .end local v2           #efType:I
    .end local v8           #simId:I
    :sswitch_1
    const/16 v2, 0x6f3b

    .line 507
    .restart local v2       #efType:I
    const/4 v1, 0x2

    move/from16 v0, v21

    if-ne v0, v1, :cond_4

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getDefaultSim()I

    move-result v8

    .line 514
    .restart local v8       #simId:I
    :goto_2
    const-string/jumbo v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 515
    goto/16 :goto_0

    .line 509
    .end local v8           #simId:I
    :cond_4
    const/16 v1, 0xca

    move/from16 v0, v21

    if-ne v0, v1, :cond_5

    .line 510
    const/4 v8, 0x1

    .restart local v8       #simId:I
    goto :goto_2

    .line 512
    .end local v8           #simId:I
    :cond_5
    const/4 v8, 0x0

    .restart local v8       #simId:I
    goto :goto_2

    .line 519
    .end local v2           #efType:I
    .end local v8           #simId:I
    :sswitch_2
    const/16 v2, 0x6f3a

    .line 520
    .restart local v2       #efType:I
    const/4 v1, 0x4

    move/from16 v0, v21

    if-ne v0, v1, :cond_6

    .line 521
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getDefaultSim()I

    move-result v8

    .restart local v8       #simId:I
    goto/16 :goto_0

    .line 522
    .end local v8           #simId:I
    :cond_6
    const/16 v1, 0xcc

    move/from16 v0, v21

    if-ne v0, v1, :cond_7

    .line 523
    const/4 v8, 0x1

    .restart local v8       #simId:I
    goto/16 :goto_0

    .line 525
    .end local v8           #simId:I
    :cond_7
    const/4 v8, 0x0

    .line 527
    .restart local v8       #simId:I
    goto/16 :goto_0

    .restart local v3       #index:I
    .restart local v4       #newTag:Ljava/lang/String;
    .restart local v5       #newNumber:Ljava/lang/String;
    .restart local v6       #strAnr:Ljava/lang/String;
    .restart local v7       #strEmail:Ljava/lang/String;
    .restart local v11       #tag:Ljava/lang/String;
    .restart local v12       #number:Ljava/lang/String;
    .restart local v20       #idInt:Ljava/lang/Integer;
    .restart local v22       #result:I
    :cond_8
    move-object/from16 v9, p0

    move v10, v2

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v8

    .line 552
    invoke-direct/range {v9 .. v17}, Lcom/android/internal/telephony/IccProvider;->updateUsimRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v22

    goto :goto_1

    .line 555
    .end local v6           #strAnr:Ljava/lang/String;
    .end local v7           #strEmail:Ljava/lang/String;
    :cond_9
    if-lez v3, :cond_a

    move-object/from16 v13, p0

    move v14, v2

    move v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v19, v8

    .line 556
    invoke-direct/range {v13 .. v19}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v22

    goto :goto_1

    :cond_a
    move-object/from16 v9, p0

    move v10, v2

    move-object v13, v4

    move-object v14, v5

    move-object/from16 v15, v18

    move/from16 v16, v8

    .line 558
    invoke-direct/range {v9 .. v16}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v22

    goto :goto_1

    .line 489
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x68 -> :sswitch_2
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcc -> :sswitch_2
    .end sparse-switch
.end method
