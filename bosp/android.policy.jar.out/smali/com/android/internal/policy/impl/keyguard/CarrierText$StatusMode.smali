.class final enum Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;
.super Ljava/lang/Enum;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StatusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

.field public static final enum NetworkLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

.field public static final enum Normal:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

.field public static final enum SimLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

.field public static final enum SimMissing:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

.field public static final enum SimMissingLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

.field public static final enum SimNotReady:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

.field public static final enum SimPermDisabled:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

.field public static final enum SimPukLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    .line 57
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    const-string v1, "NetworkLocked"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->NetworkLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    .line 58
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    const-string v1, "SimMissing"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    .line 59
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    const-string v1, "SimMissingLocked"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    .line 60
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    const-string v1, "SimPukLocked"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    .line 61
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    const-string v1, "SimLocked"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    .line 62
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    const-string v1, "SimPermDisabled"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    .line 63
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    const-string v1, "SimNotReady"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    .line 55
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->NetworkLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 55
    const-class v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    return-object v0
.end method
