.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN:I = 0x1

.field private static final DBG:Z = false

.field private static final FDN:I = 0x2

.field private static final SDN:I = 0x3

.field private static final STR_ANRS:Ljava/lang/String; = "anrs"

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_INDEX:Ljava/lang/String; = "index"

.field private static final STR_NEW_ANRS:Ljava/lang/String; = "newAnrs"

.field private static final STR_NEW_EMAILS:Ljava/lang/String; = "newEmails"

.field private static final STR_NEW_NUMBER:Ljava/lang/String; = "newNumber"

.field private static final STR_NEW_TAG:Ljava/lang/String; = "newTag"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "anrs"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 72
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 380
    const/4 v7, 0x0

    .line 388
    .local v7, success:Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 390
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 391
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 400
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 396
    :catch_0
    move-exception v1

    goto :goto_0

    .line 394
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 478
    const/4 v7, 0x0

    .line 481
    .local v7, success:Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 483
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 484
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 493
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 489
    :catch_0
    move-exception v1

    goto :goto_0

    .line 487
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 467
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    :cond_0
    const/4 v0, 0x0

    .line 470
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadFromEf(I)Landroid/database/MatrixCursor;
    .locals 7
    .parameter "efType"

    .prologue
    .line 346
    const/4 v1, 0x0

    .line 348
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .line 350
    .local v4, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_0

    .line 351
    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 359
    .end local v4           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 361
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 362
    .local v0, N:I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 364
    .local v2, cursor:Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 365
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 364
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 370
    .end local v0           #N:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v3           #i:I
    :cond_1
    const-string v5, "IccProvider"

    const-string v6, "Cannot load ADN records"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v2, 0x0

    :cond_2
    return-object v2

    .line 355
    :catch_0
    move-exception v5

    goto :goto_0

    .line 353
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 15
    .parameter "record"
    .parameter "cursor"
    .parameter "id"

    .prologue
    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 504
    const/4 v13, 0x5

    new-array v6, v13, [Ljava/lang/Object;

    .line 505
    .local v6, contact:[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, alphaTag:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    .line 509
    .local v12, number:Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v1, v6, v13

    .line 510
    const/4 v13, 0x1

    aput-object v12, v6, v13

    .line 512
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v9

    .line 513
    .local v9, emails:[Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 514
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .local v8, emailString:Ljava/lang/StringBuilder;
    move-object v5, v9

    .local v5, arr$:[Ljava/lang/String;
    array-length v11, v5

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v7, v5, v10

    .line 517
    .local v7, email:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const-string v13, ","

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 520
    .end local v7           #email:Ljava/lang/String;
    :cond_0
    const/4 v13, 0x2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v13

    .line 522
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #emailString:Ljava/lang/StringBuilder;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_1
    const/4 v13, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v6, v13

    .line 523
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v4

    .line 524
    .local v4, anrs:[Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .local v3, anrString:Ljava/lang/StringBuilder;
    move-object v5, v4

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v11, v5

    .restart local v11       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_1
    if-ge v10, v11, :cond_2

    aget-object v2, v5, v10

    .line 528
    .local v2, anr:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 531
    .end local v2           #anr:Ljava/lang/String;
    :cond_2
    const/4 v13, 0x4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v13

    .line 533
    .end local v3           #anrString:Ljava/lang/StringBuilder;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 535
    .end local v1           #alphaTag:Ljava/lang/String;
    .end local v4           #anrs:[Ljava/lang/String;
    .end local v6           #contact:[Ljava/lang/Object;
    .end local v9           #emails:[Ljava/lang/String;
    .end local v12           #number:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 538
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

    .line 539
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "inVal"

    .prologue
    const/16 v3, 0x27

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    .end local p1
    :goto_0
    return-object p1

    .line 187
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 188
    .local v0, len:I
    move-object v1, p1

    .line 190
    .local v1, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 191
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object p1, v1

    .line 194
    goto :goto_0
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"

    .prologue
    .line 409
    const/4 v7, 0x0

    .line 412
    .local v7, success:Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 414
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 415
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 424
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 420
    :catch_0
    move-exception v1

    goto :goto_0

    .line 418
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)I
    .locals 3
    .parameter "efType"
    .parameter "newAdn"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 449
    const/4 v1, -0x1

    .line 451
    .local v1, result:I
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 453
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 454
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexEx(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 463
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v1

    .line 459
    :catch_0
    move-exception v2

    goto :goto_0

    .line 457
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private updateIccRecordInEfBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)I
    .locals 3
    .parameter "efType"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"

    .prologue
    .line 429
    const/4 v1, -0x1

    .line 431
    .local v1, index:I
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 433
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 434
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchEx(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 443
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v1

    .line 439
    :catch_0
    move-exception v2

    goto :goto_0

    .line 437
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 27
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 203
    sget-object v24, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 204
    .local v12, match:I
    packed-switch v12, :pswitch_data_0

    .line 214
    new-instance v24, Ljava/lang/UnsupportedOperationException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cannot insert into URL: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 206
    :pswitch_0
    const/16 v7, 0x6f3a

    .line 219
    .local v7, efType:I
    :goto_0
    const/4 v5, -0x1

    .line 220
    .local v5, deleteIndex:I
    const/16 v21, 0x0

    .line 221
    .local v21, tag:Ljava/lang/String;
    const/16 v16, 0x0

    .line 222
    .local v16, number:Ljava/lang/String;
    const/4 v9, 0x0

    .line 223
    .local v9, emails:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 224
    .local v4, anrs:[Ljava/lang/String;
    const/16 v19, 0x0

    .line 225
    .local v19, pin2:Ljava/lang/String;
    const-string v14, ""

    .line 227
    .local v14, nameExt:Ljava/lang/String;
    const-string v24, " AND "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 228
    .local v22, tokens:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v13, v0

    .line 230
    .local v13, n:I
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_7

    .line 231
    aget-object v18, v22, v13

    .line 234
    .local v18, param:Ljava/lang/String;
    const/16 v24, 0x3d

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 235
    .local v10, index:I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v10, v0, :cond_1

    .line 236
    const-string v24, "IccProvider"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "resolve: bad whereClause parameter: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " AND "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 238
    goto :goto_1

    .line 210
    .end local v4           #anrs:[Ljava/lang/String;
    .end local v5           #deleteIndex:I
    .end local v7           #efType:I
    .end local v9           #emails:[Ljava/lang/String;
    .end local v10           #index:I
    .end local v13           #n:I
    .end local v14           #nameExt:Ljava/lang/String;
    .end local v16           #number:Ljava/lang/String;
    .end local v18           #param:Ljava/lang/String;
    .end local v19           #pin2:Ljava/lang/String;
    .end local v21           #tag:Ljava/lang/String;
    .end local v22           #tokens:[Ljava/lang/String;
    :pswitch_1
    const/16 v7, 0x6f3b

    .line 211
    .restart local v7       #efType:I
    goto :goto_0

    .line 241
    .restart local v4       #anrs:[Ljava/lang/String;
    .restart local v5       #deleteIndex:I
    .restart local v9       #emails:[Ljava/lang/String;
    .restart local v10       #index:I
    .restart local v13       #n:I
    .restart local v14       #nameExt:Ljava/lang/String;
    .restart local v16       #number:Ljava/lang/String;
    .restart local v18       #param:Ljava/lang/String;
    .restart local v19       #pin2:Ljava/lang/String;
    .restart local v21       #tag:Ljava/lang/String;
    .restart local v22       #tokens:[Ljava/lang/String;
    :cond_1
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 242
    .local v11, key:Ljava/lang/String;
    add-int/lit8 v24, v10, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 244
    .local v23, val:Ljava/lang/String;
    const-string v24, "index"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 246
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_1

    .line 247
    :catch_0
    move-exception v6

    .line 248
    .local v6, e:Ljava/lang/Exception;
    const-string v24, "IccProvider"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 250
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    const-string v24, "tag"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 251
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    .line 252
    :cond_3
    const-string v24, "number"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 254
    :cond_4
    const-string v24, "emails"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 255
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, email:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/IccProvider;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 257
    goto/16 :goto_1

    .end local v8           #email:Ljava/lang/String;
    :cond_5
    const-string v24, "anrs"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 258
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, anr:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/IccProvider;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 260
    goto/16 :goto_1

    .end local v3           #anr:Ljava/lang/String;
    :cond_6
    const-string v24, "pin2"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 261
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    .line 270
    .end local v10           #index:I
    .end local v11           #key:Ljava/lang/String;
    .end local v18           #param:Ljava/lang/String;
    .end local v23           #val:Ljava/lang/String;
    :cond_7
    new-instance v15, Lcom/android/internal/telephony/AdnRecord;

    const-string v24, ""

    const-string v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v15, v0, v1}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .local v15, newAdn:Lcom/android/internal/telephony/AdnRecord;
    const/16 v20, -0x1

    .line 273
    .local v20, result:I
    const/16 v24, 0x6f3b

    move/from16 v0, v24

    if-ne v7, v0, :cond_8

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 274
    const/16 v24, 0x0

    .line 285
    :goto_2
    return v24

    .line 276
    :cond_8
    if-ltz v5, :cond_9

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v7, v15, v5, v1}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)I

    move-result v20

    .line 285
    :goto_3
    if-ltz v20, :cond_a

    const/16 v24, 0x1

    goto :goto_2

    .line 280
    :cond_9
    new-instance v17, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v9, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 282
    .local v17, oldAdn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v7, v1, v15, v2}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)I

    move-result v20

    goto :goto_3

    .line 285
    .end local v17           #oldAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_a
    const/16 v24, 0x0

    goto :goto_2

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 103
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 110
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

    .line 107
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 19
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 118
    const/4 v13, 0x0

    .line 122
    .local v13, pin2:Ljava/lang/String;
    sget-object v16, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 123
    .local v9, match:I
    packed-switch v9, :pswitch_data_0

    .line 134
    new-instance v16, Ljava/lang/UnsupportedOperationException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Cannot insert into URL: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 125
    :pswitch_0
    const/16 v5, 0x6f3a

    .line 138
    .local v5, efType:I
    :goto_0
    const-string v16, "tag"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 139
    .local v15, tag:Ljava/lang/String;
    const-string v16, "number"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, number:Ljava/lang/String;
    const-string v16, "emails"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, email:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/IccProvider;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, emails:[Ljava/lang/String;
    const-string v16, "anrs"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, anr:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, anrs:[Ljava/lang/String;
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 147
    const/4 v14, 0x0

    .line 179
    :goto_1
    return-object v14

    .line 129
    .end local v2           #anr:Ljava/lang/String;
    .end local v3           #anrs:[Ljava/lang/String;
    .end local v5           #efType:I
    .end local v6           #email:Ljava/lang/String;
    .end local v7           #emails:[Ljava/lang/String;
    .end local v11           #number:Ljava/lang/String;
    .end local v15           #tag:Ljava/lang/String;
    :pswitch_1
    const/16 v5, 0x6f3b

    .line 130
    .restart local v5       #efType:I
    const-string v16, "pin2"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 131
    goto :goto_0

    .line 149
    .restart local v2       #anr:Ljava/lang/String;
    .restart local v3       #anrs:[Ljava/lang/String;
    .restart local v6       #email:Ljava/lang/String;
    .restart local v7       #emails:[Ljava/lang/String;
    .restart local v11       #number:Ljava/lang/String;
    .restart local v15       #tag:Ljava/lang/String;
    :cond_0
    new-instance v12, Lcom/android/internal/telephony/AdnRecord;

    const-string v16, ""

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v12, oldAdn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v10, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v10, v15, v11, v7, v3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    .local v10, newAdn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v10, v13}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)I

    move-result v8

    .line 153
    .local v8, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v16, "content://icc/"

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .local v4, buf:Ljava/lang/StringBuilder;
    packed-switch v9, :pswitch_data_1

    .line 164
    :goto_2
    if-gez v8, :cond_1

    .line 165
    const-string v16, "error/"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 179
    .local v14, resultUri:Landroid/net/Uri;
    goto :goto_1

    .line 156
    .end local v14           #resultUri:Landroid/net/Uri;
    :pswitch_2
    const-string v16, "adn/"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 160
    :pswitch_3
    const-string v16, "fdn/"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 168
    :cond_1
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 154
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 86
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 97
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

    .line 88
    :pswitch_0
    const/16 v0, 0x6f3a

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 91
    :pswitch_1
    const/16 v0, 0x6f3b

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_2
    const/16 v0, 0x6f49

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 291
    const/4 v13, 0x0

    .line 295
    .local v13, pin2:Ljava/lang/String;
    sget-object v16, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 296
    .local v9, match:I
    packed-switch v9, :pswitch_data_0

    .line 307
    new-instance v16, Ljava/lang/UnsupportedOperationException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Cannot insert into URL: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 298
    :pswitch_0
    const/16 v5, 0x6f3a

    .line 311
    .local v5, efType:I
    :goto_0
    const-string v16, "newTag"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 312
    .local v15, tag:Ljava/lang/String;
    const-string v16, "newNumber"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 313
    .local v11, number:Ljava/lang/String;
    const-string v16, "newEmails"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 314
    .local v6, email:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/IccProvider;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 315
    .local v7, emails:[Ljava/lang/String;
    const-string v16, "newAnrs"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, anr:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, anrs:[Ljava/lang/String;
    new-instance v10, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v10, v15, v11, v7, v3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 319
    .local v10, newAdn:Lcom/android/internal/telephony/AdnRecord;
    const-string v16, "tag"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 320
    const-string v16, "number"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 321
    const-string v16, "emails"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 322
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/IccProvider;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 323
    const-string v16, "anrs"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 325
    new-instance v12, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v12, v15, v11, v7, v3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 327
    .local v12, oldAdn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v14, -0x1

    .line 328
    .local v14, result:I
    const/4 v8, -0x1

    .line 330
    .local v8, index:I
    :try_start_0
    const-string v16, "index"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 334
    :goto_1
    if-ltz v8, :cond_0

    .line 335
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v8, v13}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)I

    move-result v14

    .line 340
    :goto_2
    if-ltz v14, :cond_1

    const/16 v16, 0x1

    :goto_3
    return v16

    .line 302
    .end local v2           #anr:Ljava/lang/String;
    .end local v3           #anrs:[Ljava/lang/String;
    .end local v5           #efType:I
    .end local v6           #email:Ljava/lang/String;
    .end local v7           #emails:[Ljava/lang/String;
    .end local v8           #index:I
    .end local v10           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v11           #number:Ljava/lang/String;
    .end local v12           #oldAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v14           #result:I
    .end local v15           #tag:Ljava/lang/String;
    :pswitch_1
    const/16 v5, 0x6f3b

    .line 303
    .restart local v5       #efType:I
    const-string v16, "pin2"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 304
    goto/16 :goto_0

    .line 331
    .restart local v2       #anr:Ljava/lang/String;
    .restart local v3       #anrs:[Ljava/lang/String;
    .restart local v6       #email:Ljava/lang/String;
    .restart local v7       #emails:[Ljava/lang/String;
    .restart local v8       #index:I
    .restart local v10       #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v11       #number:Ljava/lang/String;
    .restart local v12       #oldAdn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v14       #result:I
    .restart local v15       #tag:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 332
    .local v4, e:Ljava/lang/Exception;
    const-string v16, "IccProvider"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 337
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v10, v13}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)I

    move-result v14

    goto :goto_2

    .line 340
    :cond_1
    const/16 v16, 0x0

    goto :goto_3

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
