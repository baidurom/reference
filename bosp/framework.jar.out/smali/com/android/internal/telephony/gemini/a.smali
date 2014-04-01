.class final Lcom/android/internal/telephony/gemini/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;


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
    .line 501
    const-class v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gemini/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DataStateChanged]:state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",reason="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",apnName="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",apnType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",from sim_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 508
    if-eqz p2, :cond_11

    const-string v0, "dataAttached"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v3, "Recv GPRS_ATTACHED:"

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, p6}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DataStateChanged]:gprsState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 512
    if-eqz v0, :cond_1

    .line 513
    const-string v0, "[DataStateChanged]: not expect gprs attach event"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p6}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsAttachTimer(I)V

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z

    move-result-object v0

    aput-boolean v2, v0, p6

    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, p6}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v2

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v0, v2

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "From no GPRS on both sims to attached in sim_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 605
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 606
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATTATCHED Intent:psOpState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v2, :cond_10

    .line 610
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 611
    const-string v0, "[C1]Kicking off an op and check states"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 613
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 621
    :goto_2
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 533
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-ne v0, v5, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    aget-object v0, v0, p6

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v3, :cond_8

    .line 539
    if-nez p6, :cond_7

    move v0, v1

    .line 540
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1, p6}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 541
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1, v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 542
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v2

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v1, v2

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPRS Attached reported by NW for the previous attach timeout simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v2, :cond_6

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel monitor detach timer for simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v2, v1, v0

    .line 549
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsDetachTimer(I)V

    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 551
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v2, :cond_5

    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Z)Z

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Z)Z

    .line 555
    const-string v0, "[C6]Kicking off an op and check states"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 557
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 559
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 561
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v6}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 539
    goto/16 :goto_3

    .line 559
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 562
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-ne v0, v5, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v3

    aget-object v0, v0, v3

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v3, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v3

    aget-object v0, v0, v3

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v3, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-eq v0, v5, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-ne v0, p6, :cond_a

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v2, v0, v1

    .line 573
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    goto/16 :goto_1

    .line 575
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-eq v0, v5, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v3

    aget-object v0, v0, v3

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v3, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-ne v0, p6, :cond_e

    .line 582
    if-nez p6, :cond_c

    .line 588
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-eq v0, v5, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-ne v0, p6, :cond_d

    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    aget-object v0, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_d

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recv NW Attached again for sim_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v2, v0, v1

    goto/16 :goto_1

    :cond_c
    move v1, v2

    .line 586
    goto :goto_4

    .line 592
    :cond_d
    const-string v0, "Recv NW Attached but invalid case!"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 593
    sget-boolean v0, Lcom/android/internal/telephony/gemini/a;->a:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 595
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-ne v0, p6, :cond_f

    const-string v0, "NONE"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 597
    const-string v0, "Attached but current request enable APN type is not NONE."

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    goto/16 :goto_1

    .line 600
    :cond_f
    const-string v0, "Not matched any cases for Attached"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 619
    :cond_10
    :try_start_3
    const-string v0, "Recv ATTACHED Intent:Fail to kick"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 623
    :cond_11
    if-eqz p2, :cond_21

    const-string v0, "dataDetached"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v3, "Recv GPRS_DETACHED:"

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, p6}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DataStateChanged]:gprsState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 628
    if-eq v0, v1, :cond_12

    .line 629
    const-string v0, "[DataStateChanged]: not expect gprs attach event"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 634
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p6}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsDetachTimer(I)V

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-ne p6, v0, :cond_1a

    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Z)Z

    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v4, v0, v3

    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-eq v0, v1, :cond_13

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "some error happened, request_use_gprs_sim_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 648
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v4, v0, v3

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v3

    invoke-virtual {v0, v3, v7}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsAttachTimer(II)V

    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v3

    invoke-virtual {v0, v3, v2, v7}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPeerSimAbortAttachbyDetachOrAsGprsWhenNeededMode(IZI)V

    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recv Detached for sim_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",then perform Attach for sim_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 670
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[C1]DETATCHED Intent:psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v3, :cond_17

    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 677
    :cond_14
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 681
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    .line 761
    :cond_15
    :goto_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 762
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C3]DETATCHED Intent:psOpState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v2, :cond_20

    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 765
    const-string v0, "[C2]Kicking off an op and check states"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 767
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 771
    :cond_16
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 675
    :cond_17
    :try_start_6
    sget-boolean v0, Lcom/android/internal/telephony/gemini/a;->a:Z

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 677
    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 684
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    aget-object v0, v0, p6

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v1, :cond_19

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v2, v0, v1

    .line 688
    const-string v0, "Recv NW Detached but not triggered by DATA FW"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 694
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v1

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v2, v0, v1

    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    .line 698
    const-string v0, "Recv NW Detached and triggered by DATA FW itself"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 701
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v0

    if-ne p6, v0, :cond_1c

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_1b

    .line 705
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v2, v0, v1

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recv NW Detached automatically for requested simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 707
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_15

    .line 712
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v1

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recv NW Detached caused by app for requested simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v2, v0, v1

    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I

    goto/16 :goto_5

    .line 719
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    aget-object v0, v0, p6

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v3, :cond_1f

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 723
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Z)Z

    .line 725
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Z)Z

    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v3

    invoke-virtual {v0, v3, v2, v6}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPeerSimAbortAttachbyDetachOrAsGprsWhenNeededMode(IZI)V

    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v2

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v0, v2

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v2

    invoke-virtual {v0, v2, v6}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsAttachTimer(II)V

    .line 739
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    .line 743
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 744
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C2]DETATCHED Intent:psOpState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v2, :cond_1e

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 751
    :cond_1d
    monitor-exit v1

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    .line 749
    :cond_1e
    :try_start_8
    sget-boolean v0, Lcom/android/internal/telephony/gemini/a;->a:Z

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 756
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recv NW Detached but not for this sim_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 769
    :cond_20
    :try_start_9
    sget-boolean v0, Lcom/android/internal/telephony/gemini/a;->a:Z

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 774
    :cond_21
    if-eqz p2, :cond_0

    const-string/jumbo v0, "radioTurnedOff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const-string v1, "RADIO_TURNED_OFF:"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
