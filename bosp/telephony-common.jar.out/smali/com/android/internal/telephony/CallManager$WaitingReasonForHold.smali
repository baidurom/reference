.class final enum Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;
.super Ljava/lang/Enum;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WaitingReasonForHold"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

.field public static final enum ACCEPT_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

.field public static final enum MAKE_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

.field public static final enum NONE:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

.field public static final enum SWITCH_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 396
    new-instance v0, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->NONE:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    new-instance v0, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    const-string v1, "ACCEPT_CALL"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->ACCEPT_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    new-instance v0, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    const-string v1, "SWITCH_CALL"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->SWITCH_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    new-instance v0, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    const-string v1, "MAKE_CALL"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->MAKE_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 395
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    sget-object v1, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->NONE:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->ACCEPT_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->SWITCH_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->MAKE_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->$VALUES:[Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

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
    .line 395
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;
    .locals 1
    .parameter "name"

    .prologue
    .line 395
    const-class v0, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->$VALUES:[Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    return-object v0
.end method
