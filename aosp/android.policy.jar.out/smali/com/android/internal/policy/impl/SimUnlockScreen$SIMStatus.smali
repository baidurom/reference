.class final enum Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;
.super Ljava/lang/Enum;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SIMStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

.field public static final enum SIM1_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

.field public static final enum SIM1_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

.field public static final enum SIM2_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

.field public static final enum SIM2_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    const-string v1, "SIM1_BOTH_SIM_INSERTED"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;->SIM1_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    .line 154
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    const-string v1, "SIM1_ONLY_SIM1_INSERTED"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;->SIM1_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    .line 159
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    const-string v1, "SIM2_BOTH_SIM_INSERTED"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;->SIM2_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    .line 163
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    const-string v1, "SIM2_ONLY_SIM1_INSERTED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;->SIM2_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    .line 145
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;->SIM1_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;->SIM1_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;->SIM2_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;->SIM2_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;->$VALUES:[Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

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
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 145
    const-class v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;->$VALUES:[Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/SimUnlockScreen$SIMStatus;

    return-object v0
.end method
