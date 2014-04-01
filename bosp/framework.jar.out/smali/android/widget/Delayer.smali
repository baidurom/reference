.class public Landroid/widget/Delayer;
.super Ljava/lang/Object;
.source "Delayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Delayer$1;,
        Landroid/widget/Delayer$BlockedException;,
        Landroid/widget/Delayer$DelayedTask;
    }
.end annotation


# static fields
.field private static instance:Landroid/widget/Delayer;


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/Delayer$DelayedTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    .line 110
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/widget/Delayer;
    .locals 2

    .prologue
    .line 118
    const-class v1, Landroid/widget/Delayer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/widget/Delayer;->instance:Landroid/widget/Delayer;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Landroid/widget/Delayer;

    invoke-direct {v0}, Landroid/widget/Delayer;-><init>()V

    sput-object v0, Landroid/widget/Delayer;->instance:Landroid/widget/Delayer;

    .line 121
    :cond_0
    sget-object v0, Landroid/widget/Delayer;->instance:Landroid/widget/Delayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public block(Ljava/lang/String;J)I
    .locals 6
    .parameter "key"
    .parameter "delay"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/Delayer$BlockedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 135
    iget-object v2, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v1, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Delayer$DelayedTask;

    .line 138
    .local v0, task:Landroid/widget/Delayer$DelayedTask;
    #getter for: Landroid/widget/Delayer$DelayedTask;->blocked:Z
    invoke-static {v0}, Landroid/widget/Delayer$DelayedTask;->access$000(Landroid/widget/Delayer$DelayedTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    new-instance v1, Landroid/widget/Delayer$BlockedException;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/widget/Delayer$BlockedException;-><init>(Landroid/widget/Delayer$1;)V

    throw v1

    .line 148
    .end local v0           #task:Landroid/widget/Delayer$DelayedTask;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 142
    .restart local v0       #task:Landroid/widget/Delayer$DelayedTask;
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    #setter for: Landroid/widget/Delayer$DelayedTask;->blocked:Z
    invoke-static {v0, v1}, Landroid/widget/Delayer$DelayedTask;->access$002(Landroid/widget/Delayer$DelayedTask;Z)Z

    .line 143
    #setter for: Landroid/widget/Delayer$DelayedTask;->delay:J
    invoke-static {v0, p2, p3}, Landroid/widget/Delayer$DelayedTask;->access$202(Landroid/widget/Delayer$DelayedTask;J)J

    .line 148
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 151
    :goto_1
    :try_start_3
    #getter for: Landroid/widget/Delayer$DelayedTask;->delay:J
    invoke-static {v0}, Landroid/widget/Delayer$DelayedTask;->access$200(Landroid/widget/Delayer$DelayedTask;)J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-lez v1, :cond_2

    .line 153
    #getter for: Landroid/widget/Delayer$DelayedTask;->delay:J
    invoke-static {v0}, Landroid/widget/Delayer$DelayedTask;->access$200(Landroid/widget/Delayer$DelayedTask;)J

    move-result-wide p2

    .line 154
    const-wide/16 v1, 0x0

    #setter for: Landroid/widget/Delayer$DelayedTask;->delay:J
    invoke-static {v0, v1, v2}, Landroid/widget/Delayer$DelayedTask;->access$202(Landroid/widget/Delayer$DelayedTask;J)J

    .line 155
    invoke-virtual {v0, p2, p3}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 157
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 160
    :catchall_2
    move-exception v1

    iget-object v2, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    monitor-enter v2

    .line 161
    :try_start_5
    iget-object v3, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v1

    .line 146
    .end local v0           #task:Landroid/widget/Delayer$DelayedTask;
    :cond_1
    :try_start_6
    iget-object v1, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    new-instance v0, Landroid/widget/Delayer$DelayedTask;

    const/4 v3, 0x0

    invoke-direct {v0, p2, p3, v3}, Landroid/widget/Delayer$DelayedTask;-><init>(JLandroid/widget/Delayer$1;)V

    .restart local v0       #task:Landroid/widget/Delayer$DelayedTask;
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 157
    :cond_2
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 158
    :try_start_8
    #getter for: Landroid/widget/Delayer$DelayedTask;->times:I
    invoke-static {v0}, Landroid/widget/Delayer$DelayedTask;->access$400(Landroid/widget/Delayer$DelayedTask;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v1

    .line 160
    iget-object v2, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    monitor-enter v2

    .line 161
    :try_start_9
    iget-object v3, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    monitor-exit v2

    return v1

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1

    :catchall_4
    move-exception v1

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v1
.end method

.method public cancel(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 220
    iget-object v2, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    monitor-enter v2

    .line 221
    :try_start_0
    iget-object v1, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Delayer$DelayedTask;

    .line 222
    .local v0, task:Landroid/widget/Delayer$DelayedTask;
    if-eqz v0, :cond_0

    #getter for: Landroid/widget/Delayer$DelayedTask;->blocked:Z
    invoke-static {v0}, Landroid/widget/Delayer$DelayedTask;->access$000(Landroid/widget/Delayer$DelayedTask;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    .line 226
    :goto_0
    return v1

    .line 225
    :cond_1
    iget-object v1, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 228
    .end local v0           #task:Landroid/widget/Delayer$DelayedTask;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 173
    iget-object v1, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public delay(Ljava/lang/String;J)Z
    .locals 5
    .parameter "key"
    .parameter "delay"

    .prologue
    .line 199
    iget-object v2, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    monitor-enter v2

    .line 200
    :try_start_0
    iget-object v1, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Delayer$DelayedTask;

    .line 201
    .local v0, task:Landroid/widget/Delayer$DelayedTask;
    if-nez v0, :cond_0

    .line 203
    iget-object v1, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    new-instance v3, Landroid/widget/Delayer$DelayedTask;

    const/4 v4, 0x0

    invoke-direct {v3, p2, p3, v4}, Landroid/widget/Delayer$DelayedTask;-><init>(JLandroid/widget/Delayer$1;)V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/4 v1, 0x0

    monitor-exit v2

    .line 208
    :goto_0
    return v1

    .line 207
    :cond_0
    #calls: Landroid/widget/Delayer$DelayedTask;->reset(J)I
    invoke-static {v0, p2, p3}, Landroid/widget/Delayer$DelayedTask;->access$500(Landroid/widget/Delayer$DelayedTask;J)I

    .line 208
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 210
    .end local v0           #task:Landroid/widget/Delayer$DelayedTask;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBlocked(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 185
    iget-object v2, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    monitor-enter v2

    .line 186
    :try_start_0
    iget-object v1, p0, Landroid/widget/Delayer;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Delayer$DelayedTask;

    .line 187
    .local v0, task:Landroid/widget/Delayer$DelayedTask;
    if-eqz v0, :cond_0

    #getter for: Landroid/widget/Delayer$DelayedTask;->blocked:Z
    invoke-static {v0}, Landroid/widget/Delayer$DelayedTask;->access$000(Landroid/widget/Delayer$DelayedTask;)Z

    move-result v1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 188
    .end local v0           #task:Landroid/widget/Delayer$DelayedTask;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
