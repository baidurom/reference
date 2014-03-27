.class Lcom/baidu/internal/contacts/YellowPhotoManager$1;
.super Landroid/util/LruCache;
.source "YellowPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/contacts/YellowPhotoManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Object;",
        "Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/contacts/YellowPhotoManager;


# direct methods
.method constructor <init>(Lcom/baidu/internal/contacts/YellowPhotoManager;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$1;->this$0:Lcom/baidu/internal/contacts/YellowPhotoManager;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method
