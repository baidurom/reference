.class public Lcom/android/server/accessibility/AccessibilityManagerService;
.super Landroid/view/accessibility/IAccessibilityManager$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Service;,
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DO_SET_SERVICE_INFO:I = 0xa

.field private static final FUNCTION_REGISTER_EVENT_LISTENER:Ljava/lang/String; = "registerEventListener"

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManagerService"

.field private static final OWN_PROCESS_ID:I

.field private static sIdCounter:I

.field private static sNextWindowId:I


# instance fields
.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field final mComponentNameToServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/accessibility/AccessibilityManagerService$Service;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private final mEnabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledServicesForFeedbackTempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandledFeedbackTypes:I

.field private mHandler:Landroid/os/Handler;

.field private mHasInputFilter:Z

.field private mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field private final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAccessibilityEnabled:Z

.field private mIsTouchExplorationEnabled:Z

.field final mLock:Ljava/lang/Object;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

.field final mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$Service;",
            ">;"
        }
    .end annotation
.end field

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mWindowIdToInteractionConnectionWrapperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowIdToWindowTokenMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    .line 99
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mClients:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;

    .line 122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToInteractionConnectionWrapperMap:Landroid/util/SparseArray;

    .line 125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;

    .line 127
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandledFeedbackTypes:I

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServicesForFeedbackTempList:Ljava/util/List;

    .line 150
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    .line 169
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 170
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 171
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Lcom/android/internal/os/HandlerCaller$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 172
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 174
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 176
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->registerPackageChangeAndBootCompletedBroadcastReceiver()V

    .line 177
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->registerSettingsContentObservers()V

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyEventListenerLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateAccessibilityServiceListLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionLocked(I)V

    return-void
.end method

.method static synthetic access$1208()I
    .locals 2

    .prologue
    .line 87
    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryAddServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryRemoveServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToInteractionConnectionWrapperMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->manageServicesLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->manageAccessibilityServices()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsTouchExplorationEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClientsLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleAccessibilityEnabledSettingChangedLocked()V

    return-void
.end method

.method private canDispathEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z
    .locals 6
    .parameter "service"
    .parameter "event"
    .parameter "handledFeedbackTypes"

    .prologue
    const/4 v4, 0x0

    .line 712
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isConfigured()Z

    move-result v5

    if-nez v5, :cond_1

    .line 732
    :cond_0
    :goto_0
    return v4

    .line 716
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 717
    .local v0, eventType:I
    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    and-int/2addr v5, v0

    if-ne v5, v0, :cond_0

    .line 721
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    .line 722
    .local v3, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 724
    .local v2, packageName:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 725
    :cond_2
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    .line 726
    .local v1, feedbackType:I
    and-int v5, p3, v1

    if-ne v5, v1, :cond_3

    const/16 v5, 0x10

    if-ne v1, v5, :cond_0

    .line 728
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private getState()I
    .locals 2

    .prologue
    .line 874
    const/4 v0, 0x0

    .line 875
    .local v0, state:I
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_0

    .line 876
    or-int/lit8 v0, v0, 0x1

    .line 879
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_1

    .line 880
    or-int/lit8 v0, v0, 0x2

    .line 882
    :cond_1
    return v0
.end method

.method private handleAccessibilityEnabledSettingChangedLocked()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 909
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    .line 912
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_1

    .line 913
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->manageServicesLocked()V

    .line 917
    :goto_1
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked()V

    .line 918
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClientsLocked()V

    .line 919
    return-void

    :cond_0
    move v0, v1

    .line 909
    goto :goto_0

    .line 915
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked()V

    goto :goto_1
.end method

.method private manageAccessibilityServices()V
    .locals 2

    .prologue
    .line 1379
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    if-ne v0, v1, :cond_0

    .line 1380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    .line 1381
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1382
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked()V

    .line 1383
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClientsLocked()V

    .line 1384
    monitor-exit v1

    .line 1386
    :cond_0
    return-void

    .line 1384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private manageServicesLocked()V
    .locals 4

    .prologue
    .line 739
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAutomationService()V

    .line 740
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateEnabledServicesLocked(Ljava/util/Set;)V

    .line 741
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateServicesStateLocked(Ljava/util/List;Ljava/util/Set;)I

    move-result v0

    .line 745
    .local v0, enabledInstalledServicesCount:I
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 746
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 749
    :cond_0
    return-void
