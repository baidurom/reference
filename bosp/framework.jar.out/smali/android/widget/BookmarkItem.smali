.class public Landroid/widget/BookmarkItem;
.super Ljava/lang/Object;
.source "BookmarkItem.java"


# instance fields
.field content:Landroid/graphics/Bitmap;

.field info:Ljava/lang/String;

.field resId:I

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "resId"
    .parameter "content"
    .parameter "title"
    .parameter "info"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/BookmarkItem;->resId:I

    .line 67
    iput p1, p0, Landroid/widget/BookmarkItem;->resId:I

    .line 68
    iput-object p2, p0, Landroid/widget/BookmarkItem;->content:Landroid/graphics/Bitmap;

    .line 69
    iput-object p3, p0, Landroid/widget/BookmarkItem;->title:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Landroid/widget/BookmarkItem;->info:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "resId"
    .parameter "title"
    .parameter "info"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/BookmarkItem;->resId:I

    .line 53
    iput p1, p0, Landroid/widget/BookmarkItem;->resId:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/BookmarkItem;->content:Landroid/graphics/Bitmap;

    .line 55
    iput-object p2, p0, Landroid/widget/BookmarkItem;->title:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Landroid/widget/BookmarkItem;->info:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "content"
    .parameter "title"
    .parameter "info"

    .prologue
    const/4 v0, -0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, Landroid/widget/BookmarkItem;->resId:I

    .line 60
    iput v0, p0, Landroid/widget/BookmarkItem;->resId:I

    .line 61
    iput-object p1, p0, Landroid/widget/BookmarkItem;->content:Landroid/graphics/Bitmap;

    .line 62
    iput-object p2, p0, Landroid/widget/BookmarkItem;->title:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Landroid/widget/BookmarkItem;->info:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/widget/BookmarkItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/BookmarkItem;->resId:I

    .line 74
    iget v0, p1, Landroid/widget/BookmarkItem;->resId:I

    iput v0, p0, Landroid/widget/BookmarkItem;->resId:I

    .line 75
    iget-object v0, p1, Landroid/widget/BookmarkItem;->content:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/widget/BookmarkItem;->content:Landroid/graphics/Bitmap;

    .line 76
    iget-object v0, p1, Landroid/widget/BookmarkItem;->title:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/BookmarkItem;->title:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Landroid/widget/BookmarkItem;->info:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/BookmarkItem;->info:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public getContentBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/widget/BookmarkItem;->content:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getInfoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/widget/BookmarkItem;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/widget/BookmarkItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setBitmapResource(I)V
    .locals 0
    .parameter "resourceId"

    .prologue
    .line 95
    iput p1, p0, Landroid/widget/BookmarkItem;->resId:I

    .line 96
    return-void
.end method

.method public setContentBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 86
    iput-object p1, p0, Landroid/widget/BookmarkItem;->content:Landroid/graphics/Bitmap;

    .line 87
    return-void
.end method

.method public setInfoString(Ljava/lang/String;)V
    .locals 0
    .parameter "infoString"

    .prologue
    .line 113
    iput-object p1, p0, Landroid/widget/BookmarkItem;->info:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setTitleString(Ljava/lang/String;)V
    .locals 0
    .parameter "titleString"

    .prologue
    .line 104
    iput-object p1, p0, Landroid/widget/BookmarkItem;->title:Ljava/lang/String;

    .line 105
    return-void
.end method
