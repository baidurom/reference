.class public Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;
.super Ljava/lang/Object;
.source "RuimSmsInterfaces.java"


# static fields
.field public static final SMS_CDMA_RECORD_LENGTH:I = 0xff

.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "RuimSmsInterfaces 1.0"

    sput-object v0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method

.method public static convertDtmfToAscii(B)B
    .locals 1
    .parameter "dtmfDigit"

    .prologue
    .line 31
    packed-switch p0, :pswitch_data_0

    .line 49
    const/16 v0, 0x20

    .line 53
    .local v0, asciiDigit:B
    :goto_0
    return v0

    .line 32
    .end local v0           #asciiDigit:B
    :pswitch_0
    const/16 v0, 0x44

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 33
    .end local v0           #asciiDigit:B
    :pswitch_1
    const/16 v0, 0x31

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 34
    .end local v0           #asciiDigit:B
    :pswitch_2
    const/16 v0, 0x32

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 35
    .end local v0           #asciiDigit:B
    :pswitch_3
    const/16 v0, 0x33

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 36
    .end local v0           #asciiDigit:B
    :pswitch_4
    const/16 v0, 0x34

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 37
    .end local v0           #asciiDigit:B
    :pswitch_5
    const/16 v0, 0x35

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 38
    .end local v0           #asciiDigit:B
    :pswitch_6
    const/16 v0, 0x36

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 39
    .end local v0           #asciiDigit:B
    :pswitch_7
    const/16 v0, 0x37

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 40
    .end local v0           #asciiDigit:B
    :pswitch_8
    const/16 v0, 0x38

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 41
    .end local v0           #asciiDigit:B
    :pswitch_9
    const/16 v0, 0x39

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 42
    .end local v0           #asciiDigit:B
    :pswitch_a
    const/16 v0, 0x30

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 43
    .end local v0           #asciiDigit:B
    :pswitch_b
    const/16 v0, 0x2a

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 44
    .end local v0           #asciiDigit:B
    :pswitch_c
    const/16 v0, 0x23

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 45
    .end local v0           #asciiDigit:B
    :pswitch_d
    const/16 v0, 0x41

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 46
    .end local v0           #asciiDigit:B
    :pswitch_e
    const/16 v0, 0x42

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 47
    .end local v0           #asciiDigit:B
    :pswitch_f
    const/16 v0, 0x43

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static convertSubmitpduToPdu([B)[B
    .locals 22
    .parameter "pdu"

    .prologue
    .line 62
    new-instance v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v12}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 63
    .local v12, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 70
    .local v3, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 71
    .local v5, bais:Ljava/io/ByteArrayInputStream;
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    .local v10, dis:Ljava/io/DataInputStream;
    sget-object v19, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->a:Ljava/lang/String;

    const-string/jumbo v20, "to get datas from submitpdu"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :try_start_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    move/from16 v0, v19

    iput v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 76
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    if-eqz v19, :cond_1

    .line 77
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 86
    :goto_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    move/from16 v0, v19

    iput v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 87
    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 88
    .local v4, addressDigitMode:I
    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 89
    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 90
    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 91
    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 92
    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v7, v0

    .line 93
    .local v7, count:B
    iput v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 94
    new-array v9, v7, [B

    .line 96
    .local v9, data:[B
    const/4 v15, 0x0

    .local v15, index:I
    :goto_1
    if-ge v15, v7, :cond_4

    .line 97
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v19

    aput-byte v19, v9, v15

    .line 100
    if-nez v4, :cond_0

    .line 101
    aget-byte v19, v9, v15

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->convertDtmfToAscii(B)B

    move-result v19

    aput-byte v19, v9, v15

    .line 96
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 79
    .end local v4           #addressDigitMode:I
    .end local v7           #count:B
    .end local v9           #data:[B
    .end local v15           #index:I
    :cond_1
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 81
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v16

    .line 131
    .local v16, ioe:Ljava/io/IOException;
    sget-object v19, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->a:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "convertSubmitpduToPdu: read from submitpdu failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v16           #ioe:Ljava/io/IOException;
    :cond_2
    :goto_2
    sget-object v19, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->a:Ljava/lang/String;

    const-string v20, "get datas from submitpdu done! to write datas to a deliverpdu"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v19, 0x64

    move/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 135
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v11, Ljava/io/DataOutputStream;

    new-instance v19, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 138
    .local v11, dos:Ljava/io/DataOutputStream;
    :try_start_1
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 139
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 140
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 142
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 143
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 144
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 145
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 146
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 147
    iget-object v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 149
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    iget-byte v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 152
    iget-byte v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 153
    iget-byte v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 155
    iget-object v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 156
    iget-object v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 157
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V

    .line 158
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    .line 159
    .local v17, mPdu:[B
    sget-object v19, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->a:Ljava/lang/String;

    const-string/jumbo v20, "write datas to a deliverpdu done!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .end local v17           #mPdu:[B
    :goto_3
    return-object v17

    .line 83
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v11           #dos:Ljava/io/DataOutputStream;
    :cond_3
    const/16 v19, 0x0

    :try_start_2
    move/from16 v0, v19

    iput v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto/16 :goto_0

    .line 104
    .restart local v4       #addressDigitMode:I
    .restart local v7       #count:B
    .restart local v9       #data:[B
    .restart local v15       #index:I
    :cond_4
    iput-object v9, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 107
    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    .line 108
    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    .line 109
    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v18, v0

    .line 110
    .local v18, subaddr_nbr_of_digits:B
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    move/from16 v0, v18

    if-ge v14, v0, :cond_5

    .line 111
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    .line 110
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 121
    :cond_5
    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v8

    .line 122
    .local v8, countInt:I
    if-lez v8, :cond_2

    .line 123
    new-array v9, v8, [B

    .line 125
    const/4 v15, 0x0

    :goto_5
    if-ge v15, v8, :cond_6

    .line 126
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v19

    aput-byte v19, v9, v15

    .line 125
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 128
    :cond_6
    iput-object v9, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 161
    .end local v4           #addressDigitMode:I
    .end local v7           #count:B
    .end local v8           #countInt:I
    .end local v9           #data:[B
    .end local v14           #i:I
    .end local v15           #index:I
    .end local v18           #subaddr_nbr_of_digits:B
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #dos:Ljava/io/DataOutputStream;
    :catch_1
    move-exception v13

    .line 162
    .local v13, ex:Ljava/io/IOException;
    sget-object v19, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->a:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "convertSubmitpduToPdu: conversion from object to byte array failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v19, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->a:Ljava/lang/String;

    const-string v20, "convertSubmitpduToPdu: will never reach here"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/16 v17, 0x0

    goto :goto_3
.end method

.method public static makeCDMASmsRecordData(I[B)[B
    .locals 1
    .parameter "status"
    .parameter "pdu"

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->makeCDMASmsRecordData(I[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static makeCDMASmsRecordData(I[BZ)[B
    .locals 8
    .parameter "status"
    .parameter "pdu"
    .parameter "isRealPdu"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xff

    const/4 v5, 0x1

    .line 193
    if-eqz p2, :cond_1

    .line 194
    sget-object v3, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->a:Ljava/lang/String;

    const-string v4, "isRealPdu is true, just piece it up to a record."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    new-array v0, v6, [B

    .line 201
    .local v0, data:[B
    and-int/lit8 v3, p0, 0x7

    int-to-byte v3, v3

    aput-byte v3, v0, v7

    .line 204
    array-length v3, p1

    if-lt v3, v6, :cond_2

    .line 205
    sget-object v3, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->a:Ljava/lang/String;

    const-string/jumbo v4, "the param pdu already be one uim sms record, copy data directly"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/16 v3, 0xfe

    invoke-static {p1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    :cond_0
    return-object v0

    .line 196
    .end local v0           #data:[B
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->a:Ljava/lang/String;

    const-string v4, "call makeCDMASmsRecordData to convert a submitpdu to a deliverpdu, so parse process can run directly"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    .restart local v0       #data:[B
    :cond_2
    if-eqz p2, :cond_3

    move-object v2, p1

    .line 213
    .local v2, newPdu:[B
    :goto_1
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 215
    const/4 v3, 0x2

    array-length v4, v2

    invoke-static {v2, v7, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    array-length v3, v2

    add-int/lit8 v1, v3, 0x2

    .local v1, j:I
    :goto_2
    if-ge v1, v6, :cond_0

    .line 219
    const/4 v3, -0x1

    aput-byte v3, v0, v1

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 210
    .end local v1           #j:I
    .end local v2           #newPdu:[B
    :cond_3
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->convertSubmitpduToPdu([B)[B

    move-result-object v2

    goto :goto_1
.end method
