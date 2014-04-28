.class Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;
.super Ljava/lang/Object;
.source "YellowPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/contacts/YellowPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapHolder"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field bitmapRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final bytes:[B

.field isYellow:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "isYellow"

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;->bytes:[B

    .line 365
    iput-boolean p1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;->isYellow:Z

    .line 366
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;->bytes:[B

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;->isYellow:Z

    .line 361
    return-void
.end method
