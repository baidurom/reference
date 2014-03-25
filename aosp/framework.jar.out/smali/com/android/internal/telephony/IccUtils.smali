.class public Lcom/android/internal/telephony/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 13
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 346
    if-nez p2, :cond_0

    .line 347
    const-string v10, ""

    .line 432
    :goto_0
    return-object v10

    .line 349
    :cond_0
    const/4 v10, 0x1

    if-lt p2, v10, :cond_2

    .line 350
    aget-byte v10, p0, p1

    const/16 v11, -0x80

    if-ne v10, v11, :cond_2

    .line 351
    add-int/lit8 v10, p2, -0x1

    div-int/lit8 v9, v10, 0x2

    .line 352
    .local v9, ucslen:I
    const/4 v7, 0x0

    .line 355
    .local v7, ret:Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v10, p1, 0x1

    mul-int/lit8 v11, v9, 0x2

    const-string/jumbo v12, "utf-16be"

    invoke-direct {v8, p0, v10, v11, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #ret:Ljava/lang/String;
    .local v8, ret:Ljava/lang/String;
    move-object v7, v8

    .line 361
    .end local v8           #ret:Ljava/lang/String;
    .restart local v7       #ret:Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_2

    .line 364
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 365
    :goto_2
    if-lez v9, :cond_1

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v11, 0xffff

    if-ne v10, v11, :cond_1

    .line 366
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 356
    :catch_0
    move-exception v3

    .line 357
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    const-string v10, "IccUtils"

    const-string v11, "implausible UnsupportedEncodingException"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 368
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 373
    .end local v7           #ret:Ljava/lang/String;
    .end local v9           #ucslen:I
    :cond_2
    const/4 v4, 0x0

    .line 374
    .local v4, isucs2:Z
    const/4 v0, 0x0

    .line 375
    .local v0, base:C
    const/4 v5, 0x0

    .line 377
    .local v5, len:I
    const/4 v10, 0x3

    if-lt p2, v10, :cond_6

    aget-byte v10, p0, p1

    const/16 v11, -0x7f

    if-ne v10, v11, :cond_6

    .line 378
    add-int/lit8 v10, p1, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v5, v10, 0xff

    .line 379
    add-int/lit8 v10, p2, -0x3

    if-le v5, v10, :cond_3

    .line 380
    add-int/lit8 v5, p2, -0x3

    .line 382
    :cond_3
    add-int/lit8 v10, p1, 0x2

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x7

    int-to-char v0, v10

    .line 383
    add-int/lit8 p1, p1, 0x3

    .line 384
    const/4 v4, 0x1

    .line 396
    :cond_4
    :goto_3
    if-eqz v4, :cond_a

    .line 397
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .local v7, ret:Ljava/lang/StringBuilder;
    :goto_4
    if-lez v5, :cond_9

    .line 402
    aget-byte v10, p0, p1

    if-gez v10, :cond_5

    .line 403
    aget-byte v10, p0, p1

    and-int/lit8 v10, v10, 0x7f

    add-int/2addr v10, v0

    int-to-char v10, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    add-int/lit8 p1, p1, 0x1

    .line 405
    add-int/lit8 v5, v5, -0x1

    .line 410
    :cond_5
    const/4 v1, 0x0

    .line 411
    .local v1, count:I
    :goto_5
    if-ge v1, v5, :cond_8

    add-int v10, p1, v1

    aget-byte v10, p0, v10

    if-ltz v10, :cond_8

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 385
    .end local v1           #count:I
    .end local v7           #ret:Ljava/lang/StringBuilder;
    :cond_6
    const/4 v10, 0x4

    if-lt p2, v10, :cond_4

    aget-byte v10, p0, p1

    const/16 v11, -0x7e

    if-ne v10, v11, :cond_4

    .line 386
    add-int/lit8 v10, p1, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v5, v10, 0xff

    .line 387
    add-int/lit8 v10, p2, -0x4

    if-le v5, v10, :cond_7

    .line 388
    add-int/lit8 v5, p2, -0x4

    .line 390
    :cond_7
    add-int/lit8 v10, p1, 0x2

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v11, p1, 0x3

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    int-to-char v0, v10

    .line 392
    add-int/lit8 p1, p1, 0x4

    .line 393
    const/4 v4, 0x1

    goto :goto_3

    .line 414
    .restart local v1       #count:I
    .restart local v7       #ret:Ljava/lang/StringBuilder;
    :cond_8
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    add-int/2addr p1, v1

    .line 418
    sub-int/2addr v5, v1

    .line 419
    goto :goto_4

    .line 421
    .end local v1           #count:I
    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 424
    .end local v7           #ret:Ljava/lang/StringBuilder;
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 425
    .local v6, resource:Landroid/content/res/Resources;
    const-string v2, ""

    .line 427
    .local v2, defaultCharset:Ljava/lang/String;
    const v10, #string@gsm_alphabet_default_charset#t

    :try_start_1
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 432
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, p1, p2, v10}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 429
    :catch_1
    move-exception v10

    goto :goto_6
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_0

    .line 83
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 84
    .local v2, v:I
    if-le v2, v4, :cond_1

    .line 94
    .end local v2           #v:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 85
    .restart local v2       #v:I
    :cond_1
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 89
    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    .line 79
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_2
    if-gt v2, v4, :cond_0

    .line 91
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static bitToRGB(I)I
    .locals 1
    .parameter "bit"

    .prologue
    .line 585
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 586
    const/4 v0, -0x1

    .line 588
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x100

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    .line 482
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 498
    :goto_0
    return-object v3

    .line 484
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 486
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 489
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 491
    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 495
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 498
    .end local v0           #b:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 298
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 299
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 302
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 303
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 306
    :cond_1
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x9

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 240
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 241
    .local v0, count:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 243
    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    .line 244
    .local v3, v:I
    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    .line 245
    :cond_0
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_2

    .line 254
    .end local v3           #v:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 249
    .restart local v3       #v:I
    :cond_2
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 250
    if-le v3, v5, :cond_3

    const/4 v3, 0x0

    .line 251
    :cond_3
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v0, v0, 0x1

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getCLUT([BII)[I
    .locals 9
    .parameter "rawData"
    .parameter "offset"
    .parameter "number"

    .prologue
    .line 682
    if-nez p0, :cond_1

    .line 683
    const/4 v4, 0x0

    .line 697
    :cond_0
    return-object v4

    .line 686
    :cond_1
    new-array v4, p2, [I

    .line 687
    .local v4, result:[I
    mul-int/lit8 v7, p2, 0x3

    add-int v3, p1, v7

    .line 688
    .local v3, endIndex:I
    move v5, p1

    .line 689
    .local v5, valueIndex:I
    const/4 v1, 0x0

    .line 690
    .local v1, colorIndex:I
    const/high16 v0, -0x100

    .line 692
    .local v0, alpha:I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #colorIndex:I
    .local v2, colorIndex:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v4, v1

    .line 696
    if-ge v6, v3, :cond_0

    move v1, v2

    .end local v2           #colorIndex:I
    .restart local v1       #colorIndex:I
    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_0
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 276
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 277
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 280
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 281
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 284
    :cond_1
    return v0
.end method

.method static hexCharToInt(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 437
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 439
    :goto_0
    return v0

    .line 438
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 439
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 441
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 458
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 469
    :cond_0
    return-object v1

    .line 460
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 462
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 464
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 465
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 464
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 11
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    const/16 v10, 0x8

    .line 632
    rem-int v9, v10, p4

    if-eqz v9, :cond_0

    .line 633
    const-string v9, "IccUtils"

    const-string/jumbo v10, "not event number of color"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v2

    .line 665
    :goto_0
    return-object v2

    .line 638
    :cond_0
    const/4 v0, 0x1

    .line 639
    .local v0, mask:I
    packed-switch p4, :pswitch_data_0

    .line 654
    :goto_1
    :pswitch_0
    new-array v2, p2, [I

    .line 655
    .local v2, resultArray:[I
    const/4 v3, 0x0

    .line 656
    .local v3, resultIndex:I
    div-int v5, v10, p4

    .local v5, run:I
    move v8, p1

    .line 657
    .end local p1
    .local v8, valueIndex:I
    :goto_2
    if-ge v3, p2, :cond_2

    .line 658
    add-int/lit8 p1, v8, 0x1

    .end local v8           #valueIndex:I
    .restart local p1
    aget-byte v7, p0, v8

    .line 659
    .local v7, tempByte:B
    const/4 v6, 0x0

    .local v6, runIndex:I
    move v4, v3

    .end local v3           #resultIndex:I
    .local v4, resultIndex:I
    :goto_3
    if-ge v6, v5, :cond_1

    .line 660
    sub-int v9, v5, v6

    add-int/lit8 v1, v9, -0x1

    .line 661
    .local v1, offset:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    mul-int v9, v1, p4

    shr-int v9, v7, v9

    and-int/2addr v9, v0

    aget v9, p3, v9

    aput v9, v2, v4

    .line 659
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3           #resultIndex:I
    .restart local v4       #resultIndex:I
    goto :goto_3

    .line 641
    .end local v1           #offset:I
    .end local v2           #resultArray:[I
    .end local v4           #resultIndex:I
    .end local v5           #run:I
    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :pswitch_1
    const/4 v0, 0x1

    .line 642
    goto :goto_1

    .line 644
    :pswitch_2
    const/4 v0, 0x3

    .line 645
    goto :goto_1

    .line 647
    :pswitch_3
    const/16 v0, 0xf

    .line 648
    goto :goto_1

    .line 650
    :pswitch_4
    const/16 v0, 0xff

    goto :goto_1

    .restart local v2       #resultArray:[I
    .restart local v4       #resultIndex:I
    .restart local v5       #run:I
    .restart local v6       #runIndex:I
    .restart local v7       #tempByte:B
    :cond_1
    move v3, v4

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    move v8, p1

    .line 664
    .end local p1
    .restart local v8       #valueIndex:I
    goto :goto_2

    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :cond_2
    move p1, v8

    .line 665
    .end local v8           #valueIndex:I
    .restart local p1
    goto :goto_0

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 3
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    .line 670
    const/16 v1, 0x8

    rem-int/2addr v1, p4

    if-nez v1, :cond_0

    .line 671
    const-string v1, "IccUtils"

    const-string/jumbo v2, "not odd number of color"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    .line 678
    :goto_0
    return-object v0

    .line 676
    :cond_0
    new-array v0, p2, [I

    .line 678
    .local v0, resultArray:[I
    goto :goto_0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 511
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    if-ge p2, v4, :cond_2

    .line 512
    :cond_0
    const-string v2, ""

    .line 549
    :cond_1
    :goto_0
    return-object v2

    .line 515
    :cond_2
    aget-byte v4, p0, p1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_0

    .line 536
    const-string v2, ""

    .line 544
    .local v2, ret:Ljava/lang/String;
    :goto_1
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    goto :goto_0

    .line 519
    .end local v2           #ret:Ljava/lang/String;
    :pswitch_0
    aget-byte v4, p0, p1

    and-int/lit8 v3, v4, 0x7

    .line 520
    .local v3, unusedBits:I
    add-int/lit8 v4, p2, -0x1

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x7

    .line 521
    .local v0, countSeptets:I
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 522
    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1

    .line 526
    .end local v0           #countSeptets:I
    .end local v2           #ret:Ljava/lang/String;
    .end local v3           #unusedBits:I
    :pswitch_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, -0x1

    const-string/jumbo v6, "utf-16"

    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1

    .line 528
    .end local v2           #ret:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 529
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 530
    .restart local v2       #ret:Ljava/lang/String;
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseIccIdToString([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 108
    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_2

    .line 112
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 113
    .local v2, v:I
    if-ltz v2, :cond_0

    if-gt v2, v4, :cond_0

    .line 114
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    :goto_1
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 120
    if-ltz v2, :cond_1

    if-gt v2, v4, :cond_1

    .line 121
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    add-int/lit8 v3, v2, 0x61

    add-int/lit8 v3, v3, -0xa

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 123
    :cond_1
    add-int/lit8 v3, v2, 0x61

    add-int/lit8 v3, v3, -0xa

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 127
    .end local v2           #v:I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static parseLanguageIndicator([BII)Ljava/lang/String;
    .locals 3
    .parameter "rawData"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v0, 0x0

    .line 701
    if-nez p0, :cond_0

    .line 710
    :goto_0
    return-object v0

    .line 705
    :cond_0
    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 706
    const-string v1, "IccUtils"

    const-string v2, "length is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 710
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static parsePlmnToString([BII)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v3, 0x9

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 203
    .local v0, ret:Ljava/lang/StringBuilder;
    aget-byte v2, p0, p1

    and-int/lit8 v1, v2, 0xf

    .line 204
    .local v1, v:I
    if-le v1, v3, :cond_1

    .line 228
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 205
    :cond_1
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    aget-byte v2, p0, p1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v1, v2, 0xf

    .line 208
    if-gt v1, v3, :cond_0

    .line 209
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit8 v1, v2, 0xf

    .line 212
    if-gt v1, v3, :cond_0

    .line 213
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit8 v1, v2, 0xf

    .line 216
    if-gt v1, v3, :cond_0

    .line 217
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v1, v2, 0xf

    .line 220
    if-gt v1, v3, :cond_0

    .line 221
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v1, v2, 0xf

    .line 224
    if-gt v1, v3, :cond_0

    .line 225
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static parsePlmnToStringForEfOpl([BII)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x64

    const/16 v4, 0xd

    const/16 v3, 0x9

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 139
    .local v0, ret:Ljava/lang/StringBuilder;
    aget-byte v2, p0, p1

    and-int/lit8 v1, v2, 0xf

    .line 140
    .local v1, v:I
    if-ltz v1, :cond_1

    if-gt v1, v3, :cond_1

    .line 141
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    :goto_0
    aget-byte v2, p0, p1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v1, v2, 0xf

    .line 148
    if-ltz v1, :cond_2

    if-gt v1, v3, :cond_2

    .line 149
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :goto_1
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit8 v1, v2, 0xf

    .line 156
    if-ltz v1, :cond_3

    if-gt v1, v3, :cond_3

    .line 157
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    :goto_2
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit8 v1, v2, 0xf

    .line 164
    if-ltz v1, :cond_4

    if-gt v1, v3, :cond_4

    .line 165
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    :goto_3
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v1, v2, 0xf

    .line 172
    if-ltz v1, :cond_5

    if-gt v1, v3, :cond_5

    .line 173
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :goto_4
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v1, v2, 0xf

    .line 180
    if-ltz v1, :cond_6

    if-gt v1, v3, :cond_6

    .line 181
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    :cond_0
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 142
    :cond_1
    if-ne v1, v4, :cond_0

    .line 143
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 150
    :cond_2
    if-ne v1, v4, :cond_0

    .line 151
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 158
    :cond_3
    if-ne v1, v4, :cond_0

    .line 159
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 166
    :cond_4
    if-ne v1, v4, :cond_0

    .line 167
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 174
    :cond_5
    if-ne v1, v4, :cond_0

    .line 175
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 182
    :cond_6
    if-ne v1, v4, :cond_0

    .line 183
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "data"
    .parameter "length"

    .prologue
    .line 559
    const/4 v8, 0x0

    .line 560
    .local v8, valueIndex:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #valueIndex:I
    .local v9, valueIndex:I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 561
    .local v10, width:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 562
    .local v3, height:I
    mul-int v4, v10, v3

    .line 564
    .local v4, numOfPixels:I
    new-array v7, v4, [I

    .line 566
    .local v7, pixels:[I
    const/4 v5, 0x0

    .line 567
    .local v5, pixelIndex:I
    const/4 v0, 0x7

    .line 568
    .local v0, bitIndex:I
    const/4 v2, 0x0

    .local v2, currentByte:B
    move v6, v5

    .end local v5           #pixelIndex:I
    .local v6, pixelIndex:I
    move v9, v8

    .line 569
    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 571
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    .line 572
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v2, p0, v9

    .line 573
    const/4 v0, 0x7

    .line 575
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pixelIndex:I
    .restart local v5       #pixelIndex:I
    add-int/lit8 v1, v0, -0x1

    .end local v0           #bitIndex:I
    .local v1, bitIndex:I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bitToRGB(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1           #bitIndex:I
    .restart local v0       #bitIndex:I
    move v6, v5

    .end local v5           #pixelIndex:I
    .restart local v6       #pixelIndex:I
    move v9, v8

    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    goto :goto_0

    .line 578
    :cond_0
    if-eq v6, v4, :cond_1

    .line 579
    const-string v11, "IccUtils"

    const-string/jumbo v12, "parse end and size error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "data"
    .parameter "length"
    .parameter "transparency"

    .prologue
    .line 602
    const/4 v6, 0x0

    .line 603
    .local v6, valueIndex:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v8, v9, 0xff

    .line 604
    .local v8, width:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v4, v9, 0xff

    .line 605
    .local v4, height:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v0, v9, 0xff

    .line 606
    .local v0, bits:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v3, v9, 0xff

    .line 607
    .local v3, colorNumber:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xff

    or-int v1, v9, v10

    .line 610
    .local v1, clutOffset:I
    add-int/lit8 p1, p1, -0x6

    .line 612
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/IccUtils;->getCLUT([BII)[I

    move-result-object v2

    .line 613
    .local v2, colorIndexArray:[I
    const/4 v9, 0x1

    if-ne v9, p2, :cond_0

    .line 614
    add-int/lit8 v9, v3, -0x1

    const/4 v10, 0x0

    aput v10, v2, v9

    .line 617
    :cond_0
    const/4 v5, 0x0

    .line 618
    .local v5, resultArray:[I
    const/16 v9, 0x8

    rem-int/2addr v9, v0

    if-nez v9, :cond_1

    .line 619
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v5

    .line 626
    :goto_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 622
    :cond_1
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v5

    goto :goto_0
.end method
