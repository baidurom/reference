.class synthetic Lcom/yi/internal/view/menu/ActionMenuView$3;
.super Ljava/lang/Object;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yi/internal/view/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$yi$internal$view$menu$ActionMenuView$Motion:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->values()[Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yi/internal/view/menu/ActionMenuView$3;->$SwitchMap$com$yi$internal$view$menu$ActionMenuView$Motion:[I

    :try_start_0
    sget-object v0, Lcom/yi/internal/view/menu/ActionMenuView$3;->$SwitchMap$com$yi$internal$view$menu$ActionMenuView$Motion:[I

    sget-object v1, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->FADE_IN:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    invoke-virtual {v1}, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/yi/internal/view/menu/ActionMenuView$3;->$SwitchMap$com$yi$internal$view$menu$ActionMenuView$Motion:[I

    sget-object v1, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->FADE_OUT:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    invoke-virtual {v1}, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/yi/internal/view/menu/ActionMenuView$3;->$SwitchMap$com$yi$internal$view$menu$ActionMenuView$Motion:[I

    sget-object v1, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->HIDEN:Lcom/yi/internal/view/menu/ActionMenuView$Motion;

    invoke-virtual {v1}, Lcom/yi/internal/view/menu/ActionMenuView$Motion;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
