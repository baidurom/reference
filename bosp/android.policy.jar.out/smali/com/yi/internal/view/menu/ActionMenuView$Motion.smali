.class final enum Lcom/yi/internal/view/menu/ActionMenuView$Motion;
.super Ljava/lang/Enum;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yi/internal/view/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Motion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yi/internal/view/menu/ActionMenuView$Motion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yi/internal/view/menu/ActionMenuView$Motion;

.field public static final enum FADE_IN:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

.field public static final enum FADE_OUT:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

.field public static final enum HIDEN:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

.field public static final enum STANDARD:Lcom/yi/internal/view/menu/ActionMenuView$Motion;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    const-string v1, "STANDARD"

    invoke-direct {v0, v1, v2}, Lcom/yi/internal/view/menu/ActionMenuView$Motion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->STANDARD:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    .line 16
    new-instance v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    const-string v1, "FADE_IN"

    invoke-direct {v0, v1, v3}, Lcom/yi/internal/view/menu/ActionMenuView$Motion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->FADE_IN:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    .line 17
    new-instance v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    const-string v1, "FADE_OUT"

    invoke-direct {v0, v1, v4}, Lcom/yi/internal/view/menu/ActionMenuView$Motion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->FADE_OUT:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    .line 18
    new-instance v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    const-string v1, "HIDEN"

    invoke-direct {v0, v1, v5}, Lcom/yi/internal/view/menu/ActionMenuView$Motion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->HIDEN:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    sget-object v1, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->STANDARD:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->FADE_IN:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->FADE_OUT:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->HIDEN:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->$VALUES:[Lcom/yi/internal/view/menu/ActionMenuView$Motion;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yi/internal/view/menu/ActionMenuView$Motion;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    return-object v0
.end method

.method public static values()[Lcom/yi/internal/view/menu/ActionMenuView$Motion;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->$VALUES:[Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    invoke-virtual {v0}, [Lcom/yi/internal/view/menu/ActionMenuView$Motion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    return-object v0
.end method
