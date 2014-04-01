.class Landroid/app/ActivityThread$MessageLogger;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/util/Printer;
.implements Landroid/os/Looper$Profiler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageLogger"
.end annotation


# static fields
.field static final MESSAGE_SIZE:I = 0x28

.field private static mLastRecord:Ljava/lang/String;

.field private static mLastRecordDateTime:J

.field private static mLastRecordKernelTime:J

.field private static mMessageHistoryRecord:Ljava/util/LinkedList;

.field private static mMessageTimeRecord:Ljava/util/LinkedList;

.field private static mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4635
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    .line 4636
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/ActivityThread$MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    .line 4638
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ActivityThread$MessageLogger;->mLastRecord:Ljava/lang/String;

    .line 4641
    const/4 v0, 0x0

    sput v0, Landroid/app/ActivityThread$MessageLogger;->mState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4643
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4645
    return-void
.end method

.method public static dump()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    .line 4660
    const-string v8, "ActivityThread"

    const-string v9, "MSG HISTORY IN MAIN THREAD:"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    const-string v8, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current kernel time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4664
    .local v2, simpleDateFormat:Ljava/text/SimpleDateFormat;
    sget v8, Landroid/app/ActivityThread$MessageLogger;->mState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 4665
    new-instance v0, Ljava/util/Date;

    sget-wide v8, Landroid/app/ActivityThread$MessageLogger;->mLastRecordDateTime:J

    div-long/2addr v8, v12

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 4666
    .local v0, date:Ljava/util/Date;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sget-wide v10, Landroid/app/ActivityThread$MessageLogger;->mLastRecordKernelTime:J

    sub-long v5, v8, v10

    .line 4667
    .local v5, spent:J
    const-string v8, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Last record : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4668
    const-string v8, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Last record dispatching spent : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4669
    const-string v8, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Last record dispatching time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    .end local v0           #date:Ljava/util/Date;
    .end local v5           #spent:J
    :cond_0
    sget-object v8, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    if-nez v8, :cond_1

    const/4 v3, 0x0

    .local v3, size:I
    :goto_0
    move v4, v3

    .line 4673
    .end local v3           #size:I
    .local v4, size:I
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4           #size:I
    .restart local v3       #size:I
    if-lez v4, :cond_3

    .line 4674
    sget-object v8, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4675
    .local v1, msg:Ljava/lang/String;
    sget-object v8, Landroid/app/ActivityThread$MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 4676
    .local v7, time:Ljava/lang/Long;
    const-string v8, ">"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4677
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    div-long/2addr v8, v12

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 4678
    .restart local v0       #date:Ljava/util/Date;
    const-string v8, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #date:Ljava/util/Date;
    :goto_2
    move v4, v3

    .line 4682
    .end local v3           #size:I
    .restart local v4       #size:I
    goto :goto_1

    .line 4672
    .end local v1           #msg:Ljava/lang/String;
    .end local v4           #size:I
    .end local v7           #time:Ljava/lang/Long;
    :cond_1
    sget-object v8, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v3

    goto :goto_0

    .line 4680
    .restart local v1       #msg:Ljava/lang/String;
    .restart local v3       #size:I
    .restart local v7       #time:Ljava/lang/Long;
    :cond_2
    const-string v8, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " spent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4684
    .end local v1           #msg:Ljava/lang/String;
    .end local v7           #time:Ljava/lang/Long;
    :cond_3
    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 4647
    sget v1, Landroid/app/ActivityThread$MessageLogger;->mState:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/app/ActivityThread$MessageLogger;->mState:I

    .line 4648
    sget-object v1, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 4649
    .local v0, size:I
    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 4650
    sget-object v1, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 4651
    sget-object v1, Landroid/app/ActivityThread$MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 4653
    :cond_0
    sget-object v1, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4655
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Landroid/app/ActivityThread$MessageLogger;->mLastRecordKernelTime:J

    .line 4656
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    sput-wide v1, Landroid/app/ActivityThread$MessageLogger;->mLastRecordDateTime:J

    .line 4657
    return-void
.end method

.method public profile(Landroid/os/Message;JJJJ)V
    .locals 2
    .parameter "message"
    .parameter "wallStart"
    .parameter "wallTime"
    .parameter "threadStart"
    .parameter "threadTime"

    .prologue
    .line 4688
    const/4 v0, 0x0

    sput v0, Landroid/app/ActivityThread$MessageLogger;->mState:I

    .line 4689
    sget-object v0, Landroid/app/ActivityThread$MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4690
    sget-object v0, Landroid/app/ActivityThread$MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4691
    return-void
.end method
