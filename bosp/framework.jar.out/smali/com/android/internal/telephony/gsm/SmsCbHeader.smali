.class Lcom/android/internal/telephony/gsm/SmsCbHeader;
.super Ljava/lang/Object;
.source "SmsCbHeader.java"


# static fields
.field static final FORMAT_ETWS_PRIMARY:I = 0x3

.field static final FORMAT_GSM:I = 0x1

.field static final FORMAT_UMTS:I = 0x2

.field private static final MESSAGE_TYPE_CBS_MESSAGE:I = 0x1

.field static final PDU_HEADER_LENGTH:I = 0x6

.field private static final PDU_LENGTH_ETWS:I = 0x38

.field private static final PDU_LENGTH_GSM:I = 0x58


# instance fields
.field private final dataCodingScheme:I

.field private final format:I

.field private final geographicalScope:I

.field private final mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

.field private final mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

.field private final messageIdentifier:I

.field private final nrOfPages:I

.field private final pageIndex:I

.field private final serialNumber:I


# direct methods
.method public constructor <init>([B)V
    .locals 14
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal PDU"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    array-length v0, p1

    const/16 v2, 0x38

    if-gt v0, v2, :cond_5

    .line 99
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    .line 100
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    .line 101
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->serialNumber:I

    .line 102
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    .line 106
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    .line 107
    .local v8, emergencyUserAlert:Z
    :goto_0
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    const/4 v7, 0x1

    .line 108
    .local v7, activatePopup:Z
    :goto_1
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xfe

    shr-int/lit8 v13, v0, 0x1

    .line 111
    .local v13, warningType:I
    array-length v0, p1

    const/4 v2, 0x6

    if-le v0, v2, :cond_4

    .line 112
    const/4 v0, 0x6

    array-length v2, p1

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 116
    .local v12, warningSecurityInfo:[B
    :goto_2
    new-instance v0, Landroid/telephony/SmsCbEtwsInfo;

    invoke-direct {v0, v13, v8, v7, v12}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZ[B)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 180
    .end local v7           #activatePopup:Z
    .end local v8           #emergencyUserAlert:Z
    .end local v12           #warningSecurityInfo:[B
    .end local v13           #warningType:I
    :goto_3
    return-void

    .line 106
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 107
    .restart local v8       #emergencyUserAlert:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 114
    .restart local v7       #activatePopup:Z
    .restart local v13       #warningType:I
    :cond_4
    const/4 v12, 0x0

    .restart local v12       #warningSecurityInfo:[B
    goto :goto_2

    .line 120
    .end local v7           #activatePopup:Z
    .end local v8           #emergencyUserAlert:Z
    .end local v12           #warningSecurityInfo:[B
    .end local v13           #warningType:I
    :cond_5
    array-length v0, p1

    const/16 v2, 0x58

    if-gt v0, v2, :cond_8

    .line 122
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    .line 123
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    .line 124
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->serialNumber:I

    .line 125
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    .line 126
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    .line 129
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v11, v0, 0x4

    .line 130
    .local v11, pageIndex:I
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    and-int/lit8 v10, v0, 0xf

    .line 132
    .local v10, nrOfPages:I
    if-eqz v11, :cond_6

    if-eqz v10, :cond_6

    if-le v11, v10, :cond_7

    .line 133
    :cond_6
    const/4 v11, 0x1

    .line 134
    const/4 v10, 0x1

    .line 137
    :cond_7
    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    .line 138
    iput v10, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    .line 162
    .end local v10           #nrOfPages:I
    .end local v11           #pageIndex:I
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 163
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsEmergencyUserAlert()Z

    move-result v8

    .line 164
    .restart local v8       #emergencyUserAlert:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPopupAlert()Z

    move-result v7

    .line 165
    .restart local v7       #activatePopup:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsWarningType()I

    move-result v13

    .line 166
    .restart local v13       #warningType:I
    new-instance v0, Landroid/telephony/SmsCbEtwsInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v13, v8, v7, v2}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZ[B)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    goto :goto_3

    .line 142
    .end local v7           #activatePopup:Z
    .end local v8           #emergencyUserAlert:Z
    .end local v13           #warningType:I
    :cond_8
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    .line 144
    const/4 v0, 0x0

    aget-byte v9, p1, v0

    .line 146
    .local v9, messageType:I
    const/4 v0, 0x1

    if-eq v9, v0, :cond_9

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_9
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    .line 151
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    .line 152
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->serialNumber:I

    .line 153
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    .line 158
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    .line 159
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    goto :goto_4

    .line 168
    .end local v9           #messageType:I
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isCmasMessage()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 169
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasMessageClass()I

    move-result v1

    .line 170
    .local v1, messageClass:I
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasSeverity()I

    move-result v4

    .line 171
    .local v4, severity:I
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasUrgency()I

    move-result v5

    .line 172
    .local v5, urgency:I
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasCertainty()I

    move-result v6

    .line 173
    .local v6, certainty:I
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 174
    new-instance v0, Landroid/telephony/SmsCbCmasInfo;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    goto/16 :goto_3

    .line 177
    .end local v1           #messageClass:I
    .end local v4           #severity:I
    .end local v5           #urgency:I
    .end local v6           #certainty:I
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    goto/16 :goto_3
.end method

.method private getCmasCertainty()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    packed-switch v0, :pswitch_data_0

    .line 397
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 388
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 394
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCmasMessageClass()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    packed-switch v0, :pswitch_data_0

    .line 322
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 295
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 301
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 310
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 313
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 316
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 319
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1112
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getCmasSeverity()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    packed-switch v0, :pswitch_data_0

    .line 347
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 338
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getCmasUrgency()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    packed-switch v0, :pswitch_data_0

    .line 372
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 363
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 369
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getEtwsWarningType()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    add-int/lit16 v0, v0, -0x1100

    return v0
.end method

.method private isCmasMessage()Z
    .locals 2

    .prologue
    .line 253
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    const/16 v1, 0x1112

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    const/16 v1, 0x112f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEtwsEmergencyUserAlert()Z
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->serialNumber:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEtwsMessage()Z
    .locals 2

    .prologue
    .line 228
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    const v1, 0xfff8

    and-int/2addr v0, v1

    const/16 v1, 0x1100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEtwsPopupAlert()Z
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->serialNumber:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getCmasInfo()Landroid/telephony/SmsCbCmasInfo;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    return-object v0
.end method

.method getDataCodingScheme()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    return v0
.end method

.method getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    return-object v0
.end method

.method getGeographicalScope()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    return v0
.end method

.method getNumberOfPages()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    return v0
.end method

.method getPageIndex()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    return v0
.end method

.method getSerialNumber()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->serialNumber:I

    return v0
.end method

.method getServiceCategory()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    return v0
.end method

.method isEmergencyMessage()Z
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    const/16 v1, 0x1100

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    const/16 v1, 0x18ff

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEtwsPrimaryNotification()Z
    .locals 2

    .prologue
    .line 237
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUmtsFormat()Z
    .locals 2

    .prologue
    .line 245
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbHeader{GS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serialNumber=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->serialNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageIdentifier=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DCS=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
