.class Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Service"
.end annotation


# static fields
.field private static final MSG_ON_GESTURE:I = -0x80000000


# instance fields
.field mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field mCanRetrieveScreenContent:Z

.field mComponentName:Landroid/content/ComponentName;

.field mEventTypes:I

.field mFeedbackType:I

.field public mHandler:Landroid/os/Handler;

.field mHasSameEventTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field mId:I

.field mIncludeNotImportantViews:Z

.field mIntent:Landroid/content/Intent;

.field mIsAutomation:Z

.field mIsDefault:Z

.field mNotificationTimeout:J

.field mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field mRequestTouchExplorationMode:Z

.field final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field mService:Landroid/os/IBinder;

.field mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field final mTempBounds:Landroid/graphics/Rect;

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)V
    .locals 6
    .parameter
    .parameter "userId"
    .parameter "componentName"
    .parameter "accessibilityServiceInfo"
    .parameter "isAutomation"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1507
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    .line 1445
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    .line 1457
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    .line 1475
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    .line 1480
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    .line 1486
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mHandler:Landroid/os/Handler;

    .line 1504
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mHasSameEventTypeList:Ljava/util/List;

    .line 1508
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    .line 1509
    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1510
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2908()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    .line 1511
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    .line 1512
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1513
    iput-boolean p5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    .line 1514
    if-nez p5, :cond_1

    .line 1515
    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCanRetrieveWindowContent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mCanRetrieveScreenContent:Z

    .line 1516
    iget v2, p4, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    .line 1519
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    .line 1520
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.client_label"

    const v3, #string@accessibility_binding_label#t

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1522
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.client_intent"

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1527
    :goto_1
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 1528
    return-void

    :cond_0
    move v0, v1

    .line 1516
    goto :goto_0

    .line 1525
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mCanRetrieveScreenContent:Z

    goto :goto_1
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1436
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyGestureInternal(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1436
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyAccessibilityEventInternal(I)V

    return-void
.end method

.method private expandNotifications()V
    .locals 5

    .prologue
    .line 2141
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2143
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 2145
    .local v0, statusBarManager:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V

    .line 2147
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2148
    return-void
.end method

.method private expandQuickSettings()V
    .locals 5

    .prologue
    .line 2151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2153
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 2155
    .local v0, statusBarManager:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expandSettingsPanel()V

    .line 2157
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2158
    return-void
.end method

.method private getCompatibilityScale(I)F
    .locals 2
    .parameter "windowId"

    .prologue
    .line 2200
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 2201
    .local v0, windowToken:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 2202
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->getWindowCompatibilityScale(Landroid/os/IBinder;)F

    move-result v1

    .line 2211
    .end local v0           #windowToken:Landroid/os/IBinder;
    :goto_0
    return v1

    .line 2204
    .restart local v0       #windowToken:Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #windowToken:Landroid/os/IBinder;
    check-cast v0, Landroid/os/IBinder;

    .line 2205
    .restart local v0       #windowToken:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 2206
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->getWindowCompatibilityScale(Landroid/os/IBinder;)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2208
    .end local v0           #windowToken:Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 2211
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method private getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 2
    .parameter "windowId"

    .prologue
    .line 2178
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 2179
    .local v0, wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    if-nez v0, :cond_0

    .line 2180
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 2182
    .restart local v0       #wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :cond_0
    if-eqz v0, :cond_1

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2183
    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    .line 2188
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyAccessibilityEventInternal(I)V
    .locals 7
    .parameter "eventType"

    .prologue
    .line 2034
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2035
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 2039
    .local v2, listener:Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-nez v2, :cond_0

    .line 2040
    monitor-exit v5

    .line 2098
    :goto_0
    return-void

    .line 2043
    :cond_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 2060
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    if-nez v0, :cond_1

    .line 2061
    monitor-exit v5

    goto :goto_0

    .line 2086
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    .end local v2           #listener:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2064
    .restart local v0       #event:Landroid/view/accessibility/AccessibilityEvent;
    .restart local v2       #listener:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2069
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mHasSameEventTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2070
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mHasSameEventTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 2071
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mHasSameEventTypeList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 2072
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mHasSameEventTypeList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2073
    const-string v4, "AccessibilityManagerService"

    const-string v6, "Put event to mPendingEvents"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    .end local v1           #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2081
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    .line 2085
    :goto_2
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    .line 2086
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2089
    :try_start_2
    invoke-interface {v2, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2096
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 2070
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2083
    .end local v1           #i:I
    :cond_4
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2093
    :catch_0
    move-exception v3

    .line 2094
    .local v3, re:Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "AccessibilityManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2096
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto/16 :goto_0

    .end local v3           #re:Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    throw v4
.end method

.method private notifyGestureInternal(I)V
    .locals 5
    .parameter "gestureId"

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 2106
    .local v0, listener:Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_0

    .line 2108
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onGesture(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2114
    :cond_0
    :goto_0
    return-void

    .line 2109
    :catch_0
    move-exception v1

    .line 2110
    .local v1, re:Landroid/os/RemoteException;
    const-string v2, "AccessibilityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during sending gesture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private openRecents()V
    .locals 6

    .prologue
    .line 2161
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2163
    .local v2, token:J
    const-string v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 2166
    .local v1, statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2171
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2172
    return-void

    .line 2167
    :catch_0
    move-exception v0

    .line 2168
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "AccessibilityManagerService"

    const-string v5, "Error toggling recent apps."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resolveAccessibilityWindowIdLocked(I)I
    .locals 1
    .parameter "accessibilityWindowId"

    .prologue
    .line 2192
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2193
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)I

    move-result p1

    .line 2195
    .end local p1
    :cond_0
    return p1
.end method

.method private sendDownAndUpKeyEvents(I)V
    .locals 18
    .parameter "keyCode"

    .prologue
    .line 2117
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 2120
    .local v15, token:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2121
    .local v1, downTime:J
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v12, 0x101

    const/4 v13, 0x0

    move-wide v3, v1

    move/from16 v6, p1

    invoke-static/range {v1 .. v13}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v14

    .line 2124
    .local v14, down:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v14, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2126
    invoke-virtual {v14}, Landroid/view/KeyEvent;->recycle()V

    .line 2129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2130
    .local v3, upTime:J
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v12, 0x101

    const/4 v13, 0x0

    move/from16 v6, p1

    invoke-static/range {v1 .. v13}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v17

    .line 2133
    .local v17, up:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2135
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyEvent;->recycle()V

    .line 2137
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2138
    return-void
.end method


# virtual methods
.method public bind()Z
    .locals 4

    .prologue
    .line 1568
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result v0

    .line 1571
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public binderDied()V
    .locals 4

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1969
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->tryRemoveServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    .line 1972
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-eqz v0, :cond_0

    .line 1973
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$902(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1974
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->recreateInternalStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1976
    :cond_0
    monitor-exit v1

    .line 1977
    return-void

    .line 1976
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public canReceiveEvents()Z
    .locals 1

    .prologue
    .line 1594
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1958
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-interface {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->setConnection(Landroid/accessibilityservice/IAccessibilityServiceConnection;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1962
    :goto_0
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 1963
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1964
    return-void

    .line 1959
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)F
    .locals 14
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingTid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1735
    const/4 v0, 0x0

    .line 1736
    .local v0, connection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1737
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v12

    .line 1740
    .local v12, resolvedUserId:I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    if-eq v12, v1, :cond_0

    .line 1741
    const/high16 v1, -0x4080

    monitor-exit v2

    .line 1771
    :goto_0
    return v1

    .line 1743
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1744
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v13

    .line 1745
    .local v13, resolvedWindowId:I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p0, v13}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v11

    .line 1747
    .local v11, permissionGranted:Z
    if-nez v11, :cond_1

    .line 1748
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1755
    .end local v11           #permissionGranted:Z
    .end local v12           #resolvedUserId:I
    .end local v13           #resolvedWindowId:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1750
    .restart local v11       #permissionGranted:Z
    .restart local v12       #resolvedUserId:I
    .restart local v13       #resolvedWindowId:I
    :cond_1
    :try_start_1
    invoke-direct {p0, v13}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    .line 1751
    if-nez v0, :cond_2

    .line 1752
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1755
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1756
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIncludeNotImportantViews:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    :goto_1
    or-int v5, p6, v1

    .line 1758
    .local v5, allFlags:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1759
    .local v6, interrogatingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .local v9, identityToken:J
    move-wide/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-wide/from16 v7, p7

    .line 1761
    :try_start_2
    invoke-interface/range {v0 .. v8}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 1763
    invoke-direct {p0, v13}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getCompatibilityScale(I)F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 1769
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1756
    .end local v5           #allFlags:I
    .end local v6           #interrogatingPid:I
    .end local v9           #identityToken:J
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1764
    .restart local v5       #allFlags:I
    .restart local v6       #interrogatingPid:I
    .restart local v9       #identityToken:J
    :catch_0
    move-exception v1

    .line 1769
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1771
    const/4 v1, 0x0

    goto :goto_0

    .line 1769
    :catchall_1
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public findAccessibilityNodeInfoByViewId(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F
    .locals 15
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "viewId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingTid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1645
    const/4 v0, 0x0

    .line 1646
    .local v0, connection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1647
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v13

    .line 1650
    .local v13, resolvedUserId:I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    if-eq v13, v1, :cond_0

    .line 1651
    const/high16 v1, -0x4080

    monitor-exit v2

    .line 1680
    :goto_0
    return v1

    .line 1653
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1654
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v12

    .line 1655
    .local v12, permissionGranted:Z
    if-nez v12, :cond_1

    .line 1656
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1664
    .end local v12           #permissionGranted:Z
    .end local v13           #resolvedUserId:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1658
    .restart local v12       #permissionGranted:Z
    .restart local v13       #resolvedUserId:I
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v14

    .line 1659
    .local v14, resolvedWindowId:I
    invoke-direct {p0, v14}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    .line 1660
    if-nez v0, :cond_2

    .line 1661
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1664
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1665
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIncludeNotImportantViews:Z

    if-eqz v1, :cond_3

    const/16 v6, 0x8

    .line 1667
    .local v6, flags:I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1668
    .local v7, interrogatingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, identityToken:J
    move-wide/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v8, p7

    .line 1670
    :try_start_2
    invoke-interface/range {v0 .. v9}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByViewId(JIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 1672
    invoke-direct {p0, v14}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getCompatibilityScale(I)F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 1678
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1665
    .end local v6           #flags:I
    .end local v7           #interrogatingPid:I
    .end local v10           #identityToken:J
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1673
    .restart local v6       #flags:I
    .restart local v7       #interrogatingPid:I
    .restart local v10       #identityToken:J
    :catch_0
    move-exception v1

    .line 1678
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1680
    const/4 v1, 0x0

    goto :goto_0

    .line 1678
    :catchall_1
    move-exception v1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F
    .locals 15
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "text"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingTid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1689
    const/4 v0, 0x0

    .line 1690
    .local v0, connection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1691
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v13

    .line 1694
    .local v13, resolvedUserId:I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    if-eq v13, v1, :cond_0

    .line 1695
    const/high16 v1, -0x4080

    monitor-exit v2

    .line 1726
    :goto_0
    return v1

    .line 1697
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1698
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v14

    .line 1699
    .local v14, resolvedWindowId:I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p0, v14}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v12

    .line 1701
    .local v12, permissionGranted:Z
    if-nez v12, :cond_1

    .line 1702
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1709
    .end local v12           #permissionGranted:Z
    .end local v13           #resolvedUserId:I
    .end local v14           #resolvedWindowId:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1704
    .restart local v12       #permissionGranted:Z
    .restart local v13       #resolvedUserId:I
    .restart local v14       #resolvedWindowId:I
    :cond_1
    :try_start_1
    invoke-direct {p0, v14}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    .line 1705
    if-nez v0, :cond_2

    .line 1706
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1709
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1710
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIncludeNotImportantViews:Z

    if-eqz v1, :cond_3

    const/16 v6, 0x8

    .line 1712
    .local v6, flags:I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1713
    .local v7, interrogatingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, identityToken:J
    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v8, p7

    .line 1715
    :try_start_2
    invoke-interface/range {v0 .. v9}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 1718
    invoke-direct {p0, v14}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getCompatibilityScale(I)F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 1724
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1710
    .end local v6           #flags:I
    .end local v7           #interrogatingPid:I
    .end local v10           #identityToken:J
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1719
    .restart local v6       #flags:I
    .restart local v7       #interrogatingPid:I
    .restart local v10       #identityToken:J
    :catch_0
    move-exception v1

    .line 1724
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1726
    const/4 v1, 0x0

    goto :goto_0

    .line 1724
    :catchall_1
    move-exception v1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F
    .locals 15
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "focusType"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingTid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1780
    const/4 v0, 0x0

    .line 1781
    .local v0, connection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1782
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v13

    .line 1785
    .local v13, resolvedUserId:I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    if-eq v13, v1, :cond_0

    .line 1786
    const/high16 v1, -0x4080

    monitor-exit v2

    .line 1816
    :goto_0
    return v1

    .line 1788
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1789
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v14

    .line 1790
    .local v14, resolvedWindowId:I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p0, v14}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v12

    .line 1792
    .local v12, permissionGranted:Z
    if-nez v12, :cond_1

    .line 1793
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1800
    .end local v12           #permissionGranted:Z
    .end local v13           #resolvedUserId:I
    .end local v14           #resolvedWindowId:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1795
    .restart local v12       #permissionGranted:Z
    .restart local v13       #resolvedUserId:I
    .restart local v14       #resolvedWindowId:I
    :cond_1
    :try_start_1
    invoke-direct {p0, v14}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    .line 1796
    if-nez v0, :cond_2

    .line 1797
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1800
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1801
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIncludeNotImportantViews:Z

    if-eqz v1, :cond_3

    const/16 v6, 0x8

    .line 1803
    .local v6, flags:I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1804
    .local v7, interrogatingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, identityToken:J
    move-wide/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v8, p7

    .line 1806
    :try_start_2
    invoke-interface/range {v0 .. v9}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 1808
    invoke-direct {p0, v14}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getCompatibilityScale(I)F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 1814
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1801
    .end local v6           #flags:I
    .end local v7           #interrogatingPid:I
    .end local v10           #identityToken:J
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1809
    .restart local v6       #flags:I
    .restart local v7       #interrogatingPid:I
    .restart local v10       #identityToken:J
    :catch_0
    move-exception v1

    .line 1814
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1816
    const/4 v1, 0x0

    goto :goto_0

    .line 1814
    :catchall_1
    move-exception v1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F
    .locals 15
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "direction"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingTid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1825
    const/4 v0, 0x0

    .line 1826
    .local v0, connection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1827
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v13

    .line 1830
    .local v13, resolvedUserId:I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    if-eq v13, v1, :cond_0

    .line 1831
    const/high16 v1, -0x4080

    monitor-exit v2

    .line 1861
    :goto_0
    return v1

    .line 1833
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1834
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v14

    .line 1835
    .local v14, resolvedWindowId:I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p0, v14}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v12

    .line 1837
    .local v12, permissionGranted:Z
    if-nez v12, :cond_1

    .line 1838
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1845
    .end local v12           #permissionGranted:Z
    .end local v13           #resolvedUserId:I
    .end local v14           #resolvedWindowId:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1840
    .restart local v12       #permissionGranted:Z
    .restart local v13       #resolvedUserId:I
    .restart local v14       #resolvedWindowId:I
    :cond_1
    :try_start_1
    invoke-direct {p0, v14}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    .line 1841
    if-nez v0, :cond_2

    .line 1842
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1845
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1846
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIncludeNotImportantViews:Z

    if-eqz v1, :cond_3

    const/16 v6, 0x8

    .line 1848
    .local v6, flags:I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1849
    .local v7, interrogatingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, identityToken:J
    move-wide/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v8, p7

    .line 1851
    :try_start_2
    invoke-interface/range {v0 .. v9}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 1853
    invoke-direct {p0, v14}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getCompatibilityScale(I)F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 1859
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1846
    .end local v6           #flags:I
    .end local v7           #interrogatingPid:I
    .end local v10           #identityToken:J
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1854
    .restart local v6       #flags:I
    .restart local v7       #interrogatingPid:I
    .restart local v10       #identityToken:J
    :catch_0
    move-exception v1

    .line 1859
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1861
    const/4 v1, 0x0

    goto :goto_0

    .line 1859
    :catchall_1
    move-exception v1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 2

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1600
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    monitor-exit v1

    return-object v0

    .line 1601
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public linkToOwnDeath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1948
    return-void
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    .line 1985
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 1986
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 1994
    .local v1, eventType:I
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    .line 1995
    .local v3, newEvent:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityEvent;

    .line 1997
    .local v5, oldEvent:Landroid/view/accessibility/AccessibilityEvent;
    move v6, v1

    .line 2000
    .local v6, what:I
    if-eqz v5, :cond_2

    .line 2003
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2004
    .local v4, newEventPackageName:Ljava/lang/CharSequence;
    if-nez v4, :cond_0

    const/4 v0, 0x1

    .line 2007
    .local v0, eventFromSamePackage:Z
    :goto_0
    if-nez v0, :cond_1

    .line 2008
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mHasSameEventTypeList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2009
    const-string v7, "AccessibilityManagerService"

    const-string v9, "Add the newEvent to mHasSameEventTypeList"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    .end local v0           #eventFromSamePackage:Z
    .end local v4           #newEventPackageName:Ljava/lang/CharSequence;
    :goto_1
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2021
    .local v2, message:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mHandler:Landroid/os/Handler;

    iget-wide v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    invoke-virtual {v7, v2, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2022
    monitor-exit v8

    .line 2023
    return-void

    .line 2004
    .end local v2           #message:Landroid/os/Message;
    .restart local v4       #newEventPackageName:Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2011
    .restart local v0       #eventFromSamePackage:Z
    :cond_1
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2012
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2013
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_1

    .line 2022
    .end local v0           #eventFromSamePackage:Z
    .end local v1           #eventType:I
    .end local v3           #newEvent:Landroid/view/accessibility/AccessibilityEvent;
    .end local v4           #newEventPackageName:Ljava/lang/CharSequence;
    .end local v5           #oldEvent:Landroid/view/accessibility/AccessibilityEvent;
    .end local v6           #what:I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 2016
    .restart local v1       #eventType:I
    .restart local v3       #newEvent:Landroid/view/accessibility/AccessibilityEvent;
    .restart local v5       #oldEvent:Landroid/view/accessibility/AccessibilityEvent;
    .restart local v6       #what:I
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public notifyGesture(I)V
    .locals 3
    .parameter "gestureId"

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mHandler:Landroid/os/Handler;

    const/high16 v1, -0x8000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2102
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "componentName"
    .parameter "service"

    .prologue
    .line 1627
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 1628
    invoke-static {p2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1630
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-interface {v1, p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->setConnection(Landroid/accessibilityservice/IAccessibilityServiceConnection;I)V

    .line 1631
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1632
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->tryAddServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    invoke-static {v1, p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    .line 1633
    monitor-exit v2

    .line 1637
    :goto_0
    return-void

    .line 1633
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1634
    :catch_0
    move-exception v0

    .line 1635
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "AccessibilityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while setting Controller for service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "componentName"

    .prologue
    .line 1944
    return-void
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 20
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "action"
    .parameter "arguments"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingTid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1870
    const/4 v4, 0x0

    .line 1871
    .local v4, connection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1872
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v18

    .line 1875
    .local v18, resolvedUserId:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v5

    move/from16 v0, v18

    if-eq v0, v5, :cond_0

    .line 1876
    const/4 v5, 0x0

    monitor-exit v6

    .line 1905
    :goto_0
    return v5

    .line 1878
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1879
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v19

    .line 1880
    .local v19, resolvedWindowId:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canPerformActionLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;IILandroid/os/Bundle;)Z

    move-result v17

    .line 1882
    .local v17, permissionGranted:Z
    if-nez v17, :cond_1

    .line 1883
    const/4 v5, 0x0

    monitor-exit v6

    goto :goto_0

    .line 1890
    .end local v17           #permissionGranted:Z
    .end local v18           #resolvedUserId:I
    .end local v19           #resolvedWindowId:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1885
    .restart local v17       #permissionGranted:Z
    .restart local v18       #resolvedUserId:I
    .restart local v19       #resolvedWindowId:I
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    .line 1886
    if-nez v4, :cond_2

    .line 1887
    const/4 v5, 0x0

    monitor-exit v6

    goto :goto_0

    .line 1890
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1891
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIncludeNotImportantViews:Z

    if-eqz v5, :cond_3

    const/16 v11, 0x8

    .line 1893
    .local v11, flags:I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1894
    .local v12, interrogatingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .local v15, identityToken:J
    move-wide/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-wide/from16 v13, p8

    .line 1896
    :try_start_2
    invoke-interface/range {v4 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1903
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1905
    :goto_2
    const/4 v5, 0x1

    goto :goto_0

    .line 1891
    .end local v11           #flags:I
    .end local v12           #interrogatingPid:I
    .end local v15           #identityToken:J
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 1898
    .restart local v11       #flags:I
    .restart local v12       #interrogatingPid:I
    .restart local v15       #identityToken:J
    :catch_0
    move-exception v5

    .line 1903
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_1
    move-exception v5

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public performGlobalAction(I)Z
    .locals 8
    .parameter "action"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1909
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1910
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 1913
    .local v2, resolvedUserId:I
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v6

    if-eq v2, v6, :cond_0

    .line 1914
    monitor-exit v5

    .line 1938
    :goto_0
    return v3

    .line 1916
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1917
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1919
    .local v0, identity:J
    packed-switch p1, :pswitch_data_0

    .line 1938
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1916
    .end local v0           #identity:J
    .end local v2           #resolvedUserId:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1921
    .restart local v0       #identity:J
    .restart local v2       #resolvedUserId:I
    :pswitch_0
    const/4 v3, 0x4

    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->sendDownAndUpKeyEvents(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1938
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_0

    .line 1924
    :pswitch_1
    const/4 v3, 0x3

    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->sendDownAndUpKeyEvents(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1938
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_0

    .line 1927
    :pswitch_2
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->openRecents()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1938
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_0

    .line 1930
    :pswitch_3
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->expandNotifications()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1938
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_0

    .line 1933
    :pswitch_4
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->expandQuickSettings()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1938
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1919
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1531
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    .line 1532
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    .line 1533
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 1534
    .local v0, packageNames:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1535
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1537
    :cond_0
    iget-wide v4, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    .line 1538
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    .line 1540
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_2

    .line 1542
    :cond_1
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIncludeNotImportantViews:Z

    .line 1546
    :cond_2
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    .line 1551
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1552
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canReceiveEvents()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1553
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    if-eqz v1, :cond_7

    .line 1554
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->tryEnableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    invoke-static {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1559
    :cond_3
    :goto_3
    monitor-exit v2

    .line 1560
    return-void

    :cond_4
    move v1, v3

    .line 1538
    goto :goto_0

    :cond_5
    move v1, v3

    .line 1542
    goto :goto_1

    :cond_6
    move v2, v3

    .line 1546
    goto :goto_2

    .line 1556
    :cond_7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->tryDisableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    invoke-static {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto :goto_3

    .line 1559
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 1606
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1608
    .local v0, identity:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1612
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1613
    .local v2, oldInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v2, :cond_0

    .line 1614
    invoke-virtual {v2, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 1615
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 1619
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1621
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1623
    return-void

    .line 1617
    :cond_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    goto :goto_0

    .line 1619
    .end local v2           #oldInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1621
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public unbind()Z
    .locals 2

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 1582
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1583
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->tryRemoveServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    .line 1584
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1585
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1588
    :cond_0
    const/4 v0, 0x1

    .line 1590
    :goto_0
    return v0

    .line 1584
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1590
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unlinkToOwnDeath()V
    .locals 2

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1952
    return-void
.end method
