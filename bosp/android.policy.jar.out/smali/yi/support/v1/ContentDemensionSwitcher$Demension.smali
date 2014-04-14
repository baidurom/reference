.class final enum Lyi/support/v1/ContentDemensionSwitcher$Demension;
.super Ljava/lang/Enum;
.source "ContentDemensionSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/ContentDemensionSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Demension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lyi/support/v1/ContentDemensionSwitcher$Demension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyi/support/v1/ContentDemensionSwitcher$Demension;

.field public static final enum EXCLUSIVE:Lyi/support/v1/ContentDemensionSwitcher$Demension;

.field public static final enum STANDARD:Lyi/support/v1/ContentDemensionSwitcher$Demension;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lyi/support/v1/ContentDemensionSwitcher$Demension;

    const-string v1, "STANDARD"

    invoke-direct {v0, v1, v2}, Lyi/support/v1/ContentDemensionSwitcher$Demension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyi/support/v1/ContentDemensionSwitcher$Demension;->STANDARD:Lyi/support/v1/ContentDemensionSwitcher$Demension;

    .line 15
    new-instance v0, Lyi/support/v1/ContentDemensionSwitcher$Demension;

    const-string v1, "EXCLUSIVE"

    invoke-direct {v0, v1, v3}, Lyi/support/v1/ContentDemensionSwitcher$Demension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyi/support/v1/ContentDemensionSwitcher$Demension;->EXCLUSIVE:Lyi/support/v1/ContentDemensionSwitcher$Demension;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lyi/support/v1/ContentDemensionSwitcher$Demension;

    sget-object v1, Lyi/support/v1/ContentDemensionSwitcher$Demension;->STANDARD:Lyi/support/v1/ContentDemensionSwitcher$Demension;

    aput-object v1, v0, v2

    sget-object v1, Lyi/support/v1/ContentDemensionSwitcher$Demension;->EXCLUSIVE:Lyi/support/v1/ContentDemensionSwitcher$Demension;

    aput-object v1, v0, v3

    sput-object v0, Lyi/support/v1/ContentDemensionSwitcher$Demension;->$VALUES:[Lyi/support/v1/ContentDemensionSwitcher$Demension;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyi/support/v1/ContentDemensionSwitcher$Demension;
    .locals 1
    .parameter "name"

    .prologue
    .line 13
    const-class v0, Lyi/support/v1/ContentDemensionSwitcher$Demension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lyi/support/v1/ContentDemensionSwitcher$Demension;

    return-object v0
.end method

.method public static values()[Lyi/support/v1/ContentDemensionSwitcher$Demension;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lyi/support/v1/ContentDemensionSwitcher$Demension;->$VALUES:[Lyi/support/v1/ContentDemensionSwitcher$Demension;

    invoke-virtual {v0}, [Lyi/support/v1/ContentDemensionSwitcher$Demension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyi/support/v1/ContentDemensionSwitcher$Demension;

    return-object v0
.end method
