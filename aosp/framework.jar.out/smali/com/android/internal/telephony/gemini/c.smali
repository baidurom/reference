.class final Lcom/android/internal/telephony/gemini/c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic a:Z


# instance fields
.field private synthetic b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    const-class v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gemini/c;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 494
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 200
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 201
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 202
    const-string v0, "EVENT_PHONE_1_GPRS_ATTACHED"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_1
    const-string v0, "EVENT_PHONE_1_GPRS_ATTACHED:Failed"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 209
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    .line 210
    const-string v0, "EVENT_PHONE_1_GPRS_DETACHED"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v1, "Recv EVENT_PHONE_1_GPRS_DETACHED:"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 213
    instance-of v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_2

    .line 214
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    .line 215
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->gprsDetachResetAPN()V

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v1, 0x6

    invoke-static {v0, v5, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;II)V

    goto :goto_0

    .line 219
    :cond_3
    const-string v0, "EVENT_PHONE_1_GPRS_DETACHED:Failed"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v1, "Recv EVENT_PHONE_1_GPRS_DETACHED_FAIL:"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/16 v1, 0x10

    invoke-static {v0, v5, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;II)V

    goto :goto_0

    .line 224
    :cond_4
    const-string v0, "EVENT_PHONE_1_GPRS_DETACHED:Failed not due to radioOff"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 225
    sget-boolean v0, Lcom/android/internal/telephony/gemini/c;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 230
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 231
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_5

    .line 232
    const-string v0, "EVENT_PHONE_2_GPRS_ATTACHED"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    :cond_5
    const-string v0, "EVENT_PHONE_2_GPRS_ATTACHED:Failed"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 239
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_7

    .line 240
    const-string v0, "EVENT_PHONE_2_GPRS_DETACHED"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v1, "Recv EVENT_PHONE_2_GPRS_DETACHED:"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 243
    instance-of v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_6

    .line 244
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    .line 245
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->gprsDetachResetAPN()V

    .line 247
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v1, 0x7

    invoke-static {v0, v4, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;II)V

    goto/16 :goto_0

    .line 249
    :cond_7
    const-string v0, "EVENT_PHONE_2_GPRS_DETACHED:Failed"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_8

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v1, "Recv EVENT_PHONE_2_GPRS_DETACHED_FAIL:"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/16 v1, 0x11

    invoke-static {v0, v4, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;II)V

    goto/16 :goto_0

    .line 254
    :cond_8
    const-string v0, "EVENT_PHONE_2_GPRS_DETACHED:Failed not due to radioOff"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 255
    sget-boolean v0, Lcom/android/internal/telephony/gemini/c;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 260
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_MONITOR_GPRS_ATTACH Timeout:previous_reqattach_simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v2, "Recv MONITOR_GPRS_ATTACH Timeout Event:"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v2, :cond_0

    .line 269
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    .line 270
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v2, v0

    .line 271
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 272
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v2

    aput-boolean v5, v2, v0

    .line 273
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v2

    aput-boolean v4, v2, v0

    .line 275
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 276
    :try_start_0
    sget-boolean v3, Lcom/android/internal/telephony/gemini/c;->a:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-eq v3, v4, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 277
    :cond_a
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 278
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    const-string v2, "[C5]Kicking off an op and check states"

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 281
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    const-string/jumbo v2, "mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 296
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    const-string/jumbo v2, "noSuchPdp"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    const-string v2, "gprsAttachedTimeout"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_MONITOR_GPRS_DETACH Timeout:previous_reqdetach_simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v2, "Recv MONITOR_GPRS_DETACH Timeout Event:"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x5

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;II)V

    goto/16 :goto_0

    .line 310
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 311
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recv EVENT_KICK_OFF_ONE:psOpState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 312
    sget-boolean v0, Lcom/android/internal/telephony/gemini/c;->a:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-eq v0, v2, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 313
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_c
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 315
    const-string v0, "Wait for enable procedure"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 317
    :try_start_4
    const-string v0, "enable procedure is done"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 318
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 322
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recv EVENT_KICK_OFF_ONE:req_ps_state1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",req_ps_state2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v2, "[KICK_OFF_OP]"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_16

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_16

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_d

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_12

    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_12

    .line 331
    :cond_e
    const-string v0, "[C1]Same both Detached states,but check if detached due to monitor attach timeout"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_10

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 337
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 338
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 339
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 485
    :cond_f
    :goto_1
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 318
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 338
    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v0

    .line 340
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_11

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 344
    :try_start_b
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 345
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 346
    :try_start_c
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_1

    .line 345
    :catchall_5
    move-exception v0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    throw v0

    .line 348
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 349
    :try_start_f
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 350
    monitor-exit v2

    goto :goto_1

    :catchall_6
    move-exception v0

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    throw v0

    .line 353
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_13

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_14

    .line 357
    :cond_13
    const-string v0, "[C2]Compare current and requested gprs states(from NONE to SIM1)"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 359
    :try_start_11
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 360
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 361
    :try_start_12
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_1

    .line 360
    :catchall_7
    move-exception v0

    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    throw v0

    .line 362
    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_15

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_f

    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_f

    .line 364
    const-string v0, "[C3]Compare current and requested gprs states(from NONE to SIM2)"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 366
    :try_start_15
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 367
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 368
    :try_start_16
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_1

    .line 367
    :catchall_8
    move-exception v0

    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :try_start_18
    throw v0

    .line 371
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_1f

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_1f

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_17

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_18

    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_18

    .line 377
    const-string v0, "[C4]Same states(SIM1:Detached;SIM2:Attached)"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 379
    :try_start_19
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 380
    monitor-exit v2

    goto/16 :goto_1

    :catchall_9
    move-exception v0

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    :try_start_1a
    throw v0

    .line 382
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_1a

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_1a

    .line 387
    :cond_19
    const-string v0, "[C5]Compare current and requested gprs states(from SIM2 to SIM1)"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 389
    :try_start_1b
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 390
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    .line 392
    :try_start_1c
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Z)Z

    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    goto/16 :goto_1

    .line 390
    :catchall_a
    move-exception v0

    :try_start_1d
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    :try_start_1e
    throw v0

    .line 396
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_1b

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_1c

    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_1c

    .line 399
    const-string v0, "[C6]Compare current and requested gprs states(from SIM2 to NONE)"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 401
    :try_start_1f
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 402
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    .line 403
    :try_start_20
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    goto/16 :goto_1

    .line 402
    :catchall_b
    move-exception v0

    :try_start_21
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    :try_start_22
    throw v0

    .line 404
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_1d

    .line 406
    const-string v0, "[C7]Power On:SIM2 attached"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    .line 409
    :try_start_23
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 410
    monitor-exit v2

    goto/16 :goto_1

    :catchall_c
    move-exception v0

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    :try_start_24
    throw v0

    .line 411
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_1e

    .line 415
    const-string v0, "[C7-2]Power On:SIM2 attached,then requests to send MMS via SIM2 via check SIM1\'s detached first"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    .line 418
    :try_start_25
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 419
    monitor-exit v2

    goto/16 :goto_1

    :catchall_d
    move-exception v0

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    :try_start_26
    throw v0

    .line 421
    :cond_1e
    const-string v0, "[C7-3]Not update gprs_op_state:still as KICKING"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 423
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_28

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_28

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_21

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_20

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_21

    .line 429
    :cond_20
    const-string v0, "[C8]Same states(SIM1:Attached;SIM2:Detached)"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    .line 431
    :try_start_27
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 432
    monitor-exit v2

    goto/16 :goto_1

    :catchall_e
    move-exception v0

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    :try_start_28
    throw v0

    .line 434
    :cond_21
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_22

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_23

    :cond_22
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_23

    .line 437
    const-string v0, "[C9]Compare current and requested gprs states(from SIM1 to SIM2)"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Z)Z

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_2

    .line 442
    :try_start_29
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 443
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_f

    .line 444
    :try_start_2a
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    goto/16 :goto_1

    .line 443
    :catchall_f
    move-exception v0

    :try_start_2b
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_f

    :try_start_2c
    throw v0

    .line 446
    :cond_23
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v2, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_25

    .line 451
    :cond_24
    const-string v0, "[C10]Compare current and requested gprs states(from SIM1 to NONE)"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2

    .line 453
    :try_start_2d
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 454
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_10

    .line 455
    :try_start_2e
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2

    goto/16 :goto_1

    .line 454
    :catchall_10
    move-exception v0

    :try_start_2f
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_10

    :try_start_30
    throw v0

    .line 456
    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_26

    .line 458
    const-string v0, "[C11]Power On:SIM1 attached"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2

    .line 461
    :try_start_31
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 462
    monitor-exit v2

    goto/16 :goto_1

    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_11

    :try_start_32
    throw v0

    .line 463
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_27

    .line 467
    const-string v0, "[C11-2]Power On:SIM1 attached,then requests to send MMS via SIM1 via check SIM2\'s detached first"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_2

    .line 470
    :try_start_33
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 471
    monitor-exit v2

    goto/16 :goto_1

    :catchall_12
    move-exception v0

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_12

    :try_start_34
    throw v0

    .line 473
    :cond_27
    const-string v0, "[C11-3]Not update gprs_op_state:still as KICKING"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 477
    :cond_28
    const-string v0, "Not expceted states both SIM1 and SIM2 attached!"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_29

    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetGprsRelatedContext(I)V

    .line 483
    :goto_2
    sget-boolean v0, Lcom/android/internal/telephony/gemini/c;->a:Z

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 481
    :cond_29
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetGprsRelatedContext(I)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_2

    goto :goto_2

    .line 486
    :pswitch_8
    const-string v0, "Receive EVENT_PHONE1_ON_VOICE_CALL_END"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)V

    goto/16 :goto_0

    .line 492
    :pswitch_9
    const-string v0, "Receive EVENT_PHONE2_ON_VOICE_CALL_END"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)V

    goto/16 :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
