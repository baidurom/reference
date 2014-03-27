.class final Lcom/baidu/internal/contacts/YellowPhotoManager$Request;
.super Ljava/lang/Object;
.source "YellowPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/contacts/YellowPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Request"
.end annotation


# instance fields
.field private mDefaultIcon:I

.field private final mNumber:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 0
    .parameter "number"
    .parameter "uri"
    .parameter "defaultId"

    .prologue
    .line 374
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->mNumber:Ljava/lang/String;

    .line 376
    iput-object p2, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->mUri:Landroid/net/Uri;

    .line 377
    iput p3, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->mDefaultIcon:I

    .line 378
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/contacts/YellowPhotoManager$Request;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/internal/contacts/YellowPhotoManager$Request;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static createFromNumber(Ljava/lang/String;I)Lcom/baidu/internal/contacts/YellowPhotoManager$Request;
    .locals 2
    .parameter "number"
    .parameter "defaultId"

    .prologue
    .line 381
    new-instance v0, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;-><init>(Ljava/lang/String;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public static createFromUri(Landroid/net/Uri;I)Lcom/baidu/internal/contacts/YellowPhotoManager$Request;
    .locals 2
    .parameter "uri"
    .parameter "defaultId"

    .prologue
    .line 385
    new-instance v0, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;-><init>(Ljava/lang/String;Landroid/net/Uri;I)V

    return-object v0
.end method


# virtual methods
.method public applyDefaultIcon(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 401
    iget v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->mDefaultIcon:I

    if-lez v0, :cond_0

    .line 402
    iget v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->mDefaultIcon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 404
    :cond_0
    return-void
.end method

.method public applyYellowIcon(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 397
    const v0, #drawable@yi_ic_yellow_pages_holo_light#t

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->mNumber:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public isUriRequest()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
