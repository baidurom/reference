.class Landroid/view/View$ScrollabilityCache;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollabilityCache"
.end annotation


# static fields
.field public static final FADING:I = 0x2

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field private static final OPAQUE:[F

.field private static final TRANSPARENT:[F


# instance fields
.field public fadeScrollBars:Z

.field public fadeStartTime:J

.field public fadingEdgeLength:I

.field public host:Landroid/view/View;

.field public interpolatorValues:[F

.field private mLastColor:I

.field public final matrix:Landroid/graphics/Matrix;

.field public final paint:Landroid/graphics/Paint;

.field public scrollBar:Landroid/widget/ScrollBarDrawable;

.field public scrollBarDefaultDelayBeforeFade:I

.field public scrollBarFadeDuration:I

.field public final scrollBarInterpolator:Landroid/graphics/Interpolator;

.field public scrollBarSize:I

.field public shader:Landroid/graphics/Shader;

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18023
    new-array v0, v3, [F

    const/high16 v1, 0x437f

    aput v1, v0, v2

    sput-object v0, Landroid/view/View$ScrollabilityCache;->OPAQUE:[F

    .line 18024
    new-array v0, v3, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/view/View$ScrollabilityCache;->TRANSPARENT:[F

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V
    .locals 8
    .parameter "configuration"
    .parameter "host"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 18040
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18021
    new-instance v0, Landroid/graphics/Interpolator;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Landroid/graphics/Interpolator;-><init>(II)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    .line 18036
    iput v6, p0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 18041
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 18042
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 18043
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 18044
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 18046
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 18047
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    .line 18050
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f80

    const/high16 v5, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 18051
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 18052
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 18054
    iput-object p2, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    .line 18055
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 18076
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 18077
    .local v4, now:J
    iget-wide v6, p0, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 18082
    long-to-int v3, v4

    .line 18083
    .local v3, nextFrame:I
    const/4 v0, 0x0

    .line 18085
    .local v0, framesCount:I
    iget-object v2, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    .line 18088
    .local v2, interpolator:Landroid/graphics/Interpolator;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #framesCount:I
    .local v1, framesCount:I
    sget-object v6, Landroid/view/View$ScrollabilityCache;->OPAQUE:[F

    invoke-virtual {v2, v0, v3, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 18091
    iget v6, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    add-int/2addr v3, v6

    .line 18092
    sget-object v6, Landroid/view/View$ScrollabilityCache;->TRANSPARENT:[F

    invoke-virtual {v2, v1, v3, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 18094
    const/4 v6, 0x2

    iput v6, p0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 18097
    iget-object v6, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->invalidate(Z)V

    .line 18099
    .end local v1           #framesCount:I
    .end local v2           #interpolator:Landroid/graphics/Interpolator;
    .end local v3           #nextFrame:I
    :cond_0
    return-void
.end method

.method public setFadeColor(I)V
    .locals 8
    .parameter "color"

    .prologue
    const/high16 v5, -0x100

    const/high16 v4, 0x3f80

    const/4 v1, 0x0

    .line 18058
    iget v0, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    if-eq p1, v0, :cond_0

    .line 18059
    iput p1, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    .line 18061
    if-eqz p1, :cond_1

    .line 18062
    new-instance v0, Landroid/graphics/LinearGradient;

    or-int/2addr v5, p1

    const v2, 0xffffff

    and-int v6, p1, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 18064
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 18066
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 18073
    :cond_0
    :goto_0
    return-void

    .line 18068
    :cond_1
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 18069
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 18070
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0
.end method
