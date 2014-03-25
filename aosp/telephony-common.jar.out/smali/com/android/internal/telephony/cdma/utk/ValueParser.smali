.class abstract Lcom/android/internal/telephony/cdma/utk/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static retrieveAdress(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 298
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 299
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 300
    .local v1, length:I
    const/4 v4, 0x2

    if-lt v1, v4, :cond_0

    .line 303
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v1, -0x1

    :try_start_0
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 309
    :goto_0
    return-object v4

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4

    .line 309
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 276
    if-eqz p0, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 278
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 279
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 280
    .local v1, length:I
    if-eqz v1, :cond_0

    .line 282
    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->utkStringFieldToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 291
    .end local v1           #length:I
    .end local v2           #rawValue:[B
    .end local v3           #valueIndex:I
    :goto_0
    return-object v4

    .line 284
    .restart local v1       #length:I
    .restart local v2       #rawValue:[B
    .restart local v3       #valueIndex:I
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4

    .line 288
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const-string v4, "Defualt Message"

    goto :goto_0

    .line 291
    .end local v1           #length:I
    .end local v2           #rawValue:[B
    .end local v3           #valueIndex:I
    :cond_1
    const-string v4, "Defualt Message"

    goto :goto_0
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/CommandDetails;-><init>()V

    .line 41
    .local v0, cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 42
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 44
    .local v3, valueIndex:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->isComprehensionRequired()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compRequired:Z

    .line 45
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandNumber:I

    .line 46
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    .line 47
    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-object v0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;-><init>()V

    .line 66
    .local v0, devIds:Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 67
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 69
    .local v3, valueIndex:I
    :try_start_0
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;->sourceId:I

    .line 70
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;->destinationId:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-object v0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Duration;
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, timeInterval:I
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;

    .line 89
    .local v3, timeUnit:Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 90
    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 93
    .local v4, valueIndex:I
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;

    move-result-object v5

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-object v3, v5, v6

    .line 94
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v5, 0xff

    .line 98
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/Duration;

    invoke-direct {v5, v2, v3}, Lcom/android/internal/telephony/cdma/utk/Duration;-><init>(ILcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;)V

    return-object v5

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v5
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/IconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/utk/IconId;-><init>()V

    .line 163
    .local v1, id:Lcom/android/internal/telephony/cdma/utk/IconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 164
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 166
    .local v3, valueIndex:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #valueIndex:I
    .local v4, valueIndex:I
    :try_start_0
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    .line 167
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-object v1

    .line 166
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v5
.end method

.method static retrieveItem(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Item;
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 111
    .local v2, item:Lcom/android/internal/telephony/cdma/utk/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 112
    .local v4, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 113
    .local v7, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v3

    .line 115
    .local v3, length:I
    if-eqz v3, :cond_0

    .line 116
    add-int/lit8 v6, v3, -0x1

    .line 119
    .local v6, textLen:I
    :try_start_0
    aget-byte v8, v4, v7

    and-int/lit16 v1, v8, 0xff

    .line 120
    .local v1, id:I
    add-int/lit8 v8, v7, 0x1

    invoke-static {v4, v8, v6}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, text:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/Item;

    .end local v2           #item:Lcom/android/internal/telephony/cdma/utk/Item;
    invoke-direct {v2, v1, v5}, Lcom/android/internal/telephony/cdma/utk/Item;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1           #id:I
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #textLen:I
    .restart local v2       #item:Lcom/android/internal/telephony/cdma/utk/Item;
    :cond_0
    return-object v2

    .line 123
    .end local v2           #item:Lcom/android/internal/telephony/cdma/utk/Item;
    .restart local v6       #textLen:I
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v8
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)I
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 141
    .local v1, id:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 142
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 145
    .local v3, valueIndex:I
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v4, 0xff

    .line 150
    return v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/ItemsIconId;
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 185
    const-string v8, "ValueParser"

    const-string v9, "retrieveItemsIconId:"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;-><init>()V

    .line 188
    .local v1, id:Lcom/android/internal/telephony/cdma/utk/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 189
    .local v5, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 190
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 191
    .local v4, numOfItems:I
    new-array v8, v4, [I

    iput-object v8, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    .line 195
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :try_start_0
    aget-byte v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->selfExplanatory:Z

    .line 197
    const/4 v2, 0x0

    .local v2, index:I
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 198
    iget-object v8, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    :try_start_1
    aget-byte v9, v5, v7

    aput v9, v8, v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    move v7, v6

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto :goto_1

    .line 195
    .end local v3           #index:I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    move v6, v7

    .line 201
    .end local v7           #valueIndex:I
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v6       #valueIndex:I
    :goto_2
    new-instance v8, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v8

    .line 203
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v6           #valueIndex:I
    .restart local v3       #index:I
    .restart local v7       #valueIndex:I
    :cond_1
    return-object v1

    .line 200
    .end local v3           #index:I
    .end local v7           #valueIndex:I
    .restart local v2       #index:I
    .restart local v6       #valueIndex:I
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static retrieveSmsPdu(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)[B
    .locals 5
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v1

    new-array v0, v1, [B

    .line 364
    .local v0, smsPdu:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    return-object v0
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/util/List;
    .locals 24
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v18, lst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/utk/TextAttribute;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v19

    .line 219
    .local v19, rawValue:[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v21

    .line 220
    .local v21, valueIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v17

    .line 222
    .local v17, length:I
    if-eqz v17, :cond_5

    .line 224
    div-int/lit8 v16, v17, 0x4

    .line 227
    .local v16, itemCount:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 228
    :try_start_0
    aget-byte v22, v19, v21

    move/from16 v0, v22

    and-int/lit16 v2, v0, 0xff

    .line 229
    .local v2, start:I
    add-int/lit8 v22, v21, 0x1

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v3, v0, 0xff

    .line 230
    .local v3, textLength:I
    add-int/lit8 v22, v21, 0x2

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v14, v0, 0xff

    .line 231
    .local v14, format:I
    add-int/lit8 v22, v21, 0x3

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v12, v0, 0xff

    .line 233
    .local v12, colorValue:I
    and-int/lit8 v11, v14, 0x3

    .line 234
    .local v11, alignValue:I
    invoke-static {v11}, Lcom/android/internal/telephony/cdma/utk/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    move-result-object v4

    .line 236
    .local v4, align:Lcom/android/internal/telephony/cdma/utk/TextAlignment;
    shr-int/lit8 v22, v14, 0x2

    and-int/lit8 v20, v22, 0x3

    .line 237
    .local v20, sizeValue:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/utk/FontSize;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/FontSize;

    move-result-object v5

    .line 238
    .local v5, size:Lcom/android/internal/telephony/cdma/utk/FontSize;
    if-nez v5, :cond_0

    .line 240
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/FontSize;->NORMAL:Lcom/android/internal/telephony/cdma/utk/FontSize;

    .line 243
    :cond_0
    and-int/lit8 v22, v14, 0x10

    if-eqz v22, :cond_1

    const/4 v6, 0x1

    .line 244
    .local v6, bold:Z
    :goto_1
    and-int/lit8 v22, v14, 0x20

    if-eqz v22, :cond_2

    const/4 v7, 0x1

    .line 245
    .local v7, italic:Z
    :goto_2
    and-int/lit8 v22, v14, 0x40

    if-eqz v22, :cond_3

    const/4 v8, 0x1

    .line 246
    .local v8, underlined:Z
    :goto_3
    and-int/lit16 v0, v14, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const/4 v9, 0x1

    .line 248
    .local v9, strikeThrough:Z
    :goto_4
    invoke-static {v12}, Lcom/android/internal/telephony/cdma/utk/TextColor;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/TextColor;

    move-result-object v10

    .line 250
    .local v10, color:Lcom/android/internal/telephony/cdma/utk/TextColor;
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/TextAttribute;

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/cdma/utk/TextAttribute;-><init>(IILcom/android/internal/telephony/cdma/utk/TextAlignment;Lcom/android/internal/telephony/cdma/utk/FontSize;ZZZZLcom/android/internal/telephony/cdma/utk/TextColor;)V

    .line 253
    .local v1, attr:Lcom/android/internal/telephony/cdma/utk/TextAttribute;
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v21, v21, 0x4

    goto :goto_0

    .line 243
    .end local v1           #attr:Lcom/android/internal/telephony/cdma/utk/TextAttribute;
    .end local v6           #bold:Z
    .end local v7           #italic:Z
    .end local v8           #underlined:Z
    .end local v9           #strikeThrough:Z
    .end local v10           #color:Lcom/android/internal/telephony/cdma/utk/TextColor;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 244
    .restart local v6       #bold:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 245
    .restart local v7       #italic:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 246
    .restart local v8       #underlined:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 258
    .end local v2           #start:I
    .end local v3           #textLength:I
    .end local v4           #align:Lcom/android/internal/telephony/cdma/utk/TextAlignment;
    .end local v5           #size:Lcom/android/internal/telephony/cdma/utk/FontSize;
    .end local v6           #bold:Z
    .end local v7           #italic:Z
    .end local v8           #underlined:Z
    .end local v11           #alignValue:I
    .end local v12           #colorValue:I
    .end local v14           #format:I
    .end local v20           #sizeValue:I
    :catch_0
    move-exception v13

    .line 259
    .local v13, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v22, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v23, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v22

    .line 262
    .end local v13           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v15           #i:I
    .end local v16           #itemCount:I
    :cond_5
    const/16 v18, 0x0

    .end local v18           #lst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/utk/TextAttribute;>;"
    :cond_6
    return-object v18
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;
    .locals 9
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 322
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 323
    .local v6, valueIndex:I
    const/4 v0, 0x0

    .line 324
    .local v0, codingScheme:B
    const/4 v3, 0x0

    .line 325
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v5

    .line 328
    .local v5, textLen:I
    if-nez v5, :cond_0

    move-object v4, v3

    .line 351
    .end local v3           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 332
    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 336
    :try_start_0
    aget-byte v7, v2, v6

    and-int/lit8 v7, v7, 0xc

    int-to-byte v0, v7

    .line 338
    if-nez v0, :cond_1

    .line 339
    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v8, v5, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v2, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 351
    .end local v3           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    goto :goto_0

    .line 341
    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    .line 342
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v7, v5}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->utkStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 345
    :cond_2
    const/16 v7, 0x8

    if-ne v0, v7, :cond_3

    .line 346
    new-instance v3, Ljava/lang/String;

    .end local v3           #text:Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    const-string v8, "UTF-16"

    invoke-direct {v3, v2, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v3       #text:Ljava/lang/String;
    goto :goto_1

    .line 348
    :cond_3
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 352
    .end local v3           #text:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 353
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7

    .line 354
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 356
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7
.end method

.method private static utk8BitUnpackedToString([BII)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 451
    .local v2, ret:Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, i:I
    :goto_0
    add-int v3, p1, p2

    if-ge v1, v3, :cond_3

    .line 453
    aget-byte v3, p0, v1

    and-int/lit16 v0, v3, 0xff

    .line 455
    .local v0, c:I
    if-nez v0, :cond_1

    .line 456
    const/16 v0, 0x40

    .line 462
    :cond_0
    :goto_1
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 458
    const/16 v0, 0x24

    goto :goto_1

    .line 459
    :cond_2
    const/16 v3, 0x11

    if-ne v0, v3, :cond_0

    .line 460
    const/16 v0, 0x5f

    goto :goto_1

    .line 465
    .end local v0           #c:I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static utkStringFieldToString([BII)Ljava/lang/String;
    .locals 10
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 369
    const/4 v7, 0x1

    if-lt p2, v7, :cond_1

    .line 370
    aget-byte v7, p0, p1

    const/16 v8, -0x80

    if-ne v7, v8, :cond_1

    .line 371
    add-int/lit8 v7, p2, -0x1

    div-int/lit8 v6, v7, 0x2

    .line 372
    .local v6, ucslen:I
    const/4 v4, 0x0

    .line 375
    .local v4, ret:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v7, p1, 0x1

    mul-int/lit8 v8, v6, 0x2

    const-string v9, "utf-16be"

    invoke-direct {v5, p0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #ret:Ljava/lang/String;
    .local v5, ret:Ljava/lang/String;
    move-object v4, v5

    .line 380
    .end local v5           #ret:Ljava/lang/String;
    .restart local v4       #ret:Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    .line 383
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 384
    :goto_1
    if-lez v6, :cond_0

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v8, 0xffff

    if-ne v7, v8, :cond_0

    .line 385
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 387
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 443
    .end local v4           #ret:Ljava/lang/String;
    .end local v6           #ucslen:I
    :goto_2
    return-object v7

    .line 392
    :cond_1
    const/4 v2, 0x0

    .line 393
    .local v2, isucs2:Z
    const/4 v0, 0x0

    .line 394
    .local v0, base:C
    const/4 v3, 0x0

    .line 396
    .local v3, len:I
    const/4 v7, 0x3

    if-lt p2, v7, :cond_5

    aget-byte v7, p0, p1

    const/16 v8, -0x7f

    if-ne v7, v8, :cond_5

    .line 397
    add-int/lit8 v7, p1, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v3, v7, 0xff

    .line 398
    add-int/lit8 v7, p2, -0x3

    if-le v3, v7, :cond_2

    .line 399
    add-int/lit8 v3, p2, -0x3

    .line 401
    :cond_2
    add-int/lit8 v7, p1, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x7

    int-to-char v0, v7

    .line 402
    add-int/lit8 p1, p1, 0x3

    .line 403
    const/4 v2, 0x1

    .line 415
    :cond_3
    :goto_3
    if-eqz v2, :cond_9

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v4, ret:Ljava/lang/StringBuilder;
    :goto_4
    if-lez v3, :cond_8

    .line 421
    aget-byte v7, p0, p1

    if-gez v7, :cond_4

    .line 422
    aget-byte v7, p0, p1

    and-int/lit8 v7, v7, 0x7f

    add-int/2addr v7, v0

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    add-int/lit8 p1, p1, 0x1

    .line 424
    add-int/lit8 v3, v3, -0x1

    .line 429
    :cond_4
    const/4 v1, 0x0

    .line 430
    .local v1, count:I
    :goto_5
    if-ge v1, v3, :cond_7

    add-int v7, p1, v1

    aget-byte v7, p0, v7

    if-ltz v7, :cond_7

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 404
    .end local v1           #count:I
    .end local v4           #ret:Ljava/lang/StringBuilder;
    :cond_5
    const/4 v7, 0x4

    if-lt p2, v7, :cond_3

    aget-byte v7, p0, p1

    const/16 v8, -0x7e

    if-ne v7, v8, :cond_3

    .line 405
    add-int/lit8 v7, p1, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v3, v7, 0xff

    .line 406
    add-int/lit8 v7, p2, -0x4

    if-le v3, v7, :cond_6

    .line 407
    add-int/lit8 v3, p2, -0x4

    .line 409
    :cond_6
    add-int/lit8 v7, p1, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, p1, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-char v0, v7

    .line 411
    add-int/lit8 p1, p1, 0x4

    .line 412
    const/4 v2, 0x1

    goto :goto_3

    .line 433
    .restart local v1       #count:I
    .restart local v4       #ret:Ljava/lang/StringBuilder;
    :cond_7
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    add-int/2addr p1, v1

    .line 437
    sub-int/2addr v3, v1

    .line 438
    goto :goto_4

    .line 440
    .end local v1           #count:I
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 443
    .end local v4           #ret:Ljava/lang/StringBuilder;
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->utk8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 376
    .end local v0           #base:C
    .end local v2           #isucs2:Z
    .end local v3           #len:I
    .local v4, ret:Ljava/lang/String;
    .restart local v6       #ucslen:I
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method
