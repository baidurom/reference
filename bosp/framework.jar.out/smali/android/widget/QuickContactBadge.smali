.class public Landroid/widget/QuickContactBadge;
.super Landroid/widget/ImageView;
.source "QuickContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/QuickContactBadge$QueryHandler;
    }
.end annotation


# static fields
.field private static final ACTION_STRANGE_QUICK_CONTACT:Ljava/lang/String; = "com.baidu.contacts.action.STRANGE_QUICK_CONTACT"

.field static final EMAIL_ID_COLUMN_INDEX:I = 0x0

.field static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final EMAIL_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field static final MINIMUM_PADDING:I = 0x2

.field static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final PHONE_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP_AND_TRIGGER:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHONE_LOOKUP_AND_TRIGGER:I = 0x3

.field private static final res_id:[I


# instance fields
.field private mContactEmail:Ljava/lang/String;

.field private mContactPhone:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field private mDefaultAvatar:Landroid/graphics/drawable/Drawable;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 415
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/QuickContactBadge;->res_id:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        #drawable@baidu_p001_small#a
        #drawable@baidu_p002_small#a
        #drawable@baidu_p003_small#a
        #drawable@baidu_p004_small#a
        #drawable@baidu_p005_small#a
        #drawable@baidu_p006_small#a
        #drawable@baidu_p007_small#a
        #drawable@baidu_p008_small#a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 98
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, styledAttributes:Landroid/content/res/TypedArray;
    const/16 v1, 0xe9

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    new-instance v1, Landroid/widget/QuickContactBadge$QueryHandler;

    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/widget/QuickContactBadge$QueryHandler;-><init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    .line 104
    invoke-virtual {p0, p0}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget v1, p0, Landroid/widget/QuickContactBadge;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/QuickContactBadge;->mPaddingTop:I

    iget v3, p0, Landroid/widget/QuickContactBadge;->mPaddingRight:I

    iget v4, p0, Landroid/widget/QuickContactBadge;->mPaddingBottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/QuickContactBadge;->setPadding(IIII)V

    .line 108
    return-void
.end method

.method static synthetic access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Landroid/widget/QuickContactBadge;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;->showStrangeQuickContact(Landroid/net/Uri;)V

    return-void
.end method

.method private getMax(I)I
    .locals 1
    .parameter "v"

    .prologue
    .line 116
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isAssigned()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onContactUriChanged()V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->isAssigned()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/QuickContactBadge;->setEnabled(Z)V

    .line 242
    return-void
.end method

.method private showStrangeQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "target"
    .parameter "createUri"
    .parameter "mode"
    .parameter "excludeMimes"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iget v0, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 385
    .local v0, appScale:F
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 386
    .local v3, pos:[I
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 388
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 389
    .local v4, rect:Landroid/graphics/Rect;
    aget v5, v3, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 390
    aget v5, v3, v8

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 391
    aget v5, v3, v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 392
    aget v5, v3, v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 395
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.baidu.contacts.action.STRANGE_QUICK_CONTACT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1420

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 399
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 400
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 401
    const-string/jumbo v5, "mode"

    invoke-virtual {v2, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    const-string v5, "exclude_mimes"

    invoke-virtual {v2, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, e:Landroid/content/ActivityNotFoundException;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v5, v6, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showStrangeQuickContact(Landroid/net/Uri;)V
    .locals 6
    .parameter "createUri"

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x3

    iget-object v5, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/QuickContactBadge;->showStrangeQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 354
    return-void
.end method


# virtual methods
.method public assignContactFromEmail(Ljava/lang/String;Z)V
    .locals 8
    .parameter "emailAddress"
    .parameter "lazyLookup"

    .prologue
    const/4 v2, 0x0

    .line 208
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    .line 209
    if-nez p2, :cond_0

    .line 210
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    iput-object v2, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 215
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactFromPhone(Ljava/lang/String;Z)V
    .locals 8
    .parameter "phoneNumber"
    .parameter "lazyLookup"

    .prologue
    const/4 v2, 0x0

    .line 229
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 230
    if-nez p2, :cond_0

    .line 231
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x1

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    iput-object v2, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 236
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    const/4 v0, 0x0

    .line 192
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 193
    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    .line 194
    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 195
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    .line 196
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 122
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 124
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->invalidate()V

    .line 126
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x0

    .line 246
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    iget-object v3, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v0, p0, v2, v1, v3}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 138
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :cond_0
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-nez v0, :cond_2

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 266
    const-class v0, Landroid/widget/QuickContactBadge;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 267
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 272
    const-class v0, Landroid/widget/QuickContactBadge;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 0
    .parameter "excludeMimes"

    .prologue
    .line 281
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setImageToDefault()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #drawable@ic_contact_picture#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    .line 179
    :cond_0
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    return-void
.end method

.method public setImageToDefault(J)V
    .locals 3
    .parameter "cid"

    .prologue
    .line 422
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->setImageToDefault()V

    .line 427
    :goto_0
    return-void

    .line 424
    :cond_0
    sget-object v1, Landroid/widget/QuickContactBadge;->res_id:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p1, v1

    long-to-int v0, v1

    .line 425
    .local v0, index:I
    sget-object v1, Landroid/widget/QuickContactBadge;->res_id:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 131
    return-void
.end method

.method public setPadding(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;->getMax(I)I

    move-result v0

    invoke-direct {p0, p2}, Landroid/widget/QuickContactBadge;->getMax(I)I

    move-result v1

    invoke-direct {p0, p3}, Landroid/widget/QuickContactBadge;->getMax(I)I

    move-result v2

    invoke-direct {p0, p4}, Landroid/widget/QuickContactBadge;->getMax(I)I

    move-result v3

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 113
    return-void
.end method
