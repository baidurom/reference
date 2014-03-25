.class Lcom/baidu/internal/keyguard/slide/Ease$Sine;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sine"
.end annotation


# static fields
.field public static final easeIn:Landroid/animation/TimeInterpolator;

.field public static final easeInOut:Landroid/animation/TimeInterpolator;

.field public static final easeOut:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/baidu/internal/keyguard/slide/Ease$Sine$1;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/slide/Ease$Sine$1;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/Ease$Sine;->easeIn:Landroid/animation/TimeInterpolator;

    .line 104
    new-instance v0, Lcom/baidu/internal/keyguard/slide/Ease$Sine$2;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/slide/Ease$Sine$2;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/Ease$Sine;->easeOut:Landroid/animation/TimeInterpolator;

    .line 109
    new-instance v0, Lcom/baidu/internal/keyguard/slide/Ease$Sine$3;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/slide/Ease$Sine$3;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/Ease$Sine;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
