.class public Lcom/android/server/am/ANRManager$AnrMonitorHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnrMonitorHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/server/am/ANRManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ANRManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->a:Lcom/android/server/am/ANRManager;

    .line 169
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 170
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 221
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastQueue;

    .line 181
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 182
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 183
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    .line 184
    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 186
    :goto_1
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "monitor Broadcast ANR process ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->a:Lcom/android/server/am/ANRManager;

    invoke-static {v1, v0}, Lcom/android/server/am/ANRManager;->a(Lcom/android/server/am/ANRManager;I)V

    goto :goto_0

    .line 190
    :cond_0
    const-string v0, "ANRManager"

    const-string v1, "monitor Broadcast ANR process failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 198
    if-eqz v0, :cond_1

    .line 199
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 201
    :cond_1
    const-string v0, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "monitor Service ANR process ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->a:Lcom/android/server/am/ANRManager;

    invoke-static {v0, v1}, Lcom/android/server/am/ANRManager;->a(Lcom/android/server/am/ANRManager;I)V

    goto :goto_0

    .line 207
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;

    .line 208
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START_ANR_DUMP_MSG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->a:Lcom/android/server/am/ANRManager;

    iget-object v1, v1, Lcom/android/server/am/ANRManager;->mAnrDumpMgr:Lcom/android/server/am/ANRManager$AnrDumpMgr;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->dumpAnrDebugInfo(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V

    goto/16 :goto_0

    .line 215
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 216
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Monitor KeyDispatching ANR process ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->a:Lcom/android/server/am/ANRManager;

    invoke-static {v1, v0}, Lcom/android/server/am/ANRManager;->a(Lcom/android/server/am/ANRManager;I)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto/16 :goto_1

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
