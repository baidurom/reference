.class public Lyi/support/v1/utils/Logger$Performance;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/utils/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Performance"
.end annotation


# static fields
.field private static LEVEL:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mTimestampStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const-string v0, "PERFORMANCE"

    sput-object v0, Lyi/support/v1/utils/Logger$Performance;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lyi/support/v1/utils/Logger$Performance;->mTimestampStack:Ljava/util/Stack;

    .line 67
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ">"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ">>"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ">>>"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ">>>>"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ">>>>>"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">>>>>>"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ">>>>>>>"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ">>>>>>>>"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ">>>>>>>>>"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ">>>>>>>>>>"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ">>>>>>>>>>>"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ">>>>>>>>>>>>"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ">>>>>>>>>>>>>"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ">>>>>>>>>>>>>>"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, ">>>>>>>>>>>>>>>"

    aput-object v2, v0, v1

    sput-object v0, Lyi/support/v1/utils/Logger$Performance;->LEVEL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static begin()V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lyi/support/v1/utils/Logger$Performance;->TAG:Ljava/lang/String;

    invoke-static {}, Lyi/support/v1/utils/Logger$Performance;->getCallerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyi/support/v1/utils/Logger$Performance;->begin(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static begin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 100
    sget-object v0, Lyi/support/v1/utils/Logger$Performance;->mTimestampStack:Ljava/util/Stack;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BEGIN]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lyi/support/v1/utils/Logger$Performance;->print(Ljava/lang/String;Ljava/lang/String;J)V

    .line 102
    return-void
.end method

.method public static elapse()V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lyi/support/v1/utils/Logger$Performance;->TAG:Ljava/lang/String;

    invoke-static {}, Lyi/support/v1/utils/Logger$Performance;->getCallerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyi/support/v1/utils/Logger$Performance;->elapse(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static elapse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 105
    const-wide/16 v0, -0x1

    .line 106
    .local v0, current:J
    sget-object v2, Lyi/support/v1/utils/Logger$Performance;->mTimestampStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v2, Lyi/support/v1/utils/Logger$Performance;->mTimestampStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 110
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ELAPSE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0, v1}, Lyi/support/v1/utils/Logger$Performance;->print(Ljava/lang/String;Ljava/lang/String;J)V

    .line 111
    return-void
.end method

.method public static end()V
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lyi/support/v1/utils/Logger$Performance;->TAG:Ljava/lang/String;

    invoke-static {}, Lyi/support/v1/utils/Logger$Performance;->getCallerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyi/support/v1/utils/Logger$Performance;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static end(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 114
    const-wide/16 v0, -0x1

    .line 115
    .local v0, current:J
    sget-object v2, Lyi/support/v1/utils/Logger$Performance;->mTimestampStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v2, Lyi/support/v1/utils/Logger$Performance;->mTimestampStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 119
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[END]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0, v1}, Lyi/support/v1/utils/Logger$Performance;->print(Ljava/lang/String;Ljava/lang/String;J)V

    .line 121
    sget-object v2, Lyi/support/v1/utils/Logger$Performance;->mTimestampStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    sget-object v2, Lyi/support/v1/utils/Logger$Performance;->mTimestampStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 124
    :cond_1
    return-void
.end method

.method private static getCallerInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 128
    .local v0, ste:Ljava/lang/StackTraceElement;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static print(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter "tag"
    .parameter "msg"
    .parameter "time"

    .prologue
    .line 132
    sget-object v1, Lyi/support/v1/utils/Logger$Performance;->LEVEL:[Ljava/lang/String;

    sget-object v2, Lyi/support/v1/utils/Logger$Performance;->LEVEL:[Ljava/lang/String;

    array-length v2, v2

    sget-object v3, Lyi/support/v1/utils/Logger$Performance;->mTimestampStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget-object v0, v1, v2

    .line 133
    .local v0, level:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lyi/support/v1/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method
