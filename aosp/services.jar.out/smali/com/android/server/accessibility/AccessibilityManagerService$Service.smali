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


# instance fields
.field mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field mCanRetrieveScreenContent:Z

.field mComponentName:Landroid/content/ComponentName;

.field mEventTypes:I

.field mFeedbackType:I

.field mId:I

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

.field mService:Landroid/os/IBinder;

.field mServiceInterface:Landroid/accessibilityservice/IEventListener;

.field final mTempBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)V
    .locals 6
    .parameter
    .parameter "componentName"
    .parameter "accessibilityServiceInfo"
    .parameter "isAutomation"

    .prologue
    const/4 v5, 0x0

    .line 991
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    .line 958
    iput v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    .line 970
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    .line 984
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    .line 987
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    .line 992
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1208()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    .line 993
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    .line 994
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 995
    iput-boolean p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    .line 996
    if-nez p4, :cond_0

    .line 997
    invoke-virtual {p3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCanRetrieveWindowContent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mCanRetrieveScreenContent:Z

    .line 998
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    .line 999
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.client_label"

    const v2, #string@accessibility_binding_label#t

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1001
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.client_intent"

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1006
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 1007
    return-void

    .line 1004
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mCanRetrieveScreenContent:Z

    goto :goto_0
.end method

.method private getCompatibilityScale(I)F
    .locals 2
    .parameter "windowId"

    .prologue
    .line 1288
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1289
    .local v0, windowToken:Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowCompatibilityScale(Landroid/os/IBinder;)F

    move-result v1

    return v1
.end method

.method private getConnectionToRetrievalAllowingWindowLocked()Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 3

    .prologue
    .line 1278
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getRetrievalAllowingWindowLocked()I

    move-result v0

    .line 1282
    .local v0, windowId:I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToInteractionConnectionWrapperMap:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 1284
    .local v1, wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    if-eqz v1, :cond_0

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bind()Z
    .locals 3

    .prologue
    .line 1030
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1033
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public binderDied()V
    .locals 2

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1267
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unlinkToOwnDeath()V

    .line 1268
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->tryRemoveServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    .line 1271
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->handleAccessibilityEnabledSettingChangedLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1274
    :cond_0
    monitor-exit v1

    .line 1275
    return-void

    .line 1274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1257
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IEventListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-interface {v0, v1, v2}, Landroid/accessibilityservice/IEventListener;->setConnection(Landroid/accessibilityservice/IAccessibilityServiceConnection;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    :goto_0
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 1262
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IEventListener;

    .line 1263
    return-void

    .line 1258
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F
    .locals 11
    .parameter "accessibilityWindowId"
    .parameter "accessibilityViewId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingTid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1167
    const/4 v0, 0x0

    .line 1168
    .local v0, connection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1170
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v9

    .line 1172
    .local v9, permissionGranted:Z
    if-nez v9, :cond_0

    .line 1173
    const/4 v1, 0x0

    monitor-exit v2

    .line 1200
    :goto_0
    return v1

    .line 1175
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToInteractionConnectionWrapperMap:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 1177
    .local v10, wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    if-nez v10, :cond_1

    .line 1182
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1186
    .end local v9           #permissionGranted:Z
    .end local v10           #wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1184
    .restart local v9       #permissionGranted:Z
    .restart local v10       #wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :cond_1
    :try_start_1
    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    .line 1186
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1187
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1188
    .local v4, interrogatingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .local v7, identityToken:J
    move v1, p2

    move v2, p3

    move-object v3, p4

    move-wide/from16 v5, p5

    .line 1190
    :try_start_2
    invoke-interface/range {v0 .. v6}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1198
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1200
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getCompatibilityScale(I)F

    move-result v1

    goto :goto_0

    .line 1192
    :catch_0
    move-exception v1

    .line 1198
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public findAccessibilityNodeInfoByViewIdInActiveWindow(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F
    .locals 10
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
    const/4 v1, 0x0

    .line 1086
    const/4 v0, 0x0

    .line 1087
    .local v0, connection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1088
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1089
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v9

    .line 1090
    .local v9, permissionGranted:Z
    if-nez v9, :cond_0

    .line 1091
    monitor-exit v2

    .line 1115
    :goto_0
    return v1

    .line 1093
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionToRetrievalAllowingWindowLocked()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    .line 1094
    if-nez v0, :cond_1

    .line 1099
    monitor-exit v2

    goto :goto_0

    .line 1102
    .end local v9           #permissionGranted:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v9       #permissionGranted:Z
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1103
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1104
    .local v4, interrogatingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .local v7, identityToken:J
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v5, p4

    .line 1106
    :try_start_2
    invoke-interface/range {v0 .. v6}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByViewId(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1113
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1115
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getRetrievalAllowingWindowLocked()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getCompatibilityScale(I)F

    move-result v1

    goto :goto_0

    .line 1108
    :catch_0
    move-exception v1

    .line 1113
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public findAccessibilityNodeInfosByViewText(Ljava/lang/String;IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F
    .locals 11
    .parameter "text"
    .parameter "accessibilityWindowId"
    .parameter "accessibilityViewId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingTid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1131
    const/4 v0, 0x0

    .line 1132
    .local v0, connection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1133
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1134
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v10

    .line 1136
    .local v10, permissionGranted:Z
    if-nez v10, :cond_0

    .line 1137
    const/4 v1, 0x0

    monitor-exit v2

    .line 1160
    :goto_0
    return v1

    .line 1139
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionToRetrievalAllowingWindowLocked()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    .line 1140
    if-nez v0, :cond_1

    .line 1144
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1147
    .end local v10           #permissionGranted:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v10       #permissionGranted:Z
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1148
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1149
    .local v5, interrogatingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, identityToken:J
    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move-wide/from16 v6, p6

    .line 1151
    :try_start_2
    invoke-interface/range {v0 .. v7}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewText(Ljava/lang/String;IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1158
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1160
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getCompatibilityScale(I)F

    move-result v1

    goto :goto_0

    .line 1153
    :catch_0
    move-exception v1

    .line 1158
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public findAccessibilityNodeInfosByViewTextInActiveWindow(Ljava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F
    .locals 8
    .parameter "text"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "threadId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mRetrievalAlowingWindowId:I
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)I

    move-result v2

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->findAccessibilityNodeInfosByViewText(Ljava/lang/String;IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F

    move-result v0

    return v0
.end method

.method public isConfigured()Z
    .locals 1

    .prologue
    .line 1062
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

.method public linkToOwnDeath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1247
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "componentName"
    .parameter "service"

    .prologue
    .line 1070
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 1071
    invoke-static {p2}, Landroid/accessibilityservice/IEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IEventListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IEventListener;

    .line 1073
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IEventListener;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-interface {v1, p0, v2}, Landroid/accessibilityservice/IEventListener;->setConnection(Landroid/accessibilityservice/IAccessibilityServiceConnection;I)V

    .line 1074
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->tryAddServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    invoke-static {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1076
    monitor-exit v2

    .line 1080
    :goto_0
    return-void

    .line 1076
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
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
    .line 1243
    return-void
.end method

.method public performAccessibilityAction(IIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 12
    .parameter "accessibilityWindowId"
    .parameter "accessibilityViewId"
    .parameter "action"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingTid"

    .prologue
    .line 1206
    const/4 v0, 0x0

    .line 1207
    .local v0, connection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1208
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canPerformActionLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;II)Z

    move-result v10

    .line 1210
    .local v10, permissionGranted:Z
    if-nez v10, :cond_0

    .line 1211
    const/4 v1, 0x0

    monitor-exit v2

    .line 1238
    :goto_0
    return v1

    .line 1213
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToInteractionConnectionWrapperMap:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 1215
    .local v11, wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    if-nez v11, :cond_1

    .line 1220
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1224
    .end local v10           #permissionGranted:Z
    .end local v11           #wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1222
    .restart local v10       #permissionGranted:Z
    .restart local v11       #wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :cond_1
    :try_start_1
    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {v11}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    .line 1224
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1225
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1226
    .local v5, interrogatingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, identityToken:J
    move v1, p2

    move v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-wide/from16 v6, p6

    .line 1228
    :try_start_2
    invoke-interface/range {v0 .. v7}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1236
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1238
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1230
    :catch_0
    move-exception v1

    .line 1236
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1010
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    .line 1011
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    .line 1012
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 1013
    .local v0, packageNames:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1016
    :cond_0
    iget-wide v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    .line 1017
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    .line 1019
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1020
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->tryAddServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    invoke-static {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1021
    monitor-exit v2

    .line 1022
    return-void

    .line 1017
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1021
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1067
    return-void
.end method

.method public unbind()Z
    .locals 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1045
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->tryRemoveServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    .line 1046
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1050
    :cond_0
    const/4 v0, 0x1

    .line 1052
    :goto_0
    return v0

    .line 1046
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1052
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unlinkToOwnDeath()V
    .locals 2

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1251
    return-void
.end method
