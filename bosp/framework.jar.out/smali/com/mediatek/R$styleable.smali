.class public final Lcom/mediatek/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BladeView:[I = null

.field public static final BladeView_bladeIndicator:I = 0x6

.field public static final BladeView_bladeIndicatorHeight:I = 0xa

.field public static final BladeView_bladeIndicatorWidth:I = 0x9

.field public static final BladeView_disablePromptColor:I = 0xe

.field public static final BladeView_disableSectionColor:I = 0xc

.field public static final BladeView_enablePromptColor:I = 0xd

.field public static final BladeView_enableSectionColor:I = 0xb

.field public static final BladeView_fullSectionsId:I = 0x3

.field public static final BladeView_indicatorTopsId:I = 0x7

.field public static final BladeView_promptAnimationDuration:I = 0x8

.field public static final BladeView_promptHorzOffset:I = 0x0

.field public static final BladeView_promptVertOffset:I = 0x1

.field public static final BladeView_replacedSectionsId:I = 0x4

.field public static final BladeView_sectionBaselinesId:I = 0x5

.field public static final BladeView_sectionFontSize:I = 0x2

.field public static final BookmarkView:[I = null

.field public static final BookmarkView_dotGap:I = 0x3

.field public static final BookmarkView_imageDispHeight:I = 0x1

.field public static final BookmarkView_imageDispWidth:I = 0x0

.field public static final BookmarkView_imageReflection:I = 0x4

.field public static final BookmarkView_infoColor:I = 0x7

.field public static final BookmarkView_maxZoomOut:I = 0x5

.field public static final BookmarkView_spaceBetweenItems:I = 0x2

.field public static final BookmarkView_titleColor:I = 0x6

.field public static final MTKAppWidgetProviderInfo:[I = null

.field public static final MTKAppWidgetProviderInfo_hasUsedCustomerView:I = 0x0

.field public static final MTKManifest:[I = null

.field public static final MTKManifest_isThemePackage:I = 0x0

.field public static final MTKManifest_themeNameId:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 509
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/R$styleable;->BladeView:[I

    .line 747
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/R$styleable;->BookmarkView:[I

    .line 885
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x2010011

    aput v2, v0, v1

    sput-object v0, Lcom/mediatek/R$styleable;->MTKAppWidgetProviderInfo:[I

    .line 914
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/R$styleable;->MTKManifest:[I

    return-void

    .line 509
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x2t
        0x1t 0x0t 0x1t 0x2t
        0x2t 0x0t 0x1t 0x2t
        0x3t 0x0t 0x1t 0x2t
        0x4t 0x0t 0x1t 0x2t
        0x5t 0x0t 0x1t 0x2t
        0x6t 0x0t 0x1t 0x2t
        0x7t 0x0t 0x1t 0x2t
        0x8t 0x0t 0x1t 0x2t
        0x9t 0x0t 0x1t 0x2t
        0xat 0x0t 0x1t 0x2t
        0xbt 0x0t 0x1t 0x2t
        0xct 0x0t 0x1t 0x2t
        0xdt 0x0t 0x1t 0x2t
        0xet 0x0t 0x1t 0x2t
    .end array-data

    .line 747
    :array_1
    .array-data 0x4
        0x12t 0x0t 0x1t 0x2t
        0x13t 0x0t 0x1t 0x2t
        0x14t 0x0t 0x1t 0x2t
        0x15t 0x0t 0x1t 0x2t
        0x16t 0x0t 0x1t 0x2t
        0x17t 0x0t 0x1t 0x2t
        0x18t 0x0t 0x1t 0x2t
        0x19t 0x0t 0x1t 0x2t
    .end array-data

    .line 914
    :array_2
    .array-data 0x4
        0xft 0x0t 0x1t 0x2t
        0x10t 0x0t 0x1t 0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
