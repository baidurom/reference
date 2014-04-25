.class public Lcom/android/phone/CallOptionHelper;
.super Ljava/lang/Object;
.source "CallOptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallOptionHelper$Callback;,
        Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;,
        Lcom/android/phone/CallOptionHelper$CallbackArgs;
    }
.end annotation


# static fields
.field public static final DIAL_TYPE_SIP:I = 0x0

.field public static final DIAL_TYPE_VIDEO:I = 0x1

.field public static final DIAL_TYPE_VOICE:I = 0x2

.field public static final MAKE_CALL_REASON_3G_SERVICE_OFF:I = 0x1

.field public static final MAKE_CALL_REASON_ASK:I = 0x5

.field public static final MAKE_CALL_REASON_ASSOCIATE_MISSING:I = 0x6

.field public static final MAKE_CALL_REASON_MAX:I = 0x7

.field public static final MAKE_CALL_REASON_MISSING_VOICE_MAIL_NUMBER:I = 0x7

.field public static final MAKE_CALL_REASON_OK:I = 0x0

.field public static final MAKE_CALL_REASON_SIP_DISABLED:I = 0x2

.field public static final MAKE_CALL_REASON_SIP_NO_INTERNET:I = 0x3

.field public static final MAKE_CALL_REASON_SIP_START_SETTINGS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CallOptionHelper"


# instance fields
.field protected mCallback:Lcom/android/phone/CallOptionHelper$Callback;

.field protected mContext:Landroid/content/Context;