.end method

.method private notifyAccessibilityServiceDelayedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 9
    .parameter "service"
    .parameter "event"

    .prologue
    .line 583
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 584
    :try_start_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 588
    .local v0, eventType:I
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 589
    .local v2, newEvent:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    .line 590
    .local v3, oldEvent:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 592
    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    shl-int/lit8 v5, v5, 0x10

    or-int v4, v0, v5

    .line 593
    .local v4, what:I
    if-eqz v3, :cond_0

    .line 594
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 595
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 598
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 599
    .local v1, message:Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 600
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    iget-wide v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    invoke-virtual {v5, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 601
    monitor-exit v6

    .line 602
    return-void

    .line 601
    .end local v0           #eventType:I
    .end local v1           #message:Landroid/os/Message;
    .end local v2           #newEvent:Landroid/view/accessibility/AccessibilityEvent;
    .end local v3           #oldEvent:Landroid/view/accessibility/AccessibilityEvent;
    .end local v4           #what:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 6
    .parameter "event"
    .parameter "isDefault"

    .prologue
    .line 556
    const/4 v1, 0x0

    .local v1, i:I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 557
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 559
    .local v3, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    if-ne v4, p2, :cond_0

    .line 560
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandledFeedbackTypes:I

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->canDispathEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 561
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandledFeedbackTypes:I

    iget v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandledFeedbackTypes:I

    .line 562
    invoke-direct {p0, v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServiceDelayedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    .end local v0           #count:I
    .end local v3           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :catch_0
    move-exception v2

    .line 572
    :cond_1
    return-void
.end method

.method private notifyEventListenerLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 6
    .parameter "service"
    .parameter "eventType"

    .prologue
    .line 611
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IEventListener;

    .line 615
    .local v1, listener:Landroid/accessibilityservice/IEventListener;
    if-nez v1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 636
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v0, :cond_0

    .line 640
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 642
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 643
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    .line 647
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    .line 648
    invoke-interface {v1, v0}, Landroid/accessibilityservice/IEventListener;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 649
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 653
    :catch_0
    move-exception v2

    .line 654
    .local v2, re:Landroid/os/RemoteException;
    const-string v3, "AccessibilityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error during sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 645
    .end local v2           #re:Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private populateAccessibilityServiceListLocked()V
    .locals 10

    .prologue
    .line 526
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 528
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x84

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 532
    .local v3, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 533
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 536
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_start_0
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .line 537
    .local v0, accessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 532
    .end local v0           #accessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    :catch_0
    move-exception v6

    .line 539
    .local v6, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "AccessibilityManagerService"

    const-string v8, "Error while initializing AccessibilityServiceInfo"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 540
    .end local v6           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v4

    .line 541
    .local v4, ioe:Ljava/io/IOException;
    const-string v7, "AccessibilityManagerService"

    const-string v8, "Error while initializing AccessibilityServiceInfo"

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 544
    .end local v4           #ioe:Ljava/io/IOException;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method private populateEnabledServicesLocked(Ljava/util/Set;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 788
    .local p1, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 790
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 793
    .local v1, servicesValue:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 794
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 795
    .local v2, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 796
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 797
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 798
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 801
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 802
    .local v0, enabledService:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 803
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 807
    .end local v0           #enabledService:Landroid/content/ComponentName;
    .end local v2           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v3           #str:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private registerIPOReceiver(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1388
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1389
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1390
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1391
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$7;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1404
    return-void
.end method

.method private registerPackageChangeAndBootCompletedBroadcastReceiver()V
    .locals 4

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 192
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 287
    .local v2, monitor:Lcom/android/internal/content/PackageMonitor;
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Z)V

    .line 290
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, bootFiler:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    return-void
.end method

.method private registerSettingsContentObservers()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 299
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 301
    .local v2, contentResolver:Landroid/content/ContentResolver;
    const-string v4, "accessibility_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 303
    .local v0, accessibilityEnabledUri:Landroid/net/Uri;
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$3;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    invoke-virtual {v2, v0, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 315
    const-string v4, "touch_exploration_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 317
    .local v3, touchExplorationRequestedUri:Landroid/net/Uri;
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$4;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$4;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 333
    const-string v4, "enabled_accessibility_services"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 335
    .local v1, accessibilityServicesUri:Landroid/net/Uri;
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$5;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$5;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    invoke-virtual {v2, v1, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 346
    return-void
.end method

.method private removeAccessibilityInteractionConnectionLocked(I)V
    .locals 1
    .parameter "windowId"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 516
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToInteractionConnectionWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 520
    return-void
.end method

.method private sendStateToClientsLocked()V
    .locals 5

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getState()I

    move-result v3

    .line 857
    .local v3, state:I
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 859
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {v4, v3}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 860
    :catch_0
    move-exception v2

    .line 861
    .local v2, re:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 862
    add-int/lit8 v0, v0, -0x1

    .line 863
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 866
    .end local v2           #re:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private tryAddServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->linkToOwnDeath()V

    .line 669
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private tryRemoveServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 684
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 685
    .local v0, removed:Z
    if-nez v0, :cond_0

    .line 686
    const/4 v0, 0x0

    .line 693
    .end local v0           #removed:Z
    :goto_0
    return v0

    .line 688
    .restart local v0       #removed:Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 690
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unlinkToOwnDeath()V

    .line 691
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->dispose()V

    .line 692
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked()V

    goto :goto_0
.end method

.method private unbindAllServicesLocked()V
    .locals 5

    .prologue
    .line 755
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    .line 757
    .local v3, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 758
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 759
    .local v2, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbind()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 760
    add-int/lit8 v1, v1, -0x1

    .line 761
    add-int/lit8 v0, v0, -0x1

    .line 757
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 764
    .end local v2           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1
    return-void
.end method

.method private unbindAutomationService()V
    .locals 5

    .prologue
    .line 770
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    .line 771
    .local v2, runningServices:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 772
    .local v1, runningServiceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 773
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 774
    .local v3, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-eqz v4, :cond_1

    .line 775
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbind()Z

    .line 779
    .end local v3           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    return-void

    .line 772
    .restart local v3       #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateInputFilterLocked()V
    .locals 2

    .prologue
    .line 889
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsTouchExplorationEnabled:Z

    if-eqz v0, :cond_2

    .line 890
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-nez v0, :cond_1

    .line 891
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 892
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-nez v0, :cond_0

    .line 893
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setInputFilter(Lcom/android/server/wm/InputFilter;)V

    .line 903
    :cond_1
    :goto_0
    return-void

    .line 899
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v0, :cond_1

    .line 900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 901
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setInputFilter(Lcom/android/server/wm/InputFilter;)V

    goto :goto_0
.end method

.method private updateServicesStateLocked(Ljava/util/List;Ljava/util/Set;)I
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 820
    .local p1, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .local p2, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 821
    .local v1, componentNameToServiceMap:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    iget-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    .line 823
    .local v6, isEnabled:Z
    const/4 v3, 0x0

    .line 824
    .local v3, enabledInstalledServices:I
    const/4 v4, 0x0

    .local v4, i:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 825
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 826
    .local v5, installedService:Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 828
    .local v0, componentName:Landroid/content/ComponentName;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 830
    .local v7, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    if-eqz v6, :cond_3

    .line 831
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 832
    if-nez v7, :cond_0

    .line 833
    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .end local v7           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    const/4 v8, 0x0

    invoke-direct {v7, p0, v0, v5, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)V

    .line 835
    .restart local v7       #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->bind()Z

    .line 836
    add-int/lit8 v3, v3, 0x1

    .line 824
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 838
    :cond_2
    if-eqz v7, :cond_1

    .line 839
    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbind()Z

    goto :goto_1

    .line 843
    :cond_3
    if-eqz v7, :cond_1

    .line 844
    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbind()Z

    goto :goto_1

    .line 849
    .end local v0           #componentName:Landroid/content/ComponentName;
    .end local v5           #installedService:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v7           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_4
    return v3
.end method


# virtual methods
.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I
    .locals 7
    .parameter "windowToken"
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 447
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 448
    move-object v1, p1

    .line 449
    .local v1, addedWindowToken:Landroid/view/IWindow;
    move-object v0, p2

    .line 450
    .local v0, addedConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_start_0
    sget v2, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    .line 451
    .local v2, windowId:I
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    invoke-direct {v3, p0, v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;)V

    .line 453
    .local v3, wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->linkToDeath()V

    .line 454
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToInteractionConnectionWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    monitor-exit v5

    return v2

    .line 460
    .end local v2           #windowId:I
    .end local v3           #wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public addClient(Landroid/view/accessibility/IAccessibilityManagerClient;)I
    .locals 5
    .parameter "client"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 350
    move-object v0, p1

    .line 351
    .local v0, addedClient:Landroid/view/accessibility/IAccessibilityManagerClient;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$6;

    invoke-direct {v3, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$6;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;)V

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 362
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getState()I

    move-result v1

    monitor-exit v2

    return v1

    .line 363
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "message"

    .prologue
    .line 420
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 441
    const-string v4, "AccessibilityManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown message type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_0
    return-void

    .line 422
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 424
    .local v0, arguments:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 425
    .local v1, info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 427
    .local v3, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 431
    :try_start_0
    iget-object v2, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 432
    .local v2, oldInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v2, :cond_0

    .line 433
    invoke-virtual {v2, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 434
    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 438
    :goto_1
    monitor-exit v5

    goto :goto_0

    .end local v2           #oldInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 436
    .restart local v2       #oldInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    :try_start_1
    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 420
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public getEnabledAccessibilityServiceList(I)Ljava/util/List;
    .locals 9
    .parameter "feedbackType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServicesForFeedbackTempList:Ljava/util/List;

    .line 387
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 388
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    .line 389
    .local v5, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 390
    :cond_0
    if-eqz p1, :cond_2

    .line 391
    const/4 v6, 0x1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v8

    shl-int v0, v6, v8

    .line 392
    .local v0, feedbackTypeBit:I
    xor-int/lit8 v6, v0, -0x1

    and-int/2addr p1, v6

    .line 393
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 394
    .local v4, serviceCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 395
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 396
    .local v3, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v6, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    and-int/2addr v6, v0

    if-eqz v6, :cond_1

    .line 397
    iget-object v6, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    .end local v0           #feedbackTypeBit:I
    .end local v1           #i:I
    .end local v3           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v4           #serviceCount:I
    :cond_2
    monitor-exit v7

    .line 402
    return-object v2

    .line 401
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getInstalledAccessibilityServiceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public interrupt()V
    .locals 8

    .prologue
    .line 406
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 407
    const/4 v1, 0x0

    .local v1, i:I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 408
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    .local v3, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :try_start_1
    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IEventListener;

    invoke-interface {v4}, Landroid/accessibilityservice/IEventListener;->onInterrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 407
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    :catch_0
    move-exception v2

    .line 412
    .local v2, re:Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "AccessibilityManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error during sending interrupt request to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 416
    .end local v0           #count:I
    .end local v2           #re:Landroid/os/RemoteException;
    .end local v3           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #count:I
    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    return-void
.end method

.method public registerEventListener(Landroid/accessibilityservice/IEventListener;)V
    .locals 10
    .parameter "listener"

    .prologue
    const/4 v9, 0x1

    .line 480
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v7, "android.permission.RETRIEVE_WINDOW_CONTENT"

    const-string v8, "registerEventListener"

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "foo.bar"

    const-string v7, "AutomationAccessibilityService"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .local v1, componentName:Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 490
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 491
    .local v4, runningServiceCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 492
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 493
    .local v3, runningService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbind()Z

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    .end local v3           #runningService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    if-nez v6, :cond_1

    .line 497
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    .line 498
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClientsLocked()V

    .line 500
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 503
    .local v0, accessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v6, -0x1

    iput v6, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 504
    const/16 v6, 0x10

    iput v6, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 505
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-direct {v5, p0, v1, v0, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)V

    .line 506
    .local v5, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-interface {p1}, Landroid/accessibilityservice/IEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 507
    return-void

    .line 500
    .end local v0           #accessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v2           #i:I
    .end local v4           #runningServiceCount:I
    .end local v5           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 7
    .parameter "windowToken"

    .prologue
    .line 464
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 465
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 466
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 467
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v4, v6, :cond_0

    .line 468
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 469
    .local v2, windowId:I
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToInteractionConnectionWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 471
    .local v3, wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->unlinkToDeath()V

    .line 472
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionLocked(I)V

    .line 473
    monitor-exit v5

    .line 477
    .end local v2           #windowId:I
    .end local v3           #wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :goto_1
    return-void

    .line 466
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    :cond_1
    monitor-exit v5

    goto :goto_1

    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 367
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 368
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canDispatchAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    invoke-static {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$900(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateRetrievalAllowingWindowAndEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 370
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 371
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 373
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 375
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandledFeedbackTypes:I

    .line 376
    sget v2, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    if-eq v2, v3, :cond_1

    :goto_0
    return v0

    .line 373
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    .line 376
    goto :goto_0
.end method
