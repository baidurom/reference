.class public abstract Lcom/android/internal/telephony/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Call$State;
    }
.end annotation


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected isGeneric:Z

.field public isMptyCall:Z

.field public lastMptyState:Z

.field public state:Lcom/android/internal/telephony/Call$State;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 57
    iput-boolean v1, p0, Lcom/android/internal/telephony/Call;->isGeneric:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/telephony/Call;->isMptyCall:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/internal/telephony/Call;->lastMptyState:Z

    .line 64
    const-string v0, "Call"

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getConnections()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end method

.method public getEarliestConnectTime()J
    .locals 10

    .prologue
    .line 177
    const-wide v6, 0x7fffffffffffffffL

    .line 178
    .local v6, time:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 180
    .local v2, l:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 181
    const-wide/16 v8, 0x0

    .line 193
    :goto_0
    return-wide v8

    .line 184
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 185
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 188
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v4

    .line 190
    .local v4, t:J
    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    move-wide v6, v4

    .line 184
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #t:J
    :cond_2
    move-wide v8, v6

    .line 193
    goto :goto_0
.end method

.method public getEarliestConnection()Lcom/android/internal/telephony/Connection;
    .locals 10

    .prologue
    .line 127
    const-wide v7, 0x7fffffffffffffffL

    .line 129
    .local v7, time:J
    const/4 v1, 0x0

    .line 131
    .local v1, earliest:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 133
    .local v3, l:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 134
    const/4 v9, 0x0

    .line 149
    :goto_0
    return-object v9

    .line 137
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, s:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 138
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 141
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 143
    .local v5, t:J
    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    .line 144
    move-object v1, v0

    .line 145
    move-wide v7, v5

    .line 137
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #t:J
    :cond_2
    move-object v9, v1

    .line 149
    goto :goto_0
.end method

.method public getEarliestCreateTime()J
    .locals 10

    .prologue
    .line 155
    const-wide v6, 0x7fffffffffffffffL

    .line 157
    .local v6, time:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 159
    .local v2, l:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 160
    const-wide/16 v8, 0x0

    .line 172
    :goto_0
    return-wide v8

    .line 163
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 164
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 167
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    .line 169
    .local v4, t:J
    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    move-wide v6, v4

    .line 163
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #t:J
    :cond_2
    move-wide v8, v6

    .line 172
    goto :goto_0
.end method

.method public getLatestConnection()Lcom/android/internal/telephony/Connection;
    .locals 10

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 214
    .local v2, l:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 215
    const/4 v3, 0x0

    .line 230
    :cond_0
    return-object v3

    .line 218
    :cond_1
    const-wide/16 v7, 0x0

    .line 219
    .local v7, time:J
    const/4 v3, 0x0

    .line 220
    .local v3, latest:Lcom/android/internal/telephony/Connection;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, s:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 221
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 222
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 224
    .local v5, t:J
    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    .line 225
    move-object v3, v0

    .line 226
    move-wide v7, v5

    .line 220
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public hangupIfAlive()V
    .locals 4

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "Call"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " hangupIfActive: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hasConnection(Lcom/android/internal/telephony/Connection;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConnections()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, connections:Ljava/util/List;
    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDialingOrAlerting()Z
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    return v0
.end method

.method public isGeneric()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/internal/telephony/Call;->isGeneric:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public setGeneric(Z)V
    .locals 0
    .parameter "generic"

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/android/internal/telephony/Call;->isGeneric:Z

    .line 246
    return-void
.end method
