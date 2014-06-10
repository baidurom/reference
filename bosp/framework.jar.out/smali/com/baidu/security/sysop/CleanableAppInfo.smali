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

.field public mLabel:Ljava/lang/String;

.field public mOrphanedProcessIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageInfo:Landroid/content/pm/ApplicationInfo;

.field final mPackageName:Ljava/lang/String;

.field public mSize:J


# direct methods
.method constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->items:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mLabel:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageName:Ljava/lang/String;

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mActiveSince:J

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mIsLocked:Z

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->items:Ljava/util/ArrayList;

    .line 40
    iget-object v0, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    .line 41
    iget-object v0, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageName:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mLabel:Ljava/lang/String;

    .line 46
    iget-wide v0, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mActiveSince:J

    iput-wide v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mActiveSince:J

    .line 47
    iget-wide v0, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mSize:J

    iput-wide v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mSize:J

    .line 48
    iget-boolean v0, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mIsLocked:Z

    iput-boolean v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mIsLocked:Z

    .line 49
    iget-object v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method


# virtual methods
.method addItem(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V
    .locals 6
    .parameter "item"

    .prologue
    const-wide/16 v4, 0x0

    .line 53
    iget-wide v0, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mActiveSince:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mActiveSince:J

    iget-wide v2, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mActiveSince:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mActiveSince:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 54
    :cond_0
    iget-wide v0, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mActiveSince:J

    iput-wide v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mActiveSince:J

    .line 56
    :cond_1
    iget-wide v0, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mSize:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 57
    iget-wide v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mSize:J

    iget-wide v2, p1, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->mSize:J

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/baidu/security/sysop/CleanableAppInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method
