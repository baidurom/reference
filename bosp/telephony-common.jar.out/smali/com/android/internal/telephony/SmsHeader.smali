.class public Lcom/android/internal/telephony/SmsHeader;
.super Ljava/lang/Object;
.source "SmsHeader.java"

# interfaces
.implements Lcom/android/internal/telephony/IMessageWaitingExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsHeader$MiscElt;,
        Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;,
        Lcom/android/internal/telephony/SmsHeader$ConcatRef;,
        Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    }
.end annotation


# static fields
.field public static final CONCATENATED_8_BIT_REFERENCE_LENGTH:I = 0x5

.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_16_BIT:I = 0x5

.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_8_BIT:I = 0x4

.field public static final ELT_ID_CHARACTER_SIZE_WVG_OBJECT:I = 0x19

.field public static final ELT_ID_COMPRESSION_CONTROL:I = 0x16

.field public static final ELT_ID_CONCATENATED_16_BIT_REFERENCE:I = 0x8

.field public static final ELT_ID_CONCATENATED_8_BIT_REFERENCE:I = 0x0

.field public static final ELT_ID_ENHANCED_VOICE_MAIL_INFORMATION:I = 0x23

.field public static final ELT_ID_EXTENDED_OBJECT:I = 0x14

.field public static final ELT_ID_EXTENDED_OBJECT_DATA_REQUEST_CMD:I = 0x1a

.field public static final ELT_ID_HYPERLINK_FORMAT_ELEMENT:I = 0x21

.field public static final ELT_ID_LARGE_ANIMATION:I = 0xe

.field public static final ELT_ID_LARGE_PICTURE:I = 0x10

.field public static final ELT_ID_NATIONAL_LANGUAGE_LOCKING_SHIFT:I = 0x25

.field public static final ELT_ID_NATIONAL_LANGUAGE_SINGLE_SHIFT:I = 0x24

.field public static final ELT_ID_OBJECT_DISTR_INDICATOR:I = 0x17

.field public static final ELT_ID_PREDEFINED_ANIMATION:I = 0xd

.field public static final ELT_ID_PREDEFINED_SOUND:I = 0xb

.field public static final ELT_ID_REPLY_ADDRESS_ELEMENT:I = 0x22

.field public static final ELT_ID_REUSED_EXTENDED_OBJECT:I = 0x15

.field public static final ELT_ID_RFC_822_EMAIL_HEADER:I = 0x20

.field public static final ELT_ID_SMALL_ANIMATION:I = 0xf

.field public static final ELT_ID_SMALL_PICTURE:I = 0x11

.field public static final ELT_ID_SMSC_CONTROL_PARAMS:I = 0x6

.field public static final ELT_ID_SPECIAL_SMS_MESSAGE_INDICATION:I = 0x1

.field public static final ELT_ID_STANDARD_WVG_OBJECT:I = 0x18

.field public static final ELT_ID_TEXT_FORMATTING:I = 0xa

.field public static final ELT_ID_UDH_SOURCE_INDICATION:I = 0x7

.field public static final ELT_ID_USER_DEFINED_SOUND:I = 0xc

.field public static final ELT_ID_USER_PROMPT_INDICATOR:I = 0x13

.field public static final ELT_ID_VARIABLE_PICTURE:I = 0x12

.field public static final ELT_ID_WIRELESS_CTRL_MSG_PROTOCOL:I = 0x9

.field public static final NATIONAL_LANGUAGE_LOCKING_SHIFT_LENGTH:I = 0x3

.field public static final NATIONAL_LANGUAGE_SINGLE_SHIFT_LENGTH:I = 0x3

.field public static final PORT_WAP_PUSH:I = 0xb84

.field public static final PORT_WAP_WSP:I = 0x23f0

.field private static final TAG:Ljava/lang/String; = "SMS"


# instance fields
.field public concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

.field public languageShiftTable:I

.field public languageTable:I

.field public miscEltList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsHeader$MiscElt;",
            ">;"
        }
    .end annotation
.end field

.field private mwiElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/MessageWaitingIndication;",
            ">;"
        }
    .end annotation
.end field

.field public nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

.field public portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->mwiElements:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    .line 129
    return-void
.end method

