.class public Lcom/baidu/themeanimation/util/StatusBarHelper;
.super Ljava/lang/Object;
.source "StatusBarHelper.java"


# instance fields
.field private mIsExpandedViewEnabled:Z

.field private mIsNotificationEnabled:Z

.field private mIsSystemBarNavigationEnabled:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/app/StatusBarManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lcom/baidu/themeanimation/util/StatusBarHelper;->mIsNotificationEnabled:Z

    .line 9
    iput-boolean v0, p0, Lcom/baidu/themeanimation/util/StatusBarHelper;->mIsExpandedViewEnabled:Z

    .line 10
    iput-boolean v0, p0, Lcom/baidu/themeanimation/util/StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    .line 15
    iput-object p1, p0, Lcom/baidu/themeanimation/util/StatusBarHelper;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 16
    return-void
.end method

.method private updateStatusBar()V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, state:I
    iget-boolean v1, p0, Lcom/baidu/themeanimation/util/StatusBarHelper;->mIsExpandedViewEnabled:Z

    if-nez v1, :cond_0

    .line 62
    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 64
    :cond_0
    iget-boolean v1, p0, Lcom/baidu/themeanimation/util/StatusBarHelper;->mIsNotificationEnabled:Z

    if-nez v1, :cond_1

    .line 65
    const/high16 v1, 0x4

    or-int/2addr v0, v1

    .line 67
    :cond_1
    iget-boolean v1, p0, Lcom/baidu/themeanimation/util/StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    if-nez v1, :cond_2

    .line 69
    const/high16 v1, 0x20

    or-int/2addr v0, v1

    .line 70
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    .line 71
    const/high16 v1, 0x40

    or-int/2addr v0, v1

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/baidu/themeanimation/util/StatusBarHelper;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public enableExpandedView(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/baidu/themeanimation/util/StatusBarHelper;->mIsExpandedViewEnabled:Z

    if-eq v0, p1, :cond_0

    .line 37
    iput-boolean p1, p0, Lcom/baidu/themeanimation/util/StatusBarHelper;->mIsExpandedViewEnabled:Z

    .line 38
    invoke-direct {p0}, Lcom/baidu/themeanimation/util/StatusBarHelper;->updateStatusBar()V

    .line 40
    :cond_0
    return-void
.end method

.method public enableNotificationAlerts(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/baidu/themeanimation/util/StatusBarHelper;->mIsNotificationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 25
    iput-boolean p1, p0, Lcom/baidu/themeanimation/util/StatusBarHelper;->mIsNotificationEnabled:Z

    .line 26
    invoke-direct {p0}, Lcom/baidu/themeanimation/util/StatusBarHelper;->updateStatusBar()V

    .line 28
    :cond_0
    return-void
.end method

.method public enableSystemBarNavigation(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/baidu/themeanimation/util/StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 50
    iput-boolean p1, p0, Lcom/baidu/themeanimation/util/StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    .line 51
    invoke-direct {p0}, Lcom/baidu/themeanimation/util/StatusBarHelper;->updateStatusBar()V

    .line 53
    :cond_0
    return-void
.end method
