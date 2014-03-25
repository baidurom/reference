.class Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TempUserStateChangeMemento"
.end annotation


# instance fields
.field public final mEnabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public mIsAccessibilityEnabled:Z

.field public mIsDisplayMagnificationEnabled:Z

.field public mIsTouchExplorationEnabled:Z

.field public final mTouchExplorationGrantedServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public mUserId:I

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 2439
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2440
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mUserId:I

    .line 2444
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mEnabledServices:Ljava/util/Set;

    .line 2445
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mTouchExplorationGrantedServices:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2439
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    return-void
.end method


# virtual methods
.method public applyTo(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2
    .parameter "userState"

    .prologue
    .line 2460
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsAccessibilityEnabled:Z

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 2461
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsTouchExplorationEnabled:Z

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 2462
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsDisplayMagnificationEnabled:Z

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 2463
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2464
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2465
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2466
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2467
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2470
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mUserId:I

    .line 2471
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsAccessibilityEnabled:Z

    .line 2472
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsTouchExplorationEnabled:Z

    .line 2473
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsDisplayMagnificationEnabled:Z

    .line 2474
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2475
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2476
    return-void
.end method

.method public initialize(ILcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2
    .parameter "userId"
    .parameter "userState"

    .prologue
    .line 2449
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mUserId:I

    .line 2450
    iget-boolean v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsAccessibilityEnabled:Z

    .line 2451
    iget-boolean v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsTouchExplorationEnabled:Z

    .line 2452
    iget-boolean v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsDisplayMagnificationEnabled:Z

    .line 2453
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2454
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mEnabledServices:Ljava/util/Set;

    iget-object v1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2455
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2456
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2457
    return-void
.end method
