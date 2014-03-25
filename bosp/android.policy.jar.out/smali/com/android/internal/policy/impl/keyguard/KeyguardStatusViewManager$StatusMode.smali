.class final enum Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;
.super Ljava/lang/Enum;
.source "KeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StatusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

.field public static final enum NetworkLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

.field public static final enum NetworkSearching:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

.field public static final enum Normal:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

.field public static final enum SimLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

.field public static final enum SimMissing:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

.field public static final enum SimMissingLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

.field public static final enum SimNotReady:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

.field public static final enum SimPermDisabled:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

.field public static final enum SimPukLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

.field public static final enum SimUnknown:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;


# instance fields
.field private final mShowStatusLines:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 676
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 681
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    const-string v1, "NetworkLocked"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->NetworkLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 686
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    const-string v1, "SimMissing"

    invoke-direct {v0, v1, v5, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 691
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    const-string v1, "SimNotReady"

    invoke-direct {v0, v1, v6, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimNotReady:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 698
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    const-string v1, "SimMissingLocked"

    invoke-direct {v0, v1, v7, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 703
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    const-string v1, "NetworkSearching"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 709
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    const-string v1, "SimPukLocked"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 714
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    const-string v1, "SimLocked"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 719
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    const-string v1, "SimPermDisabled"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 724
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    const-string v1, "SimUnknown"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 672
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->NetworkLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimNotReady:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "mShowStatusLines"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 728
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 729
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->mShowStatusLines:Z

    .line 730
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 672
    const-class v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;
    .locals 1

    .prologue
    .line 672
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    return-object v0
.end method


# virtual methods
.method public shouldShowStatusLines()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->mShowStatusLines:Z

    return v0
.end method
