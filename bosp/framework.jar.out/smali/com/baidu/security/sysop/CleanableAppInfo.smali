.class public Lcom/baidu/security/sysop/CleanableAppInfo;
.super Ljava/lang/Object;
.source "CleanableAppInfo.java"


# instance fields
.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field public mActiveSince:J

.field public mIsLocked:Z

.field public final mLabel:Ljava/lang/String;

.field public final mPackageInfo:Landroid/content/pm/ApplicationInfo;

.field final mPackageName:Ljava/lang/String;

.field public mSize:J


# direct methods
.method constructor <init>(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->items:Ljava/util/ArrayList;

    .line 30
    iget-object v0, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    .line 31
    iget-object v0, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageName:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mLabel:Ljava/lang/String;

    .line 36
    iget-wide v0, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mActiveSince:J

    iput-wide v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mActiveSince:J

    .line 37
    iget-wide v0, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mSize:J

    iput-wide v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mSize:J

    .line 38
    iget-boolean v0, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mIsLocked:Z

    iput-boolean v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mIsLocked:Z

    .line 39
    iget-object v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method


# virtual methods
.method addItem(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V
    .locals 6
    .parameter "item"

    .prologue
    const-wide/16 v4, 0x0

    .line 43
    iget-wide v0, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mActiveSince:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mActiveSince:J

    iget-wide v2, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mActiveSince:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mActiveSince:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 44
    :cond_0
    iget-wide v0, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mActiveSince:J

    iput-wide v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mActiveSince:J

    .line 46
    :cond_1
    iget-wide v0, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mSize:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 47
    iget-wide v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mSize:J

    iget-wide v2, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mSize:J

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method