.field protected mIsIPCall:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallOptionHelper;->mIsIPCall:Z

    .line 50
    iput-object p1, p0, Lcom/android/phone/CallOptionHelper;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/phone/CallOptionHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    new-instance v0, Lcom/android/phone/CallOptionHelper;

    invoke-direct {v0, p0}, Lcom/android/phone/CallOptionHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 62
    const-string v0, "CallOptionHelper"

    invoke-static {v0, p1}, Lcom/android/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public makeCall(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "makeCall, intent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/phone/CallOptionHelper;->log(Ljava/lang/String;)V

    .line 67
    const/4 v6, 0x2

    .line 69
    .local v6, type:I
    const-string v8, "com.android.phone.extra.video"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 70
    const/4 v6, 0x1

    .line 72
    :cond_0
    const-string v8, "follow_sim_management"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 74
    .local v1, followSimSetting:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 75
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, scheme:Ljava/lang/String;
    const-string v8, "sip"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v1, :cond_1

    .line 79
    const/4 v6, 0x0

    .line 82
    :cond_1
    const-string v8, "voicemail:"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 83
    const/4 v6, 0x2

    .line 85
    :cond_2
    const-string v2, ""

    .line 87
    .local v2, number:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/phone/CallController;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 92
    :goto_0
    const-string v8, "com.android.phone.extra.original"

    const-wide/16 v9, -0x5

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 93
    .local v3, originalSim:J
    const-string v8, "com.android.phone.extra.ip"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/phone/CallOptionHelper;->mIsIPCall:Z

    .line 94
    invoke-virtual {p0, v2, v6, v3, v4}, Lcom/android/phone/CallOptionHelper;->makeCall(Ljava/lang/String;IJ)V

    .line 95
    return-void

    .line 88
    .end local v3           #originalSim:J
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/phone/CallOptionHelper;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected makeCall(Ljava/lang/String;IJ)V
    .locals 11
    .parameter "number"
    .parameter "type"
    .parameter "originalSim"

    .prologue
    .line 405
    const/4 v9, 0x0

    .line 406
    .local v9, intent:Landroid/content/Intent;
    new-instance v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/CallOptionHelper$CallbackArgs;-><init>(Lcom/android/phone/CallOptionHelper;IIJLjava/lang/String;Ljava/lang/Object;)V

    .line 407
    .local v0, callbackArgs:Lcom/android/phone/CallOptionHelper$CallbackArgs;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeCall, number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " originalSim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CallOptionHelper;->log(Ljava/lang/String;)V

    .line 408
    packed-switch p2, :pswitch_data_0

    .line 431
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallOptionHelper;->mCallback:Lcom/android/phone/CallOptionHelper$Callback;

    invoke-interface {v1, v0}, Lcom/android/phone/CallOptionHelper$Callback;->onMakeCall(Lcom/android/phone/CallOptionHelper$CallbackArgs;)V

    .line 432
    return-void

    .line 410
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallOptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_internet_call_value"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 411
    .local v8, enabled:I
    const/4 v1, 0x1

    if-ne v8, v1, :cond_0

    .line 412
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->type:I

    goto :goto_0

    .line 414
    :cond_0
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    goto :goto_0

    .line 417
    .end local v8           #enabled:I
    :pswitch_1
    const/4 v10, 0x0

    .line 418
    .local v10, slot:I
    const/4 v1, -0x1

    if-ne v10, v1, :cond_1

    .line 419
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    goto :goto_0

    .line 421
    :cond_1
    int-to-long v1, v10

    iput-wide v1, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->id:J

    .line 422
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->type:I

    goto :goto_0

    .end local v10           #slot:I
    :pswitch_2
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, v0

    .line 427
    invoke-virtual/range {v1 .. v6}, Lcom/android/phone/CallOptionHelper;->makeVoiceCall(Ljava/lang/String;IJLcom/android/phone/CallOptionHelper$CallbackArgs;)V

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected makeVoiceCall(Ljava/lang/String;IJLcom/android/phone/CallOptionHelper$CallbackArgs;)V
    .locals 30
    .parameter "number"
    .parameter "type"
    .parameter "originalSim"
    .parameter "callbackArgs"

    .prologue
    .line 139
    const-string v26, "+CallOptionHelper.makeVoiceCall"

    invoke-static/range {v26 .. v26}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    .line 140
    const-wide/16 v21, -0x5

    .line 141
    .local v21, suggestedSim:J
    const-wide/16 v3, -0x5

    .line 142
    .local v3, associateSim:J
    const/4 v5, 0x0

    .line 143
    .local v5, associateSimInserts:I
    const/16 v17, 0x0

    .line 145
    .local v17, originalSimInsert:Z
    invoke-static {}, Lcom/android/phone/SIMInfoWrapper;->getDefault()Lcom/android/phone/SIMInfoWrapper;

    move-result-object v19

    .line 147
    .local v19, simInfoWrapper:Lcom/android/phone/SIMInfoWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHelper;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "voice_call_sim_setting"

    const-wide/16 v28, -0x5

    invoke-static/range {v26 .. v29}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    .line 150
    .local v9, defaultSim:J
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v18, v0

    .line 153
    .local v18, phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    invoke-static {}, Lcom/android/phone/SimAssociateHandler;->getInstance()Lcom/android/phone/SimAssociateHandler;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/phone/SimAssociateHandler;->query(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 154
    .local v7, associateSims:Ljava/util/ArrayList;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_1

    const/4 v13, 0x1

    .line 155
    .local v13, hasAssociateSims:Z
    :goto_0
    if-eqz v13, :cond_2

    .line 156
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 157
    .local v16, item:Ljava/lang/Object;
    check-cast v16, Ljava/lang/Integer;

    .end local v16           #item:Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 158
    .local v23, temp:I
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v20

    .line 160
    .local v20, slot:I
    if-ltz v20, :cond_0

    :try_start_0
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    if-eqz v26, :cond_0

    .line 161
    add-int/lit8 v5, v5, 0x1

    .line 162
    move/from16 v0, v23

    int-to-long v3, v0

    goto :goto_1

    .line 154
    .end local v13           #hasAssociateSims:Z
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v20           #slot:I
    .end local v23           #temp:I
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 164
    .restart local v13       #hasAssociateSims:Z
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v20       #slot:I
    .restart local v23       #temp:I
    :catch_0
    move-exception v11

    .line 165
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/phone/CallOptionHelper;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    .end local v11           #e:Ljava/lang/Exception;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v20           #slot:I
    .end local v23           #temp:I
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v26

    if-nez v26, :cond_6

    const-wide/16 v26, -0x2

    cmp-long v26, v9, v26

    if-eqz v26, :cond_6

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHelper;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "enable_internet_call_value"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    const/4 v15, 0x1

    .line 175
    .local v15, internetCallOn:Z
    :goto_2
    if-nez v15, :cond_5

    .line 176
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->type:I

    .line 177
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p5

    iput-wide v0, v2, Lcom/android/phone/CallOptionHelper$CallbackArgs;->id:J

    .line 178
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 402
    .end local v15           #internetCallOn:Z
    .end local p3
    :cond_3
    :goto_3
    return-void

    .line 172
    .restart local p3
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 182
    .restart local v15       #internetCallOn:Z
    :cond_5
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 183
    const-wide/16 v26, -0x2

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    goto :goto_3

    .line 188
    .end local v15           #internetCallOn:Z
    :cond_6
    const-wide/16 v26, -0x5

    cmp-long v26, v9, v26

    if-eqz v26, :cond_3

    .line 191
    const-wide/16 v26, -0x5

    cmp-long v26, p3, v26

    if-eqz v26, :cond_7

    .line 192
    move-wide/from16 v0, p3

    long-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v20

    .line 193
    .restart local v20       #slot:I
    if-ltz v20, :cond_8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v26

    if-eqz v26, :cond_8

    const/16 v17, 0x1

    .line 194
    :goto_4
    const-wide/16 v26, -0x2

    cmp-long v26, p3, v26

    if-nez v26, :cond_7

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHelper;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "enable_internet_call_value"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    const/16 v17, 0x1

    .line 199
    .end local v20           #slot:I
    :cond_7
    :goto_5
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "makeVoiceCall, number = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " type = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " originalSim = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " associateSims = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/phone/CallOptionHelper;->log(Ljava/lang/String;)V

    .line 202
    const-wide/16 v26, -0x1

    cmp-long v26, v9, v26

    if-nez v26, :cond_e

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHelper;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "enable_internet_call_value"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 206
    .local v12, enabled:I
    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v8

    .line 208
    .local v8, count:I
    if-nez v12, :cond_a

    if-nez v8, :cond_a

    .line 209
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    goto/16 :goto_3

    .line 193
    .end local v8           #count:I
    .end local v12           #enabled:I
    .restart local v20       #slot:I
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 195
    :cond_9
    const/16 v17, 0x0

    goto :goto_5

    .line 214
    .end local v20           #slot:I
    .restart local v8       #count:I
    .restart local v12       #enabled:I
    :cond_a
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "always, associateSimInserts = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " originalSim = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/phone/CallOptionHelper;->log(Ljava/lang/String;)V

    .line 215
    const/16 v26, 0x1

    move/from16 v0, v26

    if-le v5, v0, :cond_c

    .line 216
    const-wide/16 v21, -0x5

    .line 222
    :cond_b
    :goto_6
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    .line 223
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 224
    const-string v26, "-CallOptionHelper.makeVoiceCall"

    invoke-static/range {v26 .. v26}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 217
    :cond_c
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v5, v0, :cond_d

    .line 218
    move-wide/from16 v21, v3

    goto :goto_6

    .line 219
    :cond_d
    if-eqz v17, :cond_b

    .line 220
    move-wide/from16 v21, p3

    goto :goto_6

    .line 229
    .end local v8           #count:I
    .end local v12           #enabled:I
    :cond_e
    if-nez v13, :cond_10

    const-wide/16 v26, -0x5

    cmp-long v26, p3, v26

    if-eqz v26, :cond_10

    const-wide/16 v26, -0x2

    cmp-long v26, v9, v26

    if-nez v26, :cond_10

    cmp-long v26, p3, v9

    if-eqz v26, :cond_10

    .line 232
    if-eqz v17, :cond_f

    .line 233
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    .line 237
    :goto_7
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    goto/16 :goto_3

    .line 235
    :cond_f
    const-wide/16 v26, -0x5

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    goto :goto_7

    .line 242
    :cond_10
    const-wide/16 v26, -0x2

    cmp-long v26, v9, v26

    if-nez v26, :cond_16

    .line 243
    if-nez v13, :cond_11

    const-wide/16 v26, -0x5

    cmp-long v26, p3, v26

    if-eqz v26, :cond_15

    const-wide/16 v26, -0x2

    cmp-long v26, p3, v26

    if-eqz v26, :cond_15

    .line 245
    :cond_11
    const/16 v26, 0x1

    move/from16 v0, v26

    if-le v5, v0, :cond_13

    .line 246
    const-wide/16 v21, -0x5

    .line 253
    :cond_12
    :goto_8
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    .line 254
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    goto/16 :goto_3

    .line 247
    :cond_13
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v5, v0, :cond_14

    .line 248
    move-wide/from16 v21, v3

    goto :goto_8

    .line 249
    :cond_14
    if-eqz v17, :cond_12

    .line 250
    move-wide/from16 v21, p3

    goto :goto_8

    .line 259
    :cond_15
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->type:I

    .line 260
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    goto/16 :goto_3

    .line 265
    :cond_16
    const-wide/16 v26, -0x5

    cmp-long v26, p3, v26

    if-nez v26, :cond_18

    if-nez v13, :cond_18

    .line 266
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "deaultSim = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/phone/CallOptionHelper;->log(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallOptionHelper;->mIsIPCall:Z

    move/from16 v26, v0

    if-nez v26, :cond_17

    .line 268
    const-string v26, "==== not ip ,reason ok"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/phone/CallOptionHelper;->log(Ljava/lang/String;)V

    .line 269
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 270
    move-object/from16 v0, p5

    iput-wide v9, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->id:J

    .line 271
    const-string v26, "-CallOptionHelper.makeVoiceCall"

    invoke-static/range {v26 .. v26}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 274
    :cond_17
    const-string v26, "====is ip, reason ask"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/phone/CallOptionHelper;->log(Ljava/lang/String;)V

    .line 275
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    goto/16 :goto_3

    .line 281
    :cond_18
    const-wide/16 v26, -0x5

    cmp-long v26, p3, v26

    if-eqz v26, :cond_1c

    if-nez v13, :cond_1c

    .line 283
    cmp-long v26, v9, p3

    if-eqz v26, :cond_19

    if-nez v17, :cond_1a

    .line 285
    :cond_19
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 286
    move-object/from16 v0, p5

    iput-wide v9, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->id:J

    goto/16 :goto_3

    .line 291
    :cond_1a
    const-wide/16 v21, -0x5

    .line 292
    if-eqz v17, :cond_1b

    .line 293
    move-wide/from16 v21, p3

    .line 295
    :cond_1b
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 296
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    goto/16 :goto_3

    .line 301
    :cond_1c
    const-wide/16 v26, -0x5

    cmp-long v26, p3, v26

    if-nez v26, :cond_22

    if-eqz v13, :cond_22

    .line 303
    const/16 v26, 0x2

    move/from16 v0, v26

    if-lt v5, v0, :cond_1d

    .line 304
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 305
    const-wide/16 v26, -0x5

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    goto/16 :goto_3

    .line 309
    :cond_1d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    .line 310
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    int-to-long v3, v0

    .line 327
    :cond_1e
    :goto_9
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v5, v0, :cond_22

    .line 328
    cmp-long v26, v9, v3

    if-nez v26, :cond_21

    .line 329
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 330
    move-object/from16 v0, p5

    iput-wide v9, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->id:J

    goto/16 :goto_3

    .line 311
    :cond_1f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_1e

    .line 313
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_20
    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 314
    .restart local v16       #item:Ljava/lang/Object;
    check-cast v16, Ljava/lang/Integer;

    .end local v16           #item:Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 315
    .restart local v23       #temp:I
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v20

    .line 317
    .restart local v20       #slot:I
    if-ltz v20, :cond_20

    :try_start_1
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v26

    if-eqz v26, :cond_20

    .line 318
    move/from16 v0, v23

    int-to-long v3, v0

    goto :goto_9

    .line 321
    :catch_1
    move-exception v11

    .line 322
    .restart local v11       #e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/phone/CallOptionHelper;->log(Ljava/lang/String;)V

    goto :goto_a

    .line 333
    .end local v11           #e:Ljava/lang/Exception;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v20           #slot:I
    .end local v23           #temp:I
    :cond_21
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 334
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    goto/16 :goto_3

    .line 341
    :cond_22
    cmp-long v26, v9, p3

    if-nez v26, :cond_23

    cmp-long v26, v9, v3

    if-nez v26, :cond_23

    .line 342
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 343
    move-object/from16 v0, p5

    iput-wide v9, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->id:J

    goto/16 :goto_3

    .line 348
    :cond_23
    cmp-long v26, v9, p3

    if-nez v26, :cond_24

    if-eqz v13, :cond_24

    if-nez v5, :cond_24

    .line 349
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 350
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    goto/16 :goto_3

    .line 355
    :cond_24
    const-wide/16 v26, -0x5

    cmp-long v26, p3, v26

    if-eqz v26, :cond_25

    if-eqz v13, :cond_25

    if-nez v5, :cond_25

    .line 357
    move-wide/from16 v0, p3

    long-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v20

    .line 358
    .restart local v20       #slot:I
    if-ltz v20, :cond_25

    cmp-long v26, p3, v9

    if-eqz v26, :cond_25

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v26

    if-eqz v26, :cond_25

    .line 359
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    .line 360
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    goto/16 :goto_3

    .line 365
    .end local v20           #slot:I
    :cond_25
    const/16 v26, 0x2

    move/from16 v0, v26

    if-lt v5, v0, :cond_26

    .line 366
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 367
    const-wide/16 v26, -0x5

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    goto/16 :goto_3

    .line 371
    :cond_26
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v5, v0, :cond_27

    .line 372
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 373
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    goto/16 :goto_3

    .line 376
    :cond_27
    const-wide/16 v26, -0x5

    cmp-long v26, v3, v26

    if-nez v26, :cond_28

    .line 377
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    int-to-long v3, v0

    .line 379
    :cond_28
    move-object/from16 v0, p5

    iput-wide v3, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->id:J

    .line 380
    const/16 v26, 0x6

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 381
    new-instance v6, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;-><init>(Lcom/android/phone/CallOptionHelper;)V

    .line 382
    .local v6, associateSimMissingArgs:Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;
    invoke-static {}, Lcom/android/phone/SIMInfoWrapper;->getDefault()Lcom/android/phone/SIMInfoWrapper;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_2c

    .line 383
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v6, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;->type:I

    .line 385
    if-eqz v17, :cond_2a

    move-wide/from16 v24, p3

    .line 387
    .local v24, viaSimId:J
    :goto_b
    const-wide/16 v26, -0x2

    cmp-long v26, v9, v26

    if-nez v26, :cond_2b

    .line 388
    const-wide/16 v26, -0x2

    move-wide/from16 v0, v26

    iput-wide v0, v6, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;->suggested:J

    .line 400
    .end local v24           #viaSimId:J
    .end local p3
    :cond_29
    :goto_c
    move-object/from16 v0, p5

    iput-object v6, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    goto/16 :goto_3

    .restart local p3
    :cond_2a
    move-wide/from16 v24, v9

    .line 385
    goto :goto_b

    .line 390
    .restart local v24       #viaSimId:J
    :cond_2b
    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/phone/SIMInfoWrapper;->getSimInfoById(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v6, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;->viaSimInfo:Landroid/provider/Telephony$SIMInfo;

    goto :goto_c

    .line 393
    .end local v24           #viaSimId:J
    :cond_2c
    const/16 v26, 0x1

    move/from16 v0, v26

    iput v0, v6, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;->type:I

    .line 394
    if-eqz v17, :cond_2d

    .end local p3
    :goto_d
    move-wide/from16 v0, p3

    iput-wide v0, v6, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;->suggested:J

    .line 395
    const-wide/16 v26, -0x1

    cmp-long v26, v9, v26

    if-eqz v26, :cond_29

    const-wide/16 v26, -0x2

    cmp-long v26, v9, v26

    if-eqz v26, :cond_29

    .line 397
    long-to-int v0, v9

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/phone/SIMInfoWrapper;->getSimInfoById(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v6, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;->viaSimInfo:Landroid/provider/Telephony$SIMInfo;

    goto :goto_c

    .restart local p3
    :cond_2d
    move-wide/from16 p3, v9

    .line 394
    goto :goto_d
.end method

.method public setCallback(Lcom/android/phone/CallOptionHelper$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/CallOptionHelper;->mCallback:Lcom/android/phone/CallOptionHelper$Callback;

    .line 59
    return-void
.end method
