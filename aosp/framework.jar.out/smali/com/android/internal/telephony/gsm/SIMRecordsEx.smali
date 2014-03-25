.class public Lcom/android/internal/telephony/gsm/SIMRecordsEx;
.super Landroid/os/Handler;
.source "SIMRecordsEx.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field private static final CRASH_RIL:Z = false

.field protected static final DBG:Z = true

.field private static final EVENT_QUERY_ICCID_DONE:I = 0x2

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field protected static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private hasQueryIccId:Z

.field private iccIdQueryState:I

.field public iccid:Ljava/lang/String;

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field protected mFh:Lcom/android/internal/telephony/IccFileHandler;

.field protected mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimId:I

.field private mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "app"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 147
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->iccIdQueryState:I

    .line 156
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mContext:Landroid/content/Context;

    .line 157
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 158
    invoke-virtual {p1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 159
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 161
    invoke-virtual {p1}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mSimId:I

    .line 162
    const-string v1, "SIMRecordsEx construct"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->log(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 170
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->hasQueryIccId:Z

    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 175
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->log(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 273
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->removeMessages(I)V

    .line 274
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->removeMessages(I)V

    .line 275
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 276
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 277
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 278
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mContext:Landroid/content/Context;

    .line 279
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->iccid:Ljava/lang/String;

    .line 280
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 283
    const-string v0, "finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->log(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received message "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->log(Ljava/lang/String;)V

    .line 188
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 190
    :pswitch_0
    const-string v2, "handleMessage (EVENT_RADIO_STATE_CHANGED)"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->log(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->hasQueryIccId:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryIccId(Landroid/os/Message;)V

    goto :goto_0

    .line 219
    :pswitch_1
    const-string v2, "handleMessage (EVENT_QUERY_ICCID_DONE)"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->log(Ljava/lang/String;)V

    .line 220
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 222
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->iccIdQueryState:I

    .line 223
    .local v1, oldIccIdQueryState:I
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->iccIdQueryState:I

    .line 225
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 231
    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->iccIdQueryState:I

    .line 232
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->iccid:Ljava/lang/String;

    .line 233
    const-string/jumbo v2, "query iccid error"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 223
    goto :goto_1

    .line 241
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 242
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->iccid:Ljava/lang/String;

    .line 247
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->hasQueryIccId:Z

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->iccid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->log(Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->iccid:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    goto/16 :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 295
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecordsEx] [SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 299
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecordsEx] [SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 307
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecordsEx] [SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method

.method protected logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "s"
    .parameter "tr"

    .prologue
    .line 303
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecordsEx] [SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    return-void
.end method

.method public resetSimRecordsEx()V
    .locals 1

    .prologue
    .line 288
    const-string/jumbo v0, "resetSimRecordsEx"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->log(Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->iccid:Ljava/lang/String;

    .line 290
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->iccIdQueryState:I

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->hasQueryIccId:Z

    .line 292
    return-void
.end method
