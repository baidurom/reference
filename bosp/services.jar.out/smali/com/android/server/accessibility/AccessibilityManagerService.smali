.class public Lcom/android/server/accessibility/AccessibilityManagerService;
.super Landroid/view/accessibility/IAccessibilityManager$Stub;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;,
        Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;,
        Lcom/android/server/accessibility/AccessibilityManagerService$UserState;,
        Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Service;,
        Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;,
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;,
        Lcom/android/server/accessibility/AccessibilityManagerService$QuickbootBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final DEBUG:Z = false

.field private static final FUNCTION_REGISTER_UI_TEST_AUTOMATION_SERVICE:Ljava/lang/String; = "registerUiTestAutomationService"

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManagerService"

#the value of this static final field might be set in the static constructor
.field private static final OWN_PROCESS_ID:I = 0x0

.field private static final TEMPORARY_ENABLE_ACCESSIBILITY_UNTIL_KEYGUARD_REMOVED:Ljava/lang/String; = "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

.field private static final WAIT_FOR_USER_STATE_FULLY_INITIALIZED_MILLIS:I = 0xbb8

.field private static sIdCounter:I

.field private static sNextWindowId:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDefaultDisplay:Landroid/view/Display;

.field private mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

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

.field private final mGlobalClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalInteractionConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInputFilter:Z

.field private mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field private final mLock:Ljava/lang/Object;

.field private final mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mQueryBridge:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

.field private final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempStateChangeForCurrentUserMemento:Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;

