.class final enum Lcom/baidu/internal/keyguard/water/TargetView$IconState;
.super Ljava/lang/Enum;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/water/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "IconState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/internal/keyguard/water/TargetView$IconState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/internal/keyguard/water/TargetView$IconState;

.field public static final enum STATE_ALPHA:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

.field public static final enum STATE_GONE:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

.field public static final enum STATE_NORMAL:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

.field public static final enum STATE_PRESSED:Lcom/baidu/internal/keyguard/water/TargetView$IconState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 485
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    const-string v1, "STATE_ALPHA"

    invoke-direct {v0, v1, v2}, Lcom/baidu/internal/keyguard/water/TargetView$IconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    const-string v1, "STATE_NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/baidu/internal/keyguard/water/TargetView$IconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    const-string v1, "STATE_PRESSED"

    invoke-direct {v0, v1, v4}, Lcom/baidu/internal/keyguard/water/TargetView$IconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_PRESSED:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    const-string v1, "STATE_GONE"

    invoke-direct {v0, v1, v5}, Lcom/baidu/internal/keyguard/water/TargetView$IconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_GONE:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    .line 484
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    sget-object v1, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_PRESSED:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_GONE:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->$VALUES:[Lcom/baidu/internal/keyguard/water/TargetView$IconState;

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
    .line 484
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/internal/keyguard/water/TargetView$IconState;
    .locals 1
    .parameter "name"

    .prologue
    .line 484
    const-class v0, Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    return-object v0
.end method

.method public static values()[Lcom/baidu/internal/keyguard/water/TargetView$IconState;
    .locals 1

    .prologue
    .line 484
    sget-object v0, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->$VALUES:[Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    invoke-virtual {v0}, [Lcom/baidu/internal/keyguard/water/TargetView$IconState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    return-object v0
.end method
