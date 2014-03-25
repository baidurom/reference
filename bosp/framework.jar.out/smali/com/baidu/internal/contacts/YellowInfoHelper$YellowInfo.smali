.class public Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
.super Ljava/lang/Object;
.source "YellowInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/contacts/YellowInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "YellowInfo"
.end annotation


# static fields
.field public static final IS_YELLOW:I = 0x1

.field public static final NOT_YELLOW:I = 0x2

.field public static final UNKNOWN:I


# instance fields
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

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public photo:[B

.field final synthetic this$0:Lcom/baidu/internal/contacts/YellowInfoHelper;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/baidu/internal/contacts/YellowInfoHelper;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6
    .parameter
    .parameter "number"
    .parameter "name"
    .parameter "photo"

    .prologue
    .line 323
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;-><init>(Lcom/baidu/internal/contacts/YellowInfoHelper;Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 324
    return-void
.end method

.method public constructor <init>(Lcom/baidu/internal/contacts/YellowInfoHelper;Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 0
    .parameter
    .parameter "number"
    .parameter "name"
    .parameter "photo"
    .parameter "type"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->this$0:Lcom/baidu/internal/contacts/YellowInfoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p2, p0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->number:Ljava/lang/String;

    .line 317
    iput-object p3, p0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->name:Ljava/lang/String;

    .line 318
    iput-object p4, p0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->photo:[B

    .line 319
    iput p5, p0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->type:I

    .line 320
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v1, p0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->photo:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->photo:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    .line 334
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public hasPhoto()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->photo:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
