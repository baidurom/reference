.class public Lcom/android/internal/telephony/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field additionalNumber:Ljava/lang/String;

.field alphaTag:Ljava/lang/String;

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field grpIds:Ljava/lang/String;

.field number:Ljava/lang/String;

.field recordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/android/internal/telephony/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 45
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 135
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 136
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 137
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 138
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->grpIds:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "anr"

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 45
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 145
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 146
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 147
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 148
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 149
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 150
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 151
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->grpIds:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "anr"
    .parameter "emails"
    .parameter "grps"

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 45
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 154
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 155
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 156
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 158
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 159
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 160
    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecord;->grpIds:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 45
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 125
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 126
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 127
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 128
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 129
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->grpIds:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 45
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 108
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 109
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 110
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AdnRecord;->parseRecord([B)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "anr"

    .prologue
    const/4 v1, 0x0

    .line 118
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 121
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 105
    return-void
.end method

.method private parseRecord([B)V
    .locals 6
    .parameter "record"

    .prologue
    const/4 v5, 0x0

    .line 337
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 340
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 342
    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 344
    .local v2, numberLength:I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 346
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 375
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .line 357
    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 361
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 363
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 364
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 365
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->grpIds:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v0

    .line 368
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 370
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 371
    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 372
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 373
    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->grpIds:Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 213
    if-ne p0, p1, :cond_0

    .line 214
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    .line 216
    :cond_0
    if-nez p0, :cond_1

    .line 217
    const-string p0, ""

    .line 219
    :cond_1
    if-nez p1, :cond_2

    .line 220
    const-string p1, ""

    .line 222
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 305
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 314
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 10
    .parameter "recordSize"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 257
    add-int/lit8 v3, p1, -0xe

    .line 260
    .local v3, footerOffset:I
    new-array v0, p1, [B

    .line 261
    .local v0, adnString:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 262
    aput-byte v8, v0, v4

    .line 261
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 265
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 266
    const-string v5, "GSM"

    const-string v6, "[buildAdnString] Empty dialing number"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v0           #adnString:[B
    :cond_1
    :goto_1
    return-object v0

    .line 268
    .restart local v0       #adnString:[B
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_3

    .line 270
    const-string v6, "GSM"

    const-string v7, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 272
    goto :goto_1

    .line 273
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 274
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] Max length of tag is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 276
    goto :goto_1

    .line 278
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 280
    .local v1, bcdNumber:[B
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    invoke-static {v1, v9, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    add-int/lit8 v5, v3, 0x0

    array-length v6, v1

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 285
    add-int/lit8 v5, v3, 0xc

    aput-byte v8, v0, v5

    .line 287
    add-int/lit8 v5, v3, 0xd

    aput-byte v8, v0, v5

    .line 290
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 291
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v2

    .line 292
    .local v2, byteTag:[B
    array-length v5, v2

    invoke-static {v2, v9, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public getAdditionalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getGrpIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->grpIds:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordIndex()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    return v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnr(Ljava/lang/String;)V
    .locals 0
    .parameter "anr"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setGrpIds(Ljava/lang/String;)V
    .locals 0
    .parameter "grps"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->grpIds:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setRecordIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 196
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 197
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->grpIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 236
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->grpIds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    return-void
.end method
