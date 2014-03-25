.class final enum Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;
.super Ljava/lang/Enum;
.source "SmartKeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StatusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

.field public static final enum NetworkLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

.field public static final enum NetworkSearching:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

.field public static final enum Normal:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

.field public static final enum SimLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

.field public static final enum SimMissing:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

.field public static final enum SimMissingLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

.field public static final enum SimNotReady:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

.field public static final enum SimPermDisabled:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

.field public static final enum SimPukLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

.field public static final enum SimUnknown:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;


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

    .line 723
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3, v4}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->Normal:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 728
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    const-string v1, "NetworkLocked"

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->NetworkLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 733
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    const-string v1, "SimMissing"

    invoke-direct {v0, v1, v5, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 738
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    const-string v1, "SimNotReady"

    invoke-direct {v0, v1, v6, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimNotReady:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 745
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    const-string v1, "SimMissingLocked"

    invoke-direct {v0, v1, v7, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 750
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    const-string v1, "NetworkSearching"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 756
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    const-string v1, "SimPukLocked"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimPukLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 761
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    const-string v1, "SimLocked"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 766
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    const-string v1, "SimPermDisabled"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimPermDisabled:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 771
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    const-string v1, "SimUnknown"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 719
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->Normal:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->NetworkLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimNotReady:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimPukLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimPermDisabled:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->$VALUES:[Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

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
    .line 775
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 776
    iput-boolean p3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->mShowStatusLines:Z

    .line 777
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 719
    const-class v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    return-object v0
.end method

.method public static values()[Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;
    .locals 1

    .prologue
    .line 719
    sget-object v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->$VALUES:[Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    invoke-virtual {v0}, [Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    return-object v0
.end method


# virtual methods
.method public shouldShowStatusLines()Z
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->mShowStatusLines:Z

    return v0
.end method
