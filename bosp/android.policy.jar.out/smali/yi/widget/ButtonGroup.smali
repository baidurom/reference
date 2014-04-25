.class public final Lyi/widget/ButtonGroup;
.super Landroid/widget/LinearLayout;
.source "ButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/widget/ButtonGroup$LayoutParams;,
        Lyi/widget/ButtonGroup$OnButtonCheckedListener;
    }
.end annotation


# static fields
.field private static final BUTTON_HEIGHT:I = -0x2

.field private static BUTTON_NUMBER_MAX:I = 0x0

.field private static BUTTON_NUMBER_MIN:I = 0x0

.field private static final BUTTON_WIDTH:I = -0x2

.field private static GROUND_TYPE_BOTTOM:I = 0x0

.field private static GROUND_TYPE_TOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ButtonGroup"


# instance fields
.field private mBackground:I

.field private mBackgroundType:I

.field private mButtonNumber:I

.field private mButtons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedId:I

.field mClickListener:Landroid/view/View$OnClickListener;

.field protected mOnButtonCheckedListener:Lyi/widget/ButtonGroup$OnButtonCheckedListener;

.field private mTitles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x2

    sput v0, Lyi/widget/ButtonGroup;->BUTTON_NUMBER_MIN:I

    .line 40
    const/4 v0, 0x5

    sput v0, Lyi/widget/ButtonGroup;->BUTTON_NUMBER_MAX:I

    .line 41
    const/4 v0, 0x0

    sput v0, Lyi/widget/ButtonGroup;->GROUND_TYPE_TOP:I

    .line 42
    const/4 v0, 0x1

    sput v0, Lyi/widget/ButtonGroup;->GROUND_TYPE_BOTTOM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput v0, p0, Lyi/widget/ButtonGroup;->mCheckedId:I

    .line 36
    iput v0, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    .line 37
    iput v0, p0, Lyi/widget/ButtonGroup;->mBackgroundType:I

    .line 47
    const v0, 0x508014a

    iput v0, p0, Lyi/widget/ButtonGroup;->mBackground:I

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyi/widget/ButtonGroup;->mButtons:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyi/widget/ButtonGroup;->mTitles:Ljava/util/HashMap;

    .line 393
    new-instance v0, Lyi/widget/ButtonGroup$1;

    invoke-direct {v0, p0}, Lyi/widget/ButtonGroup$1;-><init>(Lyi/widget/ButtonGroup;)V

    iput-object v0, p0, Lyi/widget/ButtonGroup;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 416
    new-instance v0, Lyi/widget/ButtonGroup$2;

    invoke-direct {v0, p0}, Lyi/widget/ButtonGroup$2;-><init>(Lyi/widget/ButtonGroup;)V

    iput-object v0, p0, Lyi/widget/ButtonGroup;->mClickListener:Landroid/view/View$OnClickListener;

    .line 80
    sget v0, Lyi/widget/ButtonGroup;->BUTTON_NUMBER_MIN:I

    iput v0, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    .line 81
    invoke-direct {p0, p1}, Lyi/widget/ButtonGroup;->setupView(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0, v1}, Lyi/widget/ButtonGroup;->setCheckedButton(I)Z

    .line 83
    invoke-virtual {p0, v1}, Lyi/widget/ButtonGroup;->setOrientation(I)V

    .line 84
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lyi/widget/ButtonGroup;->setGravity(I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "buttonNumber"
    .parameter "backgroundType"

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput v0, p0, Lyi/widget/ButtonGroup;->mCheckedId:I

    .line 36
    iput v0, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    .line 37
    iput v0, p0, Lyi/widget/ButtonGroup;->mBackgroundType:I

    .line 47
    const v0, 0x508014a

    iput v0, p0, Lyi/widget/ButtonGroup;->mBackground:I

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyi/widget/ButtonGroup;->mButtons:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyi/widget/ButtonGroup;->mTitles:Ljava/util/HashMap;

    .line 393
    new-instance v0, Lyi/widget/ButtonGroup$1;

    invoke-direct {v0, p0}, Lyi/widget/ButtonGroup$1;-><init>(Lyi/widget/ButtonGroup;)V

    iput-object v0, p0, Lyi/widget/ButtonGroup;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 416
    new-instance v0, Lyi/widget/ButtonGroup$2;

    invoke-direct {v0, p0}, Lyi/widget/ButtonGroup$2;-><init>(Lyi/widget/ButtonGroup;)V

    iput-object v0, p0, Lyi/widget/ButtonGroup;->mClickListener:Landroid/view/View$OnClickListener;

    .line 57
    iput p2, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    .line 58
    iput p3, p0, Lyi/widget/ButtonGroup;->mBackgroundType:I

    .line 61
    iget v0, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    sget v1, Lyi/widget/ButtonGroup;->BUTTON_NUMBER_MIN:I

    if-ge v0, v1, :cond_0

    .line 62
    sget v0, Lyi/widget/ButtonGroup;->BUTTON_NUMBER_MIN:I

    iput v0, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    .line 64
    :cond_0
    iget v0, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    sget v1, Lyi/widget/ButtonGroup;->BUTTON_NUMBER_MAX:I

    if-le v0, v1, :cond_1

    .line 65
    sget v0, Lyi/widget/ButtonGroup;->BUTTON_NUMBER_MAX:I

    iput v0, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    .line 68
    :cond_1
    invoke-direct {p0, p1}, Lyi/widget/ButtonGroup;->setupView(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0, v2}, Lyi/widget/ButtonGroup;->setCheckedButton(I)Z

    .line 70
    invoke-virtual {p0, v2}, Lyi/widget/ButtonGroup;->setOrientation(I)V

    .line 71
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lyi/widget/ButtonGroup;->setGravity(I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v0, p0, Lyi/widget/ButtonGroup;->mCheckedId:I

    .line 36
    iput v0, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    .line 37
    iput v0, p0, Lyi/widget/ButtonGroup;->mBackgroundType:I

    .line 47
    const v0, 0x508014a

    iput v0, p0, Lyi/widget/ButtonGroup;->mBackground:I

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyi/widget/ButtonGroup;->mButtons:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyi/widget/ButtonGroup;->mTitles:Ljava/util/HashMap;

    .line 393
    new-instance v0, Lyi/widget/ButtonGroup$1;

    invoke-direct {v0, p0}, Lyi/widget/ButtonGroup$1;-><init>(Lyi/widget/ButtonGroup;)V

    iput-object v0, p0, Lyi/widget/ButtonGroup;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 416
    new-instance v0, Lyi/widget/ButtonGroup$2;

    invoke-direct {v0, p0}, Lyi/widget/ButtonGroup$2;-><init>(Lyi/widget/ButtonGroup;)V

    iput-object v0, p0, Lyi/widget/ButtonGroup;->mClickListener:Landroid/view/View$OnClickListener;

    .line 93
    invoke-direct {p0, p1, p2}, Lyi/widget/ButtonGroup;->loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    invoke-direct {p0, p1}, Lyi/widget/ButtonGroup;->setupView(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p0, v1}, Lyi/widget/ButtonGroup;->setCheckedButton(I)Z

    .line 96
    invoke-virtual {p0, v1}, Lyi/widget/ButtonGroup;->setOrientation(I)V

    .line 97
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lyi/widget/ButtonGroup;->setGravity(I)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lyi/widget/ButtonGroup;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lyi/widget/ButtonGroup;->mButtons:Ljava/util/HashMap;

    return-object v0
.end method

.method private addButton(Landroid/widget/TextView;)V
    .locals 0
    .parameter "bt"

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 433
    return-void
.end method

.method private initCheckedState(I)V
    .locals 6
    .parameter "checkedId"

    .prologue
    .line 139
    iget-object v4, p0, Lyi/widget/ButtonGroup;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 140
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 141
    iget-object v4, p0, Lyi/widget/ButtonGroup;->mButtons:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    .local v0, bt:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 147
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 151
    if-eq v2, p1, :cond_2

    .line 152
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 154
    :cond_2
    if-nez v2, :cond_3

    .line 155
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 156
    :cond_3
    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_4

    .line 157
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 159
    :cond_4
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 163
    .end local v0           #bt:Landroid/widget/TextView;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_5
    return-void
.end method

.method private loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 167
    const/4 v5, 0x0

    .line 168
    .local v5, title:Ljava/lang/String;
    sget-object v7, Lcom/yi/internal/R$styleable;->ButtonGroup:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 170
    .local v1, attributes:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .line 171
    .local v4, n:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 172
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 173
    .local v0, attr:I
    packed-switch v0, :pswitch_data_0

    .line 171
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    :pswitch_0
    const/4 v7, 0x1

    invoke-virtual {v1, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lyi/widget/ButtonGroup;->mBackgroundType:I

    goto :goto_1

    .line 179
    :pswitch_1
    const v7, 0x508014a

    invoke-virtual {v1, v0, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lyi/widget/ButtonGroup;->mBackground:I

    .line 180
    const-string v7, "ButtonGroup"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "ButtonGroup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mBackground = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lyi/widget/ButtonGroup;->mBackground:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 184
    :pswitch_2
    const/4 v7, 0x1

    invoke-virtual {v1, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    goto :goto_1

    .line 188
    :pswitch_3
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 189
    iget-object v7, p0, Lyi/widget/ButtonGroup;->mTitles:Ljava/util/HashMap;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 193
    :pswitch_4
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 194
    iget-object v7, p0, Lyi/widget/ButtonGroup;->mTitles:Ljava/util/HashMap;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 198
    :pswitch_5
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 199
    iget-object v7, p0, Lyi/widget/ButtonGroup;->mTitles:Ljava/util/HashMap;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 203
    :pswitch_6
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 204
    iget-object v7, p0, Lyi/widget/ButtonGroup;->mTitles:Ljava/util/HashMap;

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 208
    :pswitch_7
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 209
    iget-object v7, p0, Lyi/widget/ButtonGroup;->mTitles:Ljava/util/HashMap;

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 215
    .end local v0           #attr:I
    :cond_1
    sget-object v7, Landroid/R$styleable;->LinearLayout_Layout:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 216
    const/4 v7, 0x1

    const/4 v8, -0x2

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    .line 218
    .local v6, width:I
    const/4 v7, 0x2

    const/4 v8, -0x2

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    .line 221
    .local v2, height:I
    const/4 v7, -0x2

    if-eq v6, v7, :cond_2

    .line 222
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "ButtonGroup: layout_width should be WRAP_CONTENT"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 224
    :cond_2
    const/4 v7, -0x2

    if-eq v2, v7, :cond_3

    .line 225
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "ButtonGroup: layout_height should be WRAP_CONTENT"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 228
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    iget v7, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    sget v8, Lyi/widget/ButtonGroup;->BUTTON_NUMBER_MIN:I

    if-ge v7, v8, :cond_4

    .line 232
    sget v7, Lyi/widget/ButtonGroup;->BUTTON_NUMBER_MIN:I

    iput v7, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    .line 234
    :cond_4
    iget v7, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    sget v8, Lyi/widget/ButtonGroup;->BUTTON_NUMBER_MAX:I

    if-le v7, v8, :cond_5

    .line 235
    sget v7, Lyi/widget/ButtonGroup;->BUTTON_NUMBER_MAX:I

    iput v7, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    .line 238
    :cond_5
    return-void

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method private setupView(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v6, -0x2

    const/4 v10, 0x4

    const/16 v9, 0xc

    const/4 v8, 0x0

    .line 242
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 243
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v4}, Lyi/widget/ButtonGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget v6, p0, Lyi/widget/ButtonGroup;->mBackgroundType:I

    sget v7, Lyi/widget/ButtonGroup;->GROUND_TYPE_TOP:I

    if-ne v6, v7, :cond_8

    .line 246
    const v6, 0x50802a2

    iput v6, p0, Lyi/widget/ButtonGroup;->mBackground:I

    .line 251
    :cond_0
    :goto_0
    iget v6, p0, Lyi/widget/ButtonGroup;->mBackground:I

    invoke-virtual {p0, v6}, Lyi/widget/ButtonGroup;->setBackgroundResource(I)V

    .line 253
    invoke-virtual {p0}, Lyi/widget/ButtonGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 254
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 255
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 258
    :cond_1
    const/4 v0, 0x0

    .line 259
    .local v0, bt:Landroid/widget/TextView;
    const/4 v5, 0x0

    .line 261
    .local v5, title:Ljava/lang/String;
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 263
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x5090028

    invoke-virtual {v3, v6, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #bt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 264
    .restart local v0       #bt:Landroid/widget/TextView;
    if-eqz v0, :cond_4

    .line 265
    iget-object v6, p0, Lyi/widget/ButtonGroup;->mTitles:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #title:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 266
    .restart local v5       #title:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 267
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 270
    iget-object v6, p0, Lyi/widget/ButtonGroup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v6, p0, Lyi/widget/ButtonGroup;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 272
    iget v6, p0, Lyi/widget/ButtonGroup;->mBackground:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 273
    invoke-virtual {v0, v9, v8, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 274
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_3

    .line 276
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 279
    :cond_3
    iget-object v6, p0, Lyi/widget/ButtonGroup;->mButtons:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-direct {p0, v0}, Lyi/widget/ButtonGroup;->addButton(Landroid/widget/TextView;)V

    .line 283
    :cond_4
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    iget v6, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_9

    .line 284
    const v6, 0x5090029

    invoke-virtual {v3, v6, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #bt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 285
    .restart local v0       #bt:Landroid/widget/TextView;
    if-eqz v0, :cond_7

    .line 286
    iget-object v6, p0, Lyi/widget/ButtonGroup;->mTitles:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #title:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 287
    .restart local v5       #title:Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 288
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 291
    iget-object v6, p0, Lyi/widget/ButtonGroup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v6, p0, Lyi/widget/ButtonGroup;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 293
    iget v6, p0, Lyi/widget/ButtonGroup;->mBackground:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 294
    invoke-virtual {v0, v9, v8, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 295
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_6

    .line 297
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 300
    :cond_6
    iget-object v6, p0, Lyi/widget/ButtonGroup;->mButtons:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-direct {p0, v0}, Lyi/widget/ButtonGroup;->addButton(Landroid/widget/TextView;)V

    .line 283
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 247
    .end local v0           #bt:Landroid/widget/TextView;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #i:I
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #title:Ljava/lang/String;
    :cond_8
    iget v6, p0, Lyi/widget/ButtonGroup;->mBackgroundType:I

    sget v7, Lyi/widget/ButtonGroup;->GROUND_TYPE_BOTTOM:I

    if-ne v6, v7, :cond_0

    .line 248
    const v6, 0x508014a

    iput v6, p0, Lyi/widget/ButtonGroup;->mBackground:I

    goto/16 :goto_0

    .line 305
    .restart local v0       #bt:Landroid/widget/TextView;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #i:I
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #title:Ljava/lang/String;
    :cond_9
    const v6, 0x509002a

    invoke-virtual {v3, v6, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #bt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 306
    .restart local v0       #bt:Landroid/widget/TextView;
    if-eqz v0, :cond_c

    .line 307
    iget-object v6, p0, Lyi/widget/ButtonGroup;->mTitles:Ljava/util/HashMap;

    iget v7, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #title:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 308
    .restart local v5       #title:Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 309
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_a
    iget v6, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 312
    iget-object v6, p0, Lyi/widget/ButtonGroup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v6, p0, Lyi/widget/ButtonGroup;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 314
    iget v6, p0, Lyi/widget/ButtonGroup;->mBackground:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 315
    invoke-virtual {v0, v9, v8, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 316
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_b

    .line 318
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 321
    :cond_b
    iget-object v6, p0, Lyi/widget/ButtonGroup;->mButtons:Ljava/util/HashMap;

    iget v7, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-direct {p0, v0}, Lyi/widget/ButtonGroup;->addButton(Landroid/widget/TextView;)V

    .line 324
    :cond_c
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .parameter "child"
    .parameter "index"

    .prologue
    .line 442
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 443
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 447
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 467
    instance-of v0, p1, Lyi/widget/ButtonGroup$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lyi/widget/ButtonGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 472
    new-instance v0, Lyi/widget/ButtonGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lyi/widget/ButtonGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lyi/widget/ButtonGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lyi/widget/ButtonGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lyi/widget/ButtonGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lyi/widget/ButtonGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lyi/widget/ButtonGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 459
    new-instance v0, Lyi/widget/ButtonGroup$LayoutParams;

    invoke-virtual {p0}, Lyi/widget/ButtonGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lyi/widget/ButtonGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedButtonId()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lyi/widget/ButtonGroup;->mCheckedId:I

    return v0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 119
    iget-object v0, p0, Lyi/widget/ButtonGroup;->mTitles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 378
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 379
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 7
    .parameter "resid"

    .prologue
    const/16 v6, 0xc

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 123
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 125
    invoke-super {p0, v3, v5, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 127
    iget-object v3, p0, Lyi/widget/ButtonGroup;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 128
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 129
    iget-object v3, p0, Lyi/widget/ButtonGroup;->mButtons:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    .local v0, bt:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 132
    invoke-virtual {v0, v6, v5, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 128
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v0           #bt:Landroid/widget/TextView;
    :cond_1
    iget v3, p0, Lyi/widget/ButtonGroup;->mCheckedId:I

    invoke-direct {p0, v3}, Lyi/widget/ButtonGroup;->initCheckedState(I)V

    .line 136
    return-void
.end method

.method public setCheckedButton(I)Z
    .locals 6
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 335
    if-ltz p1, :cond_0

    iget v4, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    if-lt p1, v4, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v2

    .line 340
    :cond_1
    iget-object v4, p0, Lyi/widget/ButtonGroup;->mButtons:Ljava/util/HashMap;

    iget v5, p0, Lyi/widget/ButtonGroup;->mCheckedId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 341
    .local v0, button:Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 342
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 343
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 344
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 349
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v4, p0, Lyi/widget/ButtonGroup;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #button:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 350
    .restart local v0       #button:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 355
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 356
    if-nez p1, :cond_4

    .line 357
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 365
    :cond_3
    :goto_1
    iput p1, p0, Lyi/widget/ButtonGroup;->mCheckedId:I

    move v2, v3

    .line 366
    goto :goto_0

    .line 358
    :cond_4
    iget v2, p0, Lyi/widget/ButtonGroup;->mButtonNumber:I

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_5

    .line 359
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 361
    :cond_5
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1
.end method

.method public setOnButtonCheckedListener(Lyi/widget/ButtonGroup$OnButtonCheckedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 389
    iput-object p1, p0, Lyi/widget/ButtonGroup;->mOnButtonCheckedListener:Lyi/widget/ButtonGroup$OnButtonCheckedListener;

    .line 390
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v0, 0x0

    .line 451
    invoke-super {p0, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 452
    return-void
.end method

.method public setTitle(ILjava/lang/String;)Z
    .locals 3
    .parameter "id"
    .parameter "title"

    .prologue
    .line 109
    iget-object v1, p0, Lyi/widget/ButtonGroup;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    .local v0, bt:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 111
    const/4 v1, 0x0

    .line 115
    :goto_0
    return v1

    .line 113
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lyi/widget/ButtonGroup;->mTitles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/4 v1, 0x1

    goto :goto_0
.end method
