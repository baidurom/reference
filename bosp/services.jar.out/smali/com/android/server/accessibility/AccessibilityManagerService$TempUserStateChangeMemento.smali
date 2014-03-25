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
    .line 2473
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2474
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mUserId:I

    .line 2478
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mEnabledServices:Ljava/util/Set;

    .line 2479
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
    .line 2473
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    return-void
.end method


# virtual methods
.method public applyTo(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2
    .parameter "userState"

    .prologue
    .line 2494
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsAccessibilityEnabled:Z

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 2495
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsTouchExplorationEnabled:Z

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 2496
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsDisplayMagnificationEnabled:Z

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 2497
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2498
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2499
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2500
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2501
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2504
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mUserId:I

    .line 2505
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsAccessibilityEnabled:Z

    .line 2506
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsTouchExplorationEnabled:Z

    .line 2507
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsDisplayMagnificationEnabled:Z

    .line 2508
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2509
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2510
    return-void
.end method

.method public initialize(ILcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2
    .parameter "userId"
    .parameter "userState"

    .prologue
    .line 2483
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mUserId:I

    .line 2484
    iget-boolean v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsAccessibilityEnabled:Z

    .line 2485
    iget-boolean v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsTouchExplorationEnabled:Z

    .line 2486
    iget-boolean v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsDisplayMagnificationEnabled:Z

    .line 2487
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2488
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mEnabledServices:Ljava/util/Set;

    iget-object v1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2489
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2490
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2491
    return-void
.end method