.method public static fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;
    .locals 13
    .parameter "data"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 138
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 139
    .local v2, inStream:Ljava/io/ByteArrayInputStream;
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 140
    .local v8, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    if-lez v9, :cond_1

    .line 149
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 150
    .local v1, id:I
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 156
    .local v3, length:I
    sparse-switch v1, :sswitch_data_0

    .line 207
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 208
    .local v4, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iput v1, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 209
    new-array v9, v3, [B

    iput-object v9, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 210
    iget-object v9, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-virtual {v2, v9, v11, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 211
    iget-object v9, v8, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v4           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :sswitch_0
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 159
    .local v0, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 160
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 161
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 162
    iput-boolean v12, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 163
    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v9, :cond_0

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v9, :cond_0

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v10, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v9, v10, :cond_0

    .line 165
    iput-object v0, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto :goto_0

    .line 169
    .end local v0           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_1
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 170
    .restart local v0       #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v10

    or-int/2addr v9, v10

    iput v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 171
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 172
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 173
    iput-boolean v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 174
    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v9, :cond_0

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v9, :cond_0

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v10, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v9, v10, :cond_0

    .line 176
    iput-object v0, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto/16 :goto_0

    .line 180
    .end local v0           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_2
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 181
    .local v7, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    iput v9, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 182
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    iput v9, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 183
    iput-boolean v12, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 184
    iput-object v7, v8, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    goto/16 :goto_0

    .line 187
    .end local v7           #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_3
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 188
    .restart local v7       #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v10

    or-int/2addr v9, v10

    iput v9, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 189
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v10

    or-int/2addr v9, v10

    iput v9, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 190
    iput-boolean v11, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 191
    iput-object v7, v8, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    goto/16 :goto_0

    .line 194
    .end local v7           #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto/16 :goto_0

    .line 197
    :sswitch_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto/16 :goto_0

    .line 201
    :sswitch_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 202
    .local v5, octet1:I
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    .line 203
    .local v6, octet2:I
    new-instance v9, Lcom/android/internal/telephony/MessageWaitingIndication;

    invoke-direct {v9, v5, v6}, Lcom/android/internal/telephony/MessageWaitingIndication;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/SmsHeader;->addElement(Lcom/android/internal/telephony/MessageWaitingIndication;)V

    goto/16 :goto_0

    .line 214
    .end local v1           #id:I
    .end local v3           #length:I
    .end local v5           #octet1:I
    .end local v6           #octet2:I
    :cond_1
    return-object v8

    .line 156
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_6
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x8 -> :sswitch_1
        0x24 -> :sswitch_4
        0x25 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getSubmitPduHeader(I)[B
    .locals 1
    .parameter "destPort"

    .prologue
    const/4 v0, 0x0

    .line 337
    invoke-static {p0, v0, v0, v0}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeader(IIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeader(II)[B
    .locals 1
    .parameter "destPort"
    .parameter "originalPort"

    .prologue
    const/4 v0, 0x0

    .line 348
    invoke-static {p0, p1, v0, v0, v0}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeader(IIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeader(III)[B
    .locals 1
    .parameter "refNumber"
    .parameter "seqNumber"
    .parameter "msgCount"

    .prologue
    .line 359
    const/4 v0, -0x1

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeader(IIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeader(IIII)[B
    .locals 6
    .parameter "destPort"
    .parameter "refNumber"
    .parameter "seqNumber"
    .parameter "msgCount"

    .prologue
    const/4 v4, -0x1

    .line 374
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeader(IIIII)[B
    .locals 7
    .parameter "destPort"
    .parameter "originalPort"
    .parameter "refNumber"
    .parameter "seqNumber"
    .parameter "msgCount"

    .prologue
    const/4 v5, -0x1

    .line 390
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeaderWithLang(IIIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeaderWithLang(III)[B
    .locals 6
    .parameter "destPort"
    .parameter "singleShiftId"
    .parameter "lockingShiftId"

    .prologue
    const/4 v1, 0x0

    .line 401
    move v0, p0

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeaderWithLang(IIIII)[B
    .locals 6
    .parameter "refNumber"
    .parameter "seqNumber"
    .parameter "msgCount"
    .parameter "singleShiftId"
    .parameter "lockingShiftId"

    .prologue
    .line 412
    const/4 v0, -0x1

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeaderWithLang(IIIIII)[B
    .locals 4
    .parameter "destPort"
    .parameter "refNumber"
    .parameter "seqNumber"
    .parameter "msgCount"
    .parameter "singleShiftId"
    .parameter "lockingShiftId"

    .prologue
    const/4 v3, 0x0

    .line 431
    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 433
    .local v2, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-ltz p0, :cond_0

    .line 434
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 435
    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p0, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 436
    iput v3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 437
    iput-boolean v3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 439
    iput-object v1, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 442
    .end local v1           #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_0
    if-lez p3, :cond_1

    .line 443
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 444
    .local v0, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput p1, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 445
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 446
    iput p3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 454
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 456
    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 459
    .end local v0           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_1
    if-gtz p4, :cond_2

    if-lez p5, :cond_3

    .line 460
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    .line 461
    iget-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    iput p4, v3, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;->singleShiftId:I

    .line 462
    iget-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    iput p5, v3, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;->lockingShiftId:I

    .line 465
    :cond_3
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPduHeaderWithLang(IIIIIII)[B
    .locals 4
    .parameter "destPort"
    .parameter "originalPort"
    .parameter "refNumber"
    .parameter "seqNumber"
    .parameter "msgCount"
    .parameter "singleShiftId"
    .parameter "lockingShiftId"

    .prologue
    .line 484
    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 486
    .local v2, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-ltz p0, :cond_0

    .line 487
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 488
    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p0, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 489
    iput p1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 490
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 492
    iput-object v1, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 495
    .end local v1           #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_0
    if-lez p4, :cond_1

    .line 496
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 497
    .local v0, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 498
    iput p3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 499
    iput p4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 507
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 509
    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 512
    .end local v0           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_1
    if-gtz p5, :cond_2

    if-lez p6, :cond_3

    .line 513
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    .line 514
    iget-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    iput p5, v3, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;->singleShiftId:I

    .line 515
    iget-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    iput p6, v3, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;->lockingShiftId:I

    .line 518
    :cond_3
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    return-object v3
.end method

.method public static toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B
    .locals 10
    .parameter "smsHeader"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 223
    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->mwiElements:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-nez v6, :cond_0

    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-nez v6, :cond_0

    .line 233
    const/4 v6, 0x0

    .line 287
    :goto_0
    return-object v6

    .line 236
    :cond_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x8c

    invoke-direct {v4, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 238
    .local v4, outStream:Ljava/io/ByteArrayOutputStream;
    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 239
    .local v0, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    if-eqz v0, :cond_1

    .line 240
    iget-boolean v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    if-eqz v6, :cond_5

    .line 241
    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 242
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 250
    :goto_1
    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 251
    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 253
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 254
    .local v5, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v5, :cond_2

    .line 255
    iget-boolean v6, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    if-eqz v6, :cond_6

    .line 256
    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 257
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 258
    iget v6, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 259
    iget v6, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 269
    :cond_2
    :goto_2
    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v6, :cond_3

    .line 270
    const/16 v6, 0x24

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 271
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 272
    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 274
    :cond_3
    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v6, :cond_4

    .line 275
    const/16 v6, 0x25

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 276
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 277
    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 279
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->mwiElements:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MessageWaitingIndication;

    .line 280
    .local v3, mwi:Lcom/android/internal/telephony/MessageWaitingIndication;
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/MessageWaitingIndication;->toByteArray(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_3

    .line 245
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #mwi:Lcom/android/internal/telephony/MessageWaitingIndication;
    .end local v5           #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_5
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 246
    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 247
    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    ushr-int/lit8 v6, v6, 0x8

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 248
    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 261
    .restart local v5       #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_6
    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 262
    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 263
    iget v6, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    ushr-int/lit8 v6, v6, 0x8

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 264
    iget v6, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 265
    iget v6, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    ushr-int/lit8 v6, v6, 0x8

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 266
    iget v6, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 282
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 283
    .local v2, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iget v6, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 284
    iget-object v6, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v6, v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 285
    iget-object v6, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v7, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v7, v7

    invoke-virtual {v4, v6, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 287
    .end local v2           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto/16 :goto_0
.end method


# virtual methods
.method public addElement(Lcom/android/internal/telephony/MessageWaitingIndication;)V
    .locals 1
    .parameter "mwi"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->mwiElements:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->mwiElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_0
    return-void
.end method

.method public getMwiElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/MessageWaitingIndication;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->mwiElements:Ljava/util/List;

    return-object v0
.end method

.method public getVoiceMailCount()I
    .locals 6

    .prologue
    .line 533
    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->mwiElements:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->mwiElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 534
    :cond_0
    const-string v3, "SMS"

    const-string v4, "no MWI elements"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v0, -0x1

    .line 545
    :goto_0
    return v0

    .line 538
    :cond_1
    const/4 v0, 0x0

    .line 539
    .local v0, count:I
    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->mwiElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MessageWaitingIndication;

    .line 540
    .local v2, mwi:Lcom/android/internal/telephony/MessageWaitingIndication;
    invoke-virtual {v2}, Lcom/android/internal/telephony/MessageWaitingIndication;->getMwiType()I

    move-result v3

    if-nez v3, :cond_2

    .line 541
    invoke-virtual {v2}, Lcom/android/internal/telephony/MessageWaitingIndication;->getMwiCount()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 544
    .end local v2           #mwi:Lcom/android/internal/telephony/MessageWaitingIndication;
    :cond_3
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "voice mail count is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v3, "UserDataHeader "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v3, "{ ConcatRef "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v3, :cond_2

    .line 296
    const-string v3, "unset"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :goto_0
    const-string v3, ", PortAddrs "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v3, :cond_3

    .line 306
    const-string v3, "unset"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :goto_1
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v3, :cond_0

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", languageShiftTable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v3, :cond_1

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", languageTable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 320
    .local v2, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const-string v3, ", MiscElt "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{ id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v3, " }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 298
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{ refNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", msgCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", seqNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", isEightBits="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v3, " }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 308
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{ destPort="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", origPort="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", areEightBits="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v3, " }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 326
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    const-string v3, " }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
