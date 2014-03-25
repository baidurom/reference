.class Lcom/baidu/internal/keyguard/slide/Ease$Quad;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Quad"
.end annotation


# static fields
.field public static final easeIn:Landroid/animation/TimeInterpolator;

.field public static final easeInOut:Landroid/animation/TimeInterpolator;

.field public static final easeOut:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/baidu/internal/keyguard/slide/Ease$Quad$1;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/slide/Ease$Quad$1;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/Ease$Quad;->easeIn:Landroid/animation/TimeInterpolator;

    .line 44
    new-instance v0, Lcom/baidu/internal/keyguard/slide/Ease$Quad$2;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/slide/Ease$Quad$2;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    .line 49
    new-instance v0, Lcom/baidu/internal/keyguard/slide/Ease$Quad$3;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/slide/Ease$Quad$3;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/Ease$Quad;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
