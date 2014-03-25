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
    .line 127
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    .line 129
    const/4 v0, 0x0

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 200
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>()V

    .line 135
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 137
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServicesForFeedbackTempList:Ljava/util/List;

    .line 143
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 145
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    .line 167
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 170
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 173
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 175
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 177
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempStateChangeForCurrentUserMemento:Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;

    .line 180
    iput v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 201
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 202
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 203
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/view/IWindowManager;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 204
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 205
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    .line 207
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 209
    .local v0, displayManager:Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDefaultDisplay:Landroid/view/Display;

    .line 210
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V

    .line 211
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 214
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->registerQbReceiver()V

    .line 216
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
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
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeUser(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreStateFromMementoIfNeeded()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
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
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionLocked(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->recreateInternalStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    return-object v0
.end method

.method static synthetic access$2908()I
    .locals 2

    .prologue
    .line 109
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
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleSendStateToClientsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryEnableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryDisableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
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
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryAddServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/IWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$3800()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleAccessibilityEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->performServiceManagementLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleTouchExplorationEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleDisplayMagnificationEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleTouchExplorationGrantedAccessibilityServicesChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->manageServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
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

    .line 949
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canReceiveEvents()Z

    move-result v5

    if-nez v5, :cond_1

    .line 974
    :cond_0
    :goto_0
    return v4

    .line 953
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->isImportantForAccessibility()Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIncludeNotImportantViews:Z

    if-eqz v5, :cond_0

    .line 958
    :cond_2
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 959
    .local v0, eventType:I
    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    and-int/2addr v5, v0

    if-ne v5, v0, :cond_0

    .line 963
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    .line 964
    .local v3, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 966
    .local v2, packageName:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 967
    :cond_3
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    .line 968
    .local v1, feedbackType:I
    and-int v5, p3, v1

    if-ne v5, v1, :cond_4

    const/16 v5, 0x10

    if-ne v1, v5, :cond_0

    .line 970
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private getClientState(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)I
    .locals 2
    .parameter "userState"

    .prologue
    .line 1195
    const/4 v0, 0x0

    .line 1196
    .local v0, clientState:I
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_0

    .line 1197
    or-int/lit8 v0, v0, 0x1

    .line 1200
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_1

    .line 1201
    or-int/lit8 v0, v0, 0x2

    .line 1203
    :cond_1
    return v0
.end method

.method private getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method private getQueryBridge()Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .locals 6

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mQueryBridge:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    if-nez v0, :cond_0

    .line 768
    new-instance v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 769
    .local v4, info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    const/16 v2, -0x2710

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mQueryBridge:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 771
    .end local v4           #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mQueryBridge:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    return-object v0
.end method

.method private getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 2
    .parameter "userId"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 188
    .local v0, state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .end local v0           #state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    .line 190
    .restart local v0       #state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    :cond_0
    return-object v0
.end method

.method private handleAccessibilityEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5
    .parameter "userState"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1221
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

    .line 1224
    return-void

    :cond_0
    move v0, v1

    .line 1221
    goto :goto_0
.end method

.method private handleDisplayMagnificationEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5
    .parameter "userState"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1241
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

    .line 1245
    return-void

    :cond_0
    move v0, v1

    .line 1241
    goto :goto_0
.end method

.method private handleTouchExplorationEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5
    .parameter "userState"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1235
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

    .line 1238
    return-void

    :cond_0
    move v0, v1

    .line 1235
    goto :goto_0
.end method

.method private handleTouchExplorationGrantedAccessibilityServicesChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 7
    .parameter "userState"

    .prologue
    .line 1249
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 1250
    .local v2, serviceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1251
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1252
    .local v1, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1255
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryEnableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1263
    .end local v1           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    :goto_1
    return-void

    .line 1250
    .restart local v1       #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1259
    .end local v1           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_2
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v3, :cond_0

    .line 1260
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "touch_exploration_enabled"

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1
.end method

.method private manageServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5
    .parameter "userState"

    .prologue
    .line 981
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateServicesStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)I

    move-result v0

    .line 984
    .local v0, enabledInstalledServicesCount:I
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 985
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_enabled"

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 988
    :cond_0
    return-void
.end method

.method private notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 7
    .parameter "event"
    .parameter "isDefault"

    .prologue
    .line 872
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v4

    .line 873
    .local v4, state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 874
    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 876
    .local v3, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    if-ne v5, p2, :cond_0

    .line 877
    iget v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    invoke-direct {p0, v3, p1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->canDispathEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 878
    iget v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    iget v6, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    or-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    .line 879
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 883
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v4           #state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catch_0
    move-exception v2

    .line 889
    :cond_1
    return-void
.end method

.method private notifyGestureLocked(IZ)Z
    .locals 4
    .parameter "gestureId"
    .parameter "isDefault"

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 785
    .local v2, state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 786
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 787
    .local v1, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    if-ne v3, p2, :cond_0

    .line 788
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyGesture(I)V

    .line 789
    const/4 v3, 0x1

    .line 792
    .end local v1           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :goto_1
    return v3

    .line 785
    .restart local v1       #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 792
    .end local v1           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private performServiceManagementLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 1
    .parameter "userState"

    .prologue
    .line 1227
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_0

    .line 1228
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->manageServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1232
    :goto_0
    return-void

    .line 1230
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
    .line 1044
    .local p2, componentNames:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1045
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

    .line 1046
    .local v1, componentName:Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1047
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1049
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1051
    .end local v1           #componentName:Landroid/content/ComponentName;
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1053
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
    .line 1016
    .local p3, outComponentNames:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1018
    .local v1, settingValue:Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 1019
    if-eqz v1, :cond_1

    .line 1020
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 1021
    .local v2, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1022
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1023
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 1024
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1027
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1028
    .local v0, enabledService:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1029
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1033
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
    .line 848
    const-string v0, "enabled_accessibility_services"

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 852
    return-void
.end method

.method private populateInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 13
    .parameter "userState"

    .prologue
    .line 817
    iget-object v8, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 819
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x84

    iget v11, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 824
    .local v3, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 825
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 826
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 827
    .local v6, serviceInfo:Landroid/content/pm/ServiceInfo;
    const-string v8, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 829
    const-string v8, "AccessibilityManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping accessibilty service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v12, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

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

    .line 824
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 837
    :cond_0
    :try_start_0
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .line 838
    .local v0, accessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v8, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 839
    .end local v0           #accessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catch_0
    move-exception v7

    .line 840
    .local v7, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "AccessibilityManagerService"

    const-string v9, "Error while initializing AccessibilityServiceInfo"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 841
    .end local v7           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v4

    .line 842
    .local v4, ioe:Ljava/io/IOException;
    const-string v8, "AccessibilityManagerService"

    const-string v9, "Error while initializing AccessibilityServiceInfo"

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 845
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
    .line 856
    const-string v0, "touch_exploration_granted_accessibility_services"

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 860
    return-void
.end method

.method private recreateInternalStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .parameter "userState"

    .prologue
    .line 1207
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1208
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1209
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1211
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleTouchExplorationEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1212
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleDisplayMagnificationEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1213
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleAccessibilityEnabledSettingChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1215
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->performServiceManagementLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1216
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1217
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleSendStateToClientsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1218
    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 250
    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$1;

    invoke-direct {v6, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 327
    .local v6, monitor:Lcom/android/internal/content/PackageMonitor;
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {v6, v0, v4, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 330
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 331
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 348
    return-void
.end method

.method private registerQbReceiver()V
    .locals 4

    .prologue
    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$QuickbootBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$QuickbootBroadcastReceiver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
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
    .line 530
    .local p2, windowTokens:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    .local p3, interactionConnections:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 531
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 532
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 533
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 534
    .local v2, windowId:I
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 535
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 536
    .local v3, wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->unlinkToDeath()V

    .line 537
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 541
    .end local v2           #windowId:I
    .end local v3           #wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :goto_1
    return v2

    .line 531
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private removeAccessibilityInteractionConnectionLocked(II)V
    .locals 2
    .parameter "windowId"
    .parameter "userId"

    .prologue
    .line 803
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 804
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 805
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 814
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 808
    .local v0, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 809
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private removeUser(I)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 748
    monitor-exit v1

    .line 749
    return-void

    .line 748
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
    .line 752
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 753
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempStateChangeForCurrentUserMemento:Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mUserId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    .line 754
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 756
    .local v0, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempStateChangeForCurrentUserMemento:Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->applyTo(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 757
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempStateChangeForCurrentUserMemento:Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->clear()V

    .line 759
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->performServiceManagementLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 760
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 761
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleSendStateToClientsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 763
    .end local v0           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_0
    monitor-exit v2

    .line 764
    return-void

    .line 763
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
    .line 1098
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1100
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getClientState(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)I

    move-result v0

    .line 1101
    .local v0, clientState:I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v2, 0x2

    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1104
    .end local v0           #clientState:I
    :cond_1
    return-void
.end method

.method private showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 8
    .parameter "service"

    .prologue
    .line 1148
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1150
    .local v0, label:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1151
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 1152
    .local v1, state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v2, :cond_0

    .line 1153
    monitor-exit v3

    .line 1192
    :goto_0
    return-void

    .line 1155
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1157
    monitor-exit v3

    goto :goto_0

    .line 1191
    .end local v1           #state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1159
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

    .line 1185
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d3

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 1187
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1189
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1190
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1191
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

    .line 711
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 714
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempStateChangeForCurrentUserMemento:Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->clear()V

    .line 717
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 718
    .local v1, oldUserState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 721
    iget-object v5, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 722
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v6, 0x3

    iget v7, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 727
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 728
    .local v2, userManager:Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v0, :cond_2

    .line 731
    .local v0, announceNewUser:Z
    :goto_0
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 734
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 737
    if-eqz v0, :cond_1

    .line 739
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v5, 0x6

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 742
    :cond_1
    monitor-exit v4

    .line 743
    return-void

    .end local v0           #announceNewUser:Z
    :cond_2
    move v0, v3

    .line 728
    goto :goto_0

    .line 742
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
    .line 899
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 900
    .local v0, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    .end local v0           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :goto_0
    return-void

    .line 903
    .restart local v0       #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->linkToOwnDeath()V

    .line 904
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 907
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryEnableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 908
    .end local v0           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private tryDisableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 8
    .parameter "service"

    .prologue
    .line 1281
    iget v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-direct {p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 1282
    .local v3, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v4, :cond_0

    .line 1283
    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 1284
    .local v2, serviceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1285
    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1286
    .local v1, other:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    if-eq v1, p1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    if-eqz v4, :cond_1

    .line 1293
    .end local v0           #i:I
    .end local v1           #other:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v2           #serviceCount:I
    :cond_0
    :goto_1
    return-void

    .line 1284
    .restart local v0       #i:I
    .restart local v1       #other:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .restart local v2       #serviceCount:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1290
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
    .line 1266
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 1267
    .local v1, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canReceiveEvents()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1269
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1271
    .local v0, canToggleTouchExploration:Z
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 1272
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1278
    .end local v0           #canToggleTouchExploration:Z
    :cond_0
    :goto_0
    return-void

    .line 1274
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
    .line 920
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 921
    .local v1, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 922
    .local v0, removed:Z
    if-nez v0, :cond_0

    .line 923
    const/4 v0, 0x0

    .line 930
    .end local v0           #removed:Z
    :goto_0
    return v0

    .line 925
    .restart local v0       #removed:Z
    :cond_0
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unlinkToOwnDeath()V

    .line 927
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->dispose()V

    .line 928
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 929
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryDisableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto :goto_0
.end method

.method private unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5
    .parameter "userState"

    .prologue
    .line 996
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 997
    .local v3, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 998
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 999
    .local v2, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbind()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1000
    add-int/lit8 v1, v1, -0x1

    .line 1001
    add-int/lit8 v0, v0, -0x1

    .line 997
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1004
    .end local v2           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1
    return-void
.end method

.method private updateInputFilterLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 6
    .parameter "userState"

    .prologue
    .line 1107
    const/4 v2, 0x0

    .line 1108
    .local v2, setInputFilter:Z
    const/4 v1, 0x0

    .line 1109
    .local v1, inputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1110
    :try_start_0
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-nez v3, :cond_1

    :cond_0
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    if-eqz v3, :cond_8

    .line 1112
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-nez v3, :cond_3

    .line 1113
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 1114
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-nez v3, :cond_2

    .line 1115
    new-instance v3, Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 1118
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 1119
    const/4 v2, 0x1

    .line 1121
    :cond_3
    const/4 v0, 0x0

    .line 1122
    .local v0, flags:I
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    if-eqz v3, :cond_4

    .line 1123
    or-int/lit8 v0, v0, 0x1

    .line 1125
    :cond_4
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v3, :cond_5

    .line 1126
    or-int/lit8 v0, v0, 0x2

    .line 1128
    :cond_5
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setEnabledFeatures(I)V

    .line 1137
    .end local v0           #flags:I
    :cond_6
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    if-eqz v2, :cond_7

    .line 1140
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v3, v1}, Landroid/view/IWindowManager;->setInputFilter(Landroid/view/IInputFilter;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1145
    :cond_7
    :goto_1
    return-void

    .line 1130
    :cond_8
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v3, :cond_6

    .line 1131
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 1132
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setEnabledFeatures(I)V

    .line 1133
    const/4 v1, 0x0

    .line 1134
    const/4 v2, 0x1

    goto :goto_0

    .line 1137
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1141
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private updateServicesStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)I
    .locals 11
    .parameter "userState"

    .prologue
    .line 1063
    iget-object v6, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 1065
    .local v6, componentNameToServiceMap:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    iget-boolean v10, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 1067
    .local v10, isEnabled:Z
    const/4 v8, 0x0

    .line 1068
    .local v8, enabledInstalledServices:I
    const/4 v9, 0x0

    .local v9, i:I
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .local v7, count:I
    :goto_0
    if-ge v9, v7, :cond_4

    .line 1069
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1070
    .local v4, installedService:Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1072
    .local v3, componentName:Landroid/content/ComponentName;
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1074
    .local v0, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    if-eqz v10, :cond_3

    .line 1075
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1076
    if-nez v0, :cond_0

    .line 1077
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .end local v0           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)V

    .line 1080
    .restart local v0       #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->bind()Z

    .line 1081
    add-int/lit8 v8, v8, 0x1

    .line 1068
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1083
    :cond_2
    if-eqz v0, :cond_1

    .line 1084
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbind()Z

    goto :goto_1

    .line 1088
    :cond_3
    if-eqz v0, :cond_1

    .line 1089
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbind()Z

    goto :goto_1

    .line 1094
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
    .line 459
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 460
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 462
    .local v0, resolvedUserId:I
    sget v2, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    .line 466
    .local v2, windowId:I
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 467
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    const/4 v4, -0x1

    invoke-direct {v3, p0, v2, p2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;I)V

    .line 469
    .local v3, wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->linkToDeath()V

    .line 470
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    :goto_0
    monitor-exit v5

    return v2

    .line 477
    .end local v3           #wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :cond_0
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    invoke-direct {v3, p0, v2, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;I)V

    .line 479
    .restart local v3       #wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->linkToDeath()V

    .line 480
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 481
    .local v1, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 492
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
    .line 351
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 352
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 357
    .local v0, resolvedUserId:I
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 358
    .local v1, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 363
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getClientState(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)I

    move-result v2

    monitor-exit v3

    .line 373
    :goto_0
    return v2

    .line 365
    :cond_0
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 373
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getClientState(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)I

    move-result v2

    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 375
    .end local v0           #resolvedUserId:I
    .end local v1           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 373
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

    .line 638
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getQueryBridge()Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v4

    .line 639
    .local v4, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v1, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    .line 640
    .local v1, connectionId:I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 641
    .local v0, client:Landroid/view/accessibility/AccessibilityInteractionClient;
    invoke-virtual {v0, v1, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    .line 643
    :try_start_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 645
    .local v3, root:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v3, :cond_0

    .line 663
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    :goto_0
    return v6

    .line 648
    :cond_0
    const/4 v7, 0x2

    :try_start_1
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 650
    .local v2, focus:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_1

    .line 663
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    goto :goto_0

    .line 653
    :cond_1
    :try_start_2
    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 655
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 656
    .local v5, windowBounds:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowBounds(Landroid/graphics/Rect;)Z

    .line 657
    invoke-virtual {p1, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 659
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDefaultDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 660
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Rect;->intersect(IIII)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 661
    const/4 v6, 0x1

    .line 663
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
    .line 674
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 675
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)I

    move-result v2

    .line 676
    .local v2, windowId:I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 677
    .local v1, token:Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 678
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #token:Landroid/os/IBinder;
    check-cast v1, Landroid/os/IBinder;

    .line 680
    .restart local v1       #token:Landroid/os/IBinder;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    const/4 v0, 0x0

    .line 683
    .local v0, info:Landroid/view/WindowInfo;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v3, v1}, Landroid/view/IWindowManager;->getWindowInfo(Landroid/os/IBinder;)Landroid/view/WindowInfo;

    move-result-object v0

    .line 684
    if-eqz v0, :cond_2

    .line 685
    iget-object v3, v0, Landroid/view/WindowInfo;->frame:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 686
    const/4 v3, 0x1

    .line 691
    if-eqz v0, :cond_1

    .line 692
    invoke-virtual {v0}, Landroid/view/WindowInfo;->recycle()V

    .line 695
    :cond_1
    :goto_0
    return v3

    .line 680
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

    .line 691
    .restart local v0       #info:Landroid/view/WindowInfo;
    .restart local v1       #token:Landroid/os/IBinder;
    .restart local v2       #windowId:I
    :cond_2
    if-eqz v0, :cond_3

    .line 692
    invoke-virtual {v0}, Landroid/view/WindowInfo;->recycle()V

    .line 695
    :cond_3
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 688
    :catch_0
    move-exception v3

    .line 691
    if-eqz v0, :cond_3

    .line 692
    invoke-virtual {v0}, Landroid/view/WindowInfo;->recycle()V

    goto :goto_1

    .line 691
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_4

    .line 692
    invoke-virtual {v0}, Landroid/view/WindowInfo;->recycle()V

    :cond_4
    throw v3
.end method

.method getActiveWindowId()I
    .locals 1

    .prologue
    .line 699
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
    .line 413
    const/4 v3, 0x0

    .line 414
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 415
    :try_start_0
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v7, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 417
    .local v2, resolvedUserId:I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServicesForFeedbackTempList:Ljava/util/List;

    .line 418
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 419
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v7

    iget-object v6, v7, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 420
    .local v6, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    :cond_0
    if-eqz p1, :cond_2

    .line 421
    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v9

    shl-int v0, v7, v9

    .line 422
    .local v0, feedbackTypeBit:I
    xor-int/lit8 v7, v0, -0x1

    and-int/2addr p1, v7

    .line 423
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 424
    .local v5, serviceCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 425
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 426
    .local v4, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v7, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    and-int/2addr v7, v0

    if-eqz v7, :cond_1

    .line 427
    iget-object v7, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    .end local v0           #feedbackTypeBit:I
    .end local v1           #i:I
    .end local v4           #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v5           #serviceCount:I
    :cond_2
    monitor-exit v8

    .line 432
    return-object v3

    .line 431
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
    .line 404
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 407
    .local v0, resolvedUserId:I
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    monitor-exit v2

    return-object v1

    .line 408
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
    .line 437
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 438
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v6, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v3

    .line 441
    .local v3, resolvedUserId:I
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v3, v6, :cond_1

    .line 442
    monitor-exit v7

    .line 455
    :cond_0
    return-void

    .line 444
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v6

    iget-object v5, v6, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 445
    .local v5, services:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 447
    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 449
    .local v4, service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :try_start_1
    iget-object v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v6}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onInterrupt()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 446
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
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

    .line 450
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #resolvedUserId:I
    .restart local v4       #service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .restart local v5       #services:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    :catch_0
    move-exception v2

    .line 451
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
    .line 617
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 618
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(IZ)Z

    move-result v0

    .line 619
    .local v0, handled:Z
    if-nez v0, :cond_0

    .line 620
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(IZ)Z

    move-result v0

    .line 622
    :cond_0
    monitor-exit v2

    return v0

    .line 623
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
    .line 707
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onTouchInteractionEnd()V

    .line 708
    return-void
.end method

.method onTouchInteractionStart()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onTouchInteractionStart()V

    .line 704
    return-void
.end method

.method public registerUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 8
    .parameter "serviceClient"
    .parameter "accessibilityServiceInfo"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v1, "android.permission.RETRIEVE_WINDOW_CONTENT"

    const-string v2, "registerUiTestAutomationService"

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    new-instance v3, Landroid/content/ComponentName;

    const-string v0, "foo.bar"

    const-string v1, "AutomationAccessibilityService"

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .local v3, componentName:Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 554
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v6

    .line 555
    .local v6, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-direct {p0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 558
    iget-boolean v0, v6, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_0

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 562
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 565
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v5, 0x1

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 567
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 569
    invoke-direct {p0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 570
    invoke-direct {p0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleSendStateToClientsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 571
    monitor-exit v7

    .line 572
    return-void

    .line 571
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
    .line 496
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 497
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 499
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 500
    .local v3, token:Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-direct {p0, v3, v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v1

    .line 502
    .local v1, removedWindowId:I
    if-ltz v1, :cond_0

    .line 507
    monitor-exit v7

    .line 525
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 510
    .local v4, userCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 511
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 512
    .local v5, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v6, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    iget-object v8, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-direct {p0, v3, v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v2

    .line 515
    .local v2, removedWindowIdForUser:I
    if-ltz v2, :cond_1

    .line 521
    monitor-exit v7

    goto :goto_0

    .line 524
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

    .line 510
    .restart local v0       #i:I
    .restart local v1       #removedWindowId:I
    .restart local v2       #removedWindowIdForUser:I
    .restart local v3       #token:Landroid/os/IBinder;
    .restart local v4       #userCount:I
    .restart local v5       #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 524
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

    .line 379
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 380
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 383
    .local v0, resolvedUserId:I
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v0, v4, :cond_1

    .line 384
    monitor-exit v3

    .line 400
    :cond_0
    :goto_0
    return v1

    .line 386
    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canDispatchAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    invoke-static {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 387
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 388
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v5, 0x5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 390
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 391
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 393
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v4, :cond_3

    .line 394
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v5, 0x1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 397
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 398
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v4

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    .line 399
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    sget v3, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 399
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
    .line 576
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v3, "android.permission.TEMPORARY_ENABLE_ACCESSIBILITY"

    const-string v4, "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 603
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, re:Landroid/os/RemoteException;
    goto :goto_0

    .line 586
    .end local v0           #re:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 587
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 589
    .local v1, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempStateChangeForCurrentUserMemento:Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->initialize(ILcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 591
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 592
    iput-boolean p2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 593
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 594
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 595
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 596
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 597
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 599
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->performServiceManagementLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 600
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 601
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleSendStateToClientsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 602
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
    .line 606
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 608
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

    .line 611
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V

    .line 613
    :cond_0
    monitor-exit v1

    .line 614
    return-void

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
