.class Landroid/widget/Delayer$DelayedTask;
.super Ljava/lang/Object;
.source "Delayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Delayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedTask"
.end annotation


# instance fields
.field private blocked:Z

.field private delay:J

.field private times:I


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .parameter "delay"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Delayer$DelayedTask;->times:I

    .line 71
    iput-wide p1, p0, Landroid/widget/Delayer$DelayedTask;->delay:J

    .line 72
    return-void
.end method

.method synthetic constructor <init>(JLandroid/widget/Delayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/Delayer$DelayedTask;-><init>(J)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/Delayer$DelayedTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/widget/Delayer$DelayedTask;->blocked:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/Delayer$DelayedTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/widget/Delayer$DelayedTask;->blocked:Z

    return p1
.end method

.method static synthetic access$200(Landroid/widget/Delayer$DelayedTask;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Landroid/widget/Delayer$DelayedTask;->delay:J

    return-wide v0
.end method

.method static synthetic access$202(Landroid/widget/Delayer$DelayedTask;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-wide p1, p0, Landroid/widget/Delayer$DelayedTask;->delay:J

    return-wide p1
.end method

.method static synthetic access$400(Landroid/widget/Delayer$DelayedTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/Delayer$DelayedTask;->times:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/Delayer$DelayedTask;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/Delayer$DelayedTask;->reset(J)I

    move-result v0

    return v0
.end method

.method private declared-synchronized reset(J)I
    .locals 1
    .parameter "delay"

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Landroid/widget/Delayer$DelayedTask;->delay:J

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 83
    iget v0, p0, Landroid/widget/Delayer$DelayedTask;->times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Delayer$DelayedTask;->times:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