.field private mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    .line 131
    const/4 v0, 0x0

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>()V

    .line 137
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 139
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServicesForFeedbackTempList:Ljava/util/List;

    .line 145
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 147
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    .line 169
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 172
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 175
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 177
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 179
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempStateChangeForCurrentUserMemento:Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;

    .line 182
    iput v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 203
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 204
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 205
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/view/IWindowManager;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 206
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 207
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    .line 209
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 211
    .local v0, displayManager:Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDefaultDisplay:Landroid/view/Display;

    .line 212
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V

    .line 213
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 222
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->registerQbReceiver()V

    .line 224
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeUser(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreStateFromMementoIfNeeded()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionLocked(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->recreateInternalStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    return-object v0
.end method

.method static synthetic access$2908()I
    .locals 2

    .prologue
    .line 111
    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleSendStateToClientsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryEnableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryDisableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryRemoveServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryAddServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/IWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$3800()I
    .locals 1

    .prologue
    .line 111
    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleAccessibilityEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->performServiceManagementLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleTouchExplorationEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleDisplayMagnificationEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleTouchExplorationGrantedAccessibilityServicesChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->manageAccessibilityServices()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->manageServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    return-object p1
.end method

.method private canDispathEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z
    .locals 6
    .parameter "service"
    .parameter "event"
    .parameter "handledFeedbackTypes"

    .prologue
    const/4 v4, 0x0

    .line 957
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canReceiveEvents()Z

    move-result v5

    if-nez v5, :cond_1

    .line 982
    :cond_0
    :goto_0
    return v4

    .line 961
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->isImportantForAccessibility()Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIncludeNotImportantViews:Z

    if-eqz v5, :cond_0

    .line 966
    :cond_2
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 967
    .local v0, eventType:I
    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    and-int/2addr v5, v0

    if-ne v5, v0, :cond_0

    .line 971
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    .line 972
    .local v3, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 974
    .local v2, packageName:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 975
    :cond_3
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    .line 976
    .local v1, feedbackType:I
    and-int v5, p3, v1

    if-ne v5, v1, :cond_4

    const/16 v5, 0x10

    if-ne v1, v5, :cond_0

    .line 978
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private getClientState(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)I
    .locals 2
    .parameter "userState"

    .prologue
    .line 1203
    const/4 v0, 0x0

    .line 1204
    .local v0, clientState:I
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_0

    .line 1205
    or-int/lit8 v0, v0, 0x1

    .line 1208
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_1

    .line 1209
    or-int/lit8 v0, v0, 0x2

    .line 1211
    :cond_1
    return v0
.end method

.method private getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method private getQueryBridge()Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .locals 6

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mQueryBridge:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    if-nez v0, :cond_0

    .line 776
    new-instance v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 777
    .local v4, info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    const/16 v2, -0x2710

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mQueryBridge:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 779
    .end local v4           #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mQueryBridge:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    return-object v0
.end method

.method private getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 2
    .parameter "userId"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 190
    .local v0, state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .end local v0           #state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    .line 192
    .restart local v0       #state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    :cond_0
    return-object v0
.end method

.method private handleAccessibilityEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5
    .parameter "userState"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1229
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    iget v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 1232
    return-void

    :cond_0
    move v0, v1

    .line 1229
    goto :goto_0
.end method

.method private handleDisplayMagnificationEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5
    .parameter "userState"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1249
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_magnification_enabled"

    iget v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 1253
    return-void

    :cond_0
    move v0, v1

    .line 1249
    goto :goto_0
.end method

.method private handleTouchExplorationEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5
    .parameter "userState"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1243
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "touch_exploration_enabled"

    iget v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 1246
    return-void

    :cond_0
    move v0, v1

    .line 1243
    goto :goto_0
.end method

.method private handleTouchExplorationGrantedAccessibilityServicesChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 7
    .parameter "userState"

    .prologue
    .line 1257
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 1258
    .local v2, serviceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1259
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1260
    .local v1, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1263
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryEnableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1271
    .end local v1           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    :goto_1
    return-void

    .line 1258
    .restart local v1       #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1267
    .end local v1           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_2
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v3, :cond_0

    .line 1268
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "touch_exploration_enabled"

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1
.end method

.method private manageAccessibilityServices()V
    .locals 3

    .prologue
    .line 2605
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 2606
    .local v0, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    const/4 v1, 0x1

    iget-boolean v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-ne v1, v2, :cond_0

    .line 2607
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 2608
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2609
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2610
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleSendStateToClientsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2611
    monitor-exit v2

    .line 2613
    :cond_0
    return-void

    .line 2611
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private manageServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5
    .parameter "userState"

    .prologue
    .line 989
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateServicesStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)I

    move-result v0

    .line 992
    .local v0, enabledInstalledServicesCount:I
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 993
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_enabled"

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 996
    :cond_0
    return-void
.end method

.method private notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 7
    .parameter "event"
    .parameter "isDefault"

    .prologue
    .line 880
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v4

    .line 881
    .local v4, state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 882
    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 884
    .local v3, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    if-ne v5, p2, :cond_0

    .line 885
    iget v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    invoke-direct {p0, v3, p1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->canDispathEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 886
    iget v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    iget v6, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    or-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    .line 887
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 891
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v4           #state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catch_0
    move-exception v2

    .line 897
    :cond_1
    return-void
.end method

.method private notifyGestureLocked(IZ)Z
    .locals 4
    .parameter "gestureId"
    .parameter "isDefault"

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 793
    .local v2, state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 794
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 795
    .local v1, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    if-ne v3, p2, :cond_0

    .line 796
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyGesture(I)V

    .line 797
    const/4 v3, 0x1

    .line 800
    .end local v1           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :goto_1
    return v3

    .line 793
    .restart local v1       #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 800
    .end local v1           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private performServiceManagementLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 1
    .parameter "userState"

    .prologue
    .line 1235
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_0

    .line 1236
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->manageServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1240
    :goto_0
    return-void

    .line 1238
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_0
.end method

.method private persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 5
    .parameter "settingName"
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1052
    .local p2, componentNames:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1053
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1054
    .local v1, componentName:Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1055
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1057
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1059
    .end local v1           #componentName:Landroid/content/ComponentName;
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1061
    return-void
.end method

.method private populateComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V
    .locals 5
    .parameter "settingName"
    .parameter "userId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1024
    .local p3, outComponentNames:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1026
    .local v1, settingValue:Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 1027
    if-eqz v1, :cond_1

    .line 1028
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 1029
    .local v2, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1030
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1031
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 1032
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1035
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1036
    .local v0, enabledService:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1037
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1041
    .end local v0           #enabledService:Landroid/content/ComponentName;
    .end local v2           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v3           #str:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private populateEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 3
    .parameter "userState"

    .prologue
    .line 856
    const-string v0, "enabled_accessibility_services"

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 860
    return-void
.end method

.method private populateInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 13
    .parameter "userState"

    .prologue
    .line 825
    iget-object v8, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 827
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x84

    iget v11, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 832
    .local v3, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 833
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 834
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 835
    .local v6, serviceInfo:Landroid/content/pm/ServiceInfo;
    const-string v8, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 837
    const-string v8, "AccessibilityManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping accessibilty service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": it does not require the permission "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 845
    :cond_0
    :try_start_0
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .line 846
    .local v0, accessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v8, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 847
    .end local v0           #accessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catch_0
    move-exception v7

    .line 848
    .local v7, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "AccessibilityManagerService"

    const-string v9, "Error while initializing AccessibilityServiceInfo"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 849
    .end local v7           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v4

    .line 850
    .local v4, ioe:Ljava/io/IOException;
    const-string v8, "AccessibilityManagerService"

    const-string v9, "Error while initializing AccessibilityServiceInfo"

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 853
    .end local v4           #ioe:Ljava/io/IOException;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v6           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_1
    return-void
.end method

.method private populateTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 3
    .parameter "userState"

    .prologue
    .line 864
    const-string v0, "touch_exploration_granted_accessibility_services"

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 868
    return-void
.end method

.method private recreateInternalStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "userState"

    .prologue
    .line 1215
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1216
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1217
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1219
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleTouchExplorationEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1220
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleDisplayMagnificationEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1221
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleAccessibilityEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1223
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->performServiceManagementLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1224
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1225
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleSendStateToClientsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1226
    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 258
    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$1;

    invoke-direct {v6, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 335
    .local v6, monitor:Lcom/android/internal/content/PackageMonitor;
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {v6, v0, v4, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 338
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 356
    return-void
.end method

.method private registerIPOReceiver(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2617
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2618
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2619
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2620
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$5;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2632
    return-void
.end method

.method private registerQbReceiver()V
    .locals 4

    .prologue
    .line 228
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 229
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$QuickbootBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$QuickbootBroadcastReceiver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    return-void
.end method

.method private removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    .locals 5
    .parameter "windowToken"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 538
    .local p2, windowTokens:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    .local p3, interactionConnections:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 539
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 540
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 541
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 542
    .local v2, windowId:I
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 543
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 544
    .local v3, wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->unlinkToDeath()V

    .line 545
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 549
    .end local v2           #windowId:I
    .end local v3           #wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :goto_1
    return v2

    .line 539
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private removeAccessibilityInteractionConnectionLocked(II)V
    .locals 2
    .parameter "windowId"
    .parameter "userId"

    .prologue
    .line 811
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 812
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 813
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 822
    :goto_0
    return-void

    .line 815
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 816
    .local v0, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 817
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private removeUser(I)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 754
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 756
    monitor-exit v1

    .line 757
    return-void

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private restoreStateFromMementoIfNeeded()V
    .locals 4

    .prologue
    .line 760
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 761
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempStateChangeForCurrentUserMemento:Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mUserId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    .line 762
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 764
    .local v0, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempStateChangeForCurrentUserMemento:Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->applyTo(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 765
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempStateChangeForCurrentUserMemento:Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->clear()V

    .line 767
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->performServiceManagementLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 768
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 769
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleSendStateToClientsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 771
    .end local v0           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_0
    monitor-exit v2

    .line 772
    return-void

    .line 771
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scheduleSendStateToClientsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 4
    .parameter "userState"

    .prologue
    .line 1106
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1108
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getClientState(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)I

    move-result v0

    .line 1109
    .local v0, clientState:I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v2, 0x2

    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1112
    .end local v0           #clientState:I
    :cond_1
    return-void
.end method

.method private showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 8
    .parameter "service"

    .prologue
    .line 1156
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, label:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1159
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 1160
    .local v1, state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v2, :cond_0

    .line 1161
    monitor-exit v3

    .line 1200
    :goto_0
    return-void

    .line 1163
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1165
    monitor-exit v3

    goto :goto_0

    .line 1199
    .end local v1           #state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1167
    .restart local v1       #state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, #drawable@ic_dialog_alert#t

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, #string@ok#t

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$4;

    invoke-direct {v5, p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$4;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$3;

    invoke-direct {v5, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$3;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, #string@enable_explore_by_touch_warning_title#t

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v5, #string@enable_explore_by_touch_warning_message#t

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 1193
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d3

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 1195
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1197
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1198
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1199
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private switchUser(I)V
    .locals 9
    .parameter "userId"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 719
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 722
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempStateChangeForCurrentUserMemento:Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->clear()V

    .line 725
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 726
    .local v1, oldUserState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 729
    iget-object v5, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 730
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v6, 0x3

    iget v7, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 735
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 736
    .local v2, userManager:Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v0, :cond_2

    .line 739
    .local v0, announceNewUser:Z
    :goto_0
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 742
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 745
    if-eqz v0, :cond_1

    .line 747
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v5, 0x6

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 750
    :cond_1
    monitor-exit v4

    .line 751
    return-void

    .end local v0           #announceNewUser:Z
    :cond_2
    move v0, v3

    .line 736
    goto :goto_0

    .line 750
    .end local v1           #oldUserState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v2           #userManager:Landroid/os/UserManager;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private tryAddServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 3
    .parameter "service"
    .parameter "userId"

    .prologue
    .line 907
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 908
    .local v0, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    .end local v0           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :goto_0
    return-void

    .line 911
    .restart local v0       #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->linkToOwnDeath()V

    .line 912
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 915
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryEnableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 916
    .end local v0           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private tryDisableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 8
    .parameter "service"

    .prologue
    .line 1289
    iget v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-direct {p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 1290
    .local v3, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v4, :cond_0

    .line 1291
    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 1292
    .local v2, serviceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1293
    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1294
    .local v1, other:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    if-eq v1, p1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    if-eqz v4, :cond_1

    .line 1301
    .end local v0           #i:I
    .end local v1           #other:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v2           #serviceCount:I
    :cond_0
    :goto_1
    return-void

    .line 1292
    .restart local v0       #i:I
    .restart local v1       #other:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .restart local v2       #serviceCount:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1298
    .end local v1           #other:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_2
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "touch_exploration_enabled"

    const/4 v6, 0x0

    iget v7, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1
.end method

.method private tryEnableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 6
    .parameter "service"

    .prologue
    .line 1274
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 1275
    .local v1, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canReceiveEvents()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1277
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1279
    .local v0, canToggleTouchExploration:Z
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 1280
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1286
    .end local v0           #canToggleTouchExploration:Z
    :cond_0
    :goto_0
    return-void

    .line 1282
    .restart local v0       #canToggleTouchExploration:Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "touch_exploration_enabled"

    const/4 v4, 0x1

    iget v5, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private tryRemoveServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 4
    .parameter "service"

    .prologue
    .line 928
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 929
    .local v1, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 930
    .local v0, removed:Z
    if-nez v0, :cond_0

    .line 931
    const/4 v0, 0x0

    .line 938
    .end local v0           #removed:Z
    :goto_0
    return v0

    .line 933
    .restart local v0       #removed:Z
    :cond_0
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unlinkToOwnDeath()V

    .line 935
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->dispose()V

    .line 936
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 937
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryDisableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto :goto_0
.end method

.method private unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5
    .parameter "userState"

    .prologue
    .line 1004
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1005
    .local v3, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1006
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1007
    .local v2, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbind()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1008
    add-int/lit8 v1, v1, -0x1

    .line 1009
    add-int/lit8 v0, v0, -0x1

    .line 1005
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1012
    .end local v2           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1
    return-void
.end method

.method private updateInputFilterLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 6
    .parameter "userState"

    .prologue
    .line 1115
    const/4 v2, 0x0

    .line 1116
    .local v2, setInputFilter:Z
    const/4 v1, 0x0

    .line 1117
    .local v1, inputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1118
    :try_start_0
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-nez v3, :cond_1

    :cond_0
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    if-eqz v3, :cond_8

    .line 1120
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-nez v3, :cond_3

    .line 1121
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 1122
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-nez v3, :cond_2

    .line 1123
    new-instance v3, Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 1126
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 1127
    const/4 v2, 0x1

    .line 1129
    :cond_3
    const/4 v0, 0x0

    .line 1130
    .local v0, flags:I
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    if-eqz v3, :cond_4

    .line 1131
    or-int/lit8 v0, v0, 0x1

    .line 1133
    :cond_4
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v3, :cond_5

    .line 1134
    or-int/lit8 v0, v0, 0x2

    .line 1136
    :cond_5
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setEnabledFeatures(I)V

    .line 1145
    .end local v0           #flags:I
    :cond_6
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    if-eqz v2, :cond_7

    .line 1148
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v3, v1}, Landroid/view/IWindowManager;->setInputFilter(Landroid/view/IInputFilter;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1153
    :cond_7
    :goto_1
    return-void

    .line 1138
    :cond_8
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v3, :cond_6

    .line 1139
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 1140
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setEnabledFeatures(I)V

    .line 1141
    const/4 v1, 0x0

    .line 1142
    const/4 v2, 0x1

    goto :goto_0

    .line 1145
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1149
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private updateServicesStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)I
    .locals 11
    .parameter "userState"

    .prologue
    .line 1071
    iget-object v6, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 1073
    .local v6, componentNameToServiceMap:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    iget-boolean v10, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 1075
    .local v10, isEnabled:Z
    const/4 v8, 0x0

    .line 1076
    .local v8, enabledInstalledServices:I
    const/4 v9, 0x0

    .local v9, i:I
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .local v7, count:I
    :goto_0
    if-ge v9, v7, :cond_4

    .line 1077
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1078
    .local v4, installedService:Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1080
    .local v3, componentName:Landroid/content/ComponentName;
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1082
    .local v0, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    if-eqz v10, :cond_3

    .line 1083
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1084
    if-nez v0, :cond_0

    .line 1085
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .end local v0           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)V

    .line 1088
    .restart local v0       #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->bind()Z

    .line 1089
    add-int/lit8 v8, v8, 0x1

    .line 1076
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1091
    :cond_2
    if-eqz v0, :cond_1

    .line 1092
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbind()Z

    goto :goto_1

    .line 1096
    :cond_3
    if-eqz v0, :cond_1

    .line 1097
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbind()Z

    goto :goto_1

    .line 1102
    .end local v0           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v3           #componentName:Landroid/content/ComponentName;
    .end local v4           #installedService:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_4
    return v8
.end method


# virtual methods
.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I
    .locals 7
    .parameter "windowToken"
    .parameter "connection"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 467
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 468
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 470
    .local v0, resolvedUserId:I
    sget v2, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    .line 474
    .local v2, windowId:I
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 475
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    const/4 v4, -0x1

    invoke-direct {v3, p0, v2, p2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;I)V

    .line 477
    .local v3, wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->linkToDeath()V

    .line 478
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 499
    :goto_0
    monitor-exit v5

    return v2

    .line 485
    .end local v3           #wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :cond_0
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    invoke-direct {v3, p0, v2, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;I)V

    .line 487
    .restart local v3       #wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->linkToDeath()V

    .line 488
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 489
    .local v1, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 500
    .end local v0           #resolvedUserId:I
    .end local v1           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v2           #windowId:I
    .end local v3           #wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I
    .locals 4
    .parameter "client"
    .parameter "userId"

    .prologue
    .line 359
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 360
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 365
    .local v0, resolvedUserId:I
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 366
    .local v1, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 371
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getClientState(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)I

    move-result v2

    monitor-exit v3

    .line 381
    :goto_0
    return v2

    .line 373
    :cond_0
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 381
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getClientState(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)I

    move-result v2

    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 383
    .end local v0           #resolvedUserId:I
    .end local v1           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 381
    .restart local v0       #resolvedUserId:I
    .restart local v1       #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getAccessibilityFocusBoundsInActiveWindow(Landroid/graphics/Rect;)Z
    .locals 10
    .parameter "outBounds"

    .prologue
    const/4 v6, 0x0

    .line 646
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getQueryBridge()Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v4

    .line 647
    .local v4, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v1, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    .line 648
    .local v1, connectionId:I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 649
    .local v0, client:Landroid/view/accessibility/AccessibilityInteractionClient;
    invoke-virtual {v0, v1, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    .line 651
    :try_start_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 653
    .local v3, root:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v3, :cond_0

    .line 671
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    :goto_0
    return v6

    .line 656
    :cond_0
    const/4 v7, 0x2

    :try_start_1
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 658
    .local v2, focus:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_1

    .line 671
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    goto :goto_0

    .line 661
    :cond_1
    :try_start_2
    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 663
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 664
    .local v5, windowBounds:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowBounds(Landroid/graphics/Rect;)Z

    .line 665
    invoke-virtual {p1, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 667
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDefaultDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 668
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Rect;->intersect(IIII)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 669
    const/4 v6, 0x1

    .line 671
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    goto :goto_0

    .end local v2           #focus:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3           #root:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5           #windowBounds:Landroid/graphics/Rect;
    :catchall_0
    move-exception v6

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    throw v6
.end method

.method getActiveWindowBounds(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "outBounds"

    .prologue
    .line 682
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 683
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)I

    move-result v2

    .line 684
    .local v2, windowId:I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 685
    .local v1, token:Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 686
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #token:Landroid/os/IBinder;
    check-cast v1, Landroid/os/IBinder;

    .line 688
    .restart local v1       #token:Landroid/os/IBinder;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    const/4 v0, 0x0

    .line 691
    .local v0, info:Landroid/view/WindowInfo;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v3, v1}, Landroid/view/IWindowManager;->getWindowInfo(Landroid/os/IBinder;)Landroid/view/WindowInfo;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_2

    .line 693
    iget-object v3, v0, Landroid/view/WindowInfo;->frame:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 694
    const/4 v3, 0x1

    .line 699
    if-eqz v0, :cond_1

    .line 700
    invoke-virtual {v0}, Landroid/view/WindowInfo;->recycle()V

    .line 703
    :cond_1
    :goto_0
    return v3

    .line 688
    .end local v0           #info:Landroid/view/WindowInfo;
    .end local v1           #token:Landroid/os/IBinder;
    .end local v2           #windowId:I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 699
    .restart local v0       #info:Landroid/view/WindowInfo;
    .restart local v1       #token:Landroid/os/IBinder;
    .restart local v2       #windowId:I
    :cond_2
    if-eqz v0, :cond_3

    .line 700
    invoke-virtual {v0}, Landroid/view/WindowInfo;->recycle()V

    .line 703
    :cond_3
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 696
    :catch_0
    move-exception v3

    .line 699
    if-eqz v0, :cond_3

    .line 700
    invoke-virtual {v0}, Landroid/view/WindowInfo;->recycle()V

    goto :goto_1

    .line 699
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_4

    .line 700
    invoke-virtual {v0}, Landroid/view/WindowInfo;->recycle()V

    :cond_4
    throw v3
.end method

.method getActiveWindowId()I
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)I

    move-result v0

    return v0
.end method

.method public getEnabledAccessibilityServiceList(II)Ljava/util/List;
    .locals 10
    .parameter "feedbackType"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    const/4 v3, 0x0

    .line 422
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 423
    :try_start_0
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v7, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 425
    .local v2, resolvedUserId:I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServicesForFeedbackTempList:Ljava/util/List;

    .line 426
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 427
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v7

    iget-object v6, v7, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 428
    .local v6, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    :cond_0
    if-eqz p1, :cond_2

    .line 429
    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v9

    shl-int v0, v7, v9

    .line 430
    .local v0, feedbackTypeBit:I
    xor-int/lit8 v7, v0, -0x1

    and-int/2addr p1, v7

    .line 431
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 432
    .local v5, serviceCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 433
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 434
    .local v4, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v7, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    and-int/2addr v7, v0

    if-eqz v7, :cond_1

    .line 435
    iget-object v7, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    .end local v0           #feedbackTypeBit:I
    .end local v1           #i:I
    .end local v4           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v5           #serviceCount:I
    :cond_2
    monitor-exit v8

    .line 440
    return-object v3

    .line 439
    .end local v2           #resolvedUserId:I
    .end local v6           #services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public getInstalledAccessibilityServiceList(I)Ljava/util/List;
    .locals 3
    .parameter "userId"
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
    .line 412
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 415
    .local v0, resolvedUserId:I
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    monitor-exit v2

    return-object v1

    .line 416
    .end local v0           #resolvedUserId:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interrupt(I)V
    .locals 9
    .parameter "userId"

    .prologue
    .line 445
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 446
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v6, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v3

    .line 449
    .local v3, resolvedUserId:I
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v3, v6, :cond_1

    .line 450
    monitor-exit v7

    .line 463
    :cond_0
    return-void

    .line 452
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v6

    iget-object v5, v6, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 453
    .local v5, services:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 455
    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 457
    .local v4, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :try_start_1
    iget-object v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v6}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onInterrupt()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 454
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #resolvedUserId:I
    .end local v4           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v5           #services:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 458
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #resolvedUserId:I
    .restart local v4       #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .restart local v5       #services:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    :catch_0
    move-exception v2

    .line 459
    .local v2, re:Landroid/os/RemoteException;
    const-string v6, "AccessibilityManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error during sending interrupt request to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method onGesture(I)Z
    .locals 3
    .parameter "gestureId"

    .prologue
    .line 625
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 626
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(IZ)Z

    move-result v0

    .line 627
    .local v0, handled:Z
    if-nez v0, :cond_0

    .line 628
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(IZ)Z

    move-result v0

    .line 630
    :cond_0
    monitor-exit v2

    return v0

    .line 631
    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onTouchInteractionEnd()V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onTouchInteractionEnd()V

    .line 716
    return-void
.end method

.method onTouchInteractionStart()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onTouchInteractionStart()V

    .line 712
    return-void
.end method

.method public registerUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 8
    .parameter "serviceClient"
    .parameter "accessibilityServiceInfo"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v1, "android.permission.RETRIEVE_WINDOW_CONTENT"

    const-string v2, "registerUiTestAutomationService"

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    new-instance v3, Landroid/content/ComponentName;

    const-string v0, "foo.bar"

    const-string v1, "AutomationAccessibilityService"

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .local v3, componentName:Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 562
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v6

    .line 563
    .local v6, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-direct {p0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 566
    iget-boolean v0, v6, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_0

    .line 567
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 570
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 573
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v5, 0x1

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 575
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 577
    invoke-direct {p0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 578
    invoke-direct {p0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleSendStateToClientsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 579
    monitor-exit v7

    .line 580
    return-void

    .line 579
    .end local v6           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 9
    .parameter "window"

    .prologue
    .line 504
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 505
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 507
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 508
    .local v3, token:Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-direct {p0, v3, v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v1

    .line 510
    .local v1, removedWindowId:I
    if-ltz v1, :cond_0

    .line 515
    monitor-exit v7

    .line 533
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 518
    .local v4, userCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 519
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 520
    .local v5, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v6, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    iget-object v8, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-direct {p0, v3, v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v2

    .line 523
    .local v2, removedWindowIdForUser:I
    if-ltz v2, :cond_1

    .line 529
    monitor-exit v7

    goto :goto_0

    .line 532
    .end local v0           #i:I
    .end local v1           #removedWindowId:I
    .end local v2           #removedWindowIdForUser:I
    .end local v3           #token:Landroid/os/IBinder;
    .end local v4           #userCount:I
    .end local v5           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 518
    .restart local v0       #i:I
    .restart local v1       #removedWindowId:I
    .restart local v2       #removedWindowIdForUser:I
    .restart local v3       #token:Landroid/os/IBinder;
    .restart local v4       #userCount:I
    .restart local v5       #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 532
    .end local v2           #removedWindowIdForUser:I
    .end local v5           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z
    .locals 8
    .parameter "event"
    .parameter "userId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 387
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 388
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 391
    .local v0, resolvedUserId:I
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v0, v4, :cond_1

    .line 392
    monitor-exit v3

    .line 408
    :cond_0
    :goto_0
    return v1

    .line 394
    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canDispatchAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    invoke-static {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 395
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 396
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v5, 0x5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 398
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 399
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 401
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v4, :cond_3

    .line 402
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v5, 0x1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 405
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 406
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v4

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    .line 407
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    sget v3, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 407
    .end local v0           #resolvedUserId:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    .locals 6
    .parameter "service"
    .parameter "touchExplorationEnabled"

    .prologue
    .line 584
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v3, "android.permission.TEMPORARY_ENABLE_ACCESSIBILITY"

    const-string v4, "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 611
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, re:Landroid/os/RemoteException;
    goto :goto_0

    .line 594
    .end local v0           #re:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 595
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 597
    .local v1, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempStateChangeForCurrentUserMemento:Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->initialize(ILcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 599
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 600
    iput-boolean p2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 601
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 602
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 603
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 605
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->performServiceManagementLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 608
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 609
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleSendStateToClientsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 610
    monitor-exit v3

    goto :goto_0

    .end local v1           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 3
    .parameter "serviceClient"

    .prologue
    .line 614
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V

    .line 621
    :cond_0
    monitor-exit v1

    .line 622
    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
