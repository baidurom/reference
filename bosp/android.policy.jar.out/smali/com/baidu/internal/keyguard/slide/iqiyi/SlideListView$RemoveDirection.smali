.class public final enum Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;
.super Ljava/lang/Enum;
.source "SlideListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RemoveDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

.field public static final enum LEFT:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

.field public static final enum RIGHT:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;->RIGHT:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    new-instance v0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;->LEFT:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    sget-object v1, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;->RIGHT:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;->LEFT:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;->$VALUES:[Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;
    .locals 1
    .parameter "name"

    .prologue
    .line 64
    const-class v0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    return-object v0
.end method

.method public static values()[Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;->$VALUES:[Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    invoke-virtual {v0}, [Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    return-object v0
.end method
