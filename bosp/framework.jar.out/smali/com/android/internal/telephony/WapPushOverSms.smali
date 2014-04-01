.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private final WAKE_LOCK_TIMEOUT:I

.field private bundle:Landroid/os/Bundle;

.field private final mContext:Landroid/content/Context;

.field protected mSimId:I

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 2
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSimId:I

    .line 63
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 65
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->BIND_RETRY_INTERVAL:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 135
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 136
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 137
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->bindWapPushManager()V

    .line 140
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSimId:I

    .line 141
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 27
    .parameter "pdu"

    .prologue
    .line 157
    const/4 v11, 0x0

    .line 158
    .local v11, index:I
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .local v12, index:I
    aget-byte v24, p1, v11

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 159
    .local v21, transactionId:I
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v24, p1, v12

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 160
    .local v16, pduType:I
    const/4 v9, 0x0

    .line 162
    .local v9, headerLength:I
    const/16 v24, 0x6

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    const/16 v24, 0x7

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 165
    const/16 v24, 0x1

    .line 309
    :goto_0
    return v24

    .line 168
    :cond_0
    new-instance v24, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v24

    if-nez v24, :cond_1

    .line 178
    const/16 v24, 0x2

    goto :goto_0

    .line 180
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v9, v0

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v24

    add-int/lit8 v11, v24, 0x2

    .line 183
    move v10, v11

    .line 197
    .local v10, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v24

    if-nez v24, :cond_2

    .line 199
    const/16 v24, 0x2

    goto :goto_0

    .line 202
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v15

    .line 203
    .local v15, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    .line 204
    .local v4, binaryContentType:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v24

    add-int v11, v11, v24

    .line 206
    new-array v8, v9, [B

    .line 207
    .local v8, header:[B
    const/16 v24, 0x0

    array-length v0, v8

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v10, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    sub-int v25, v9, v11

    add-int v25, v25, v10

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeHeaders(II)V

    .line 212
    if-eqz v15, :cond_5

    const/16 v24, 0x32

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 213
    move-object/from16 v14, p1

    .line 226
    .local v14, intentData:[B
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    add-int v25, v11, v9

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v11, v0

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v22

    .line 230
    .local v22, wapAppId:Ljava/lang/String;
    if-nez v22, :cond_3

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 234
    :cond_3
    if-nez v15, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, contentType:Ljava/lang/String;
    :goto_2
    const/16 v19, 0x1

    .line 240
    .local v19, processFurther:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 242
    .local v23, wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    if-nez v23, :cond_7

    .line 266
    :cond_4
    :goto_3
    if-nez v19, :cond_9

    .line 267
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 215
    .end local v6           #contentType:Ljava/lang/String;
    .end local v14           #intentData:[B
    .end local v19           #processFurther:Z
    .end local v22           #wapAppId:Ljava/lang/String;
    .end local v23           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_5
    add-int v7, v10, v9

    .line 216
    .local v7, dataIndex:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    sub-int v24, v24, v7

    move/from16 v0, v24

    new-array v14, v0, [B

    .line 217
    .restart local v14       #intentData:[B
    const/16 v24, 0x0

    array-length v0, v14

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v7, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .end local v7           #dataIndex:I
    .restart local v22       #wapAppId:Ljava/lang/String;
    :cond_6
    move-object v6, v15

    .line 234
    goto :goto_2

    .line 245
    .restart local v6       #contentType:Ljava/lang/String;
    .restart local v19       #processFurther:Z
    .restart local v23       #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_7
    :try_start_1
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 246
    .local v13, intent:Landroid/content/Intent;
    const-string/jumbo v24, "transactionId"

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    const-string/jumbo v24, "pduType"

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    const-string v24, "header"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 249
    const-string v24, "data"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 250
    const-string v24, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 251
    const-string/jumbo v24, "wspHeaders"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaders()Ljava/util/HashMap;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    .line 254
    const-string v24, "WAP PUSH"

    const-string/jumbo v25, "put addr info into intent 1"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v24, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v25, v0

    const-string v26, "address"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string/jumbo v24, "service_center"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v25, v0

    const-string/jumbo v26, "service_center"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    :cond_8
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v6, v13}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v18

    .line 261
    .local v18, procRet:I
    and-int/lit8 v24, v18, 0x1

    if-lez v24, :cond_4

    const v24, 0x8000

    and-int v24, v24, v18

    if-nez v24, :cond_4

    .line 263
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 269
    .end local v13           #intent:Landroid/content/Intent;
    .end local v18           #procRet:I
    .end local v23           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :catch_0
    move-exception v24

    .line 275
    .end local v6           #contentType:Ljava/lang/String;
    .end local v19           #processFurther:Z
    .end local v22           #wapAppId:Ljava/lang/String;
    :cond_9
    if-nez v15, :cond_a

    .line 277
    const/16 v24, 0x2

    goto/16 :goto_0

    .line 282
    :cond_a
    const-string v24, "application/vnd.wap.mms-message"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 283
    const-string v24, "WAP PUSH"

    const-string v25, "[WapPush set permission for MMS"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v17, "android.permission.RECEIVE_MMS"

    .line 285
    .local v17, permission:Ljava/lang/String;
    invoke-static {v14}, Lcom/baidu/internal/telephony/SMSPlugin;->getMmsNotiWapPushAddress([B)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/baidu/internal/telephony/SMSPlugin;->msgAddress:Ljava/lang/String;

    .line 290
    :goto_4
    const/16 v24, 0x3e

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    const/4 v3, 0x2

    .line 292
    .local v3, appType:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Lcom/baidu/internal/telephony/SMSPlugin;->msgAddress:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v3}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->shouldPrevent(Landroid/content/Context;Ljava/lang/String;I)Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;

    move-result-object v20

    .line 293
    .local v20, result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->result:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->reason:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSimId:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v15, v14, v1, v2}, Lcom/baidu/internal/telephony/SMSPlugin;->dispatchDisturbWapPdu(Landroid/content/Context;Ljava/lang/String;[BII)V

    .line 295
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 287
    .end local v3           #appType:I
    .end local v17           #permission:Ljava/lang/String;
    .end local v20           #result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    :cond_b
    const-string v17, "android.permission.RECEIVE_WAP_PUSH"

    .restart local v17       #permission:Ljava/lang/String;
    goto :goto_4

    .line 290
    :cond_c
    const/4 v3, 0x1

    goto :goto_5

    .line 297
    .restart local v3       #appType:I
    .restart local v20       #result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    :cond_d
    new-instance v13, Landroid/content/Intent;

    const-string v24, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .restart local v13       #intent:Landroid/content/Intent;
    invoke-virtual {v13, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string/jumbo v24, "transactionId"

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string/jumbo v24, "pduType"

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    const-string v24, "header"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 302
    const-string v24, "data"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 303
    const-string v24, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 304
    const-string/jumbo v24, "wspHeaders"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaders()Ljava/util/HashMap;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 305
    const-string v24, "address"

    sget-object v25, Lcom/baidu/internal/telephony/SMSPlugin;->msgAddress:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 309
    const/16 v24, -0x1

    goto/16 :goto_0
.end method

.method public dispatchWapPdu([BLandroid/os/Bundle;)I
    .locals 3
    .parameter "pdu"
    .parameter "extra"

    .prologue
    .line 320
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispathchWapPdu!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "service_center"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    .line 325
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v0

    return v0
.end method
