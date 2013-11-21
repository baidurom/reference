.class public final enum Lcom/yi/internal/widget/GifImageView$GifImageType;
.super Ljava/lang/Enum;
.source "GifImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yi/internal/widget/GifImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GifImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yi/internal/widget/GifImageView$GifImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yi/internal/widget/GifImageView$GifImageType;

.field public static final enum COVER:Lcom/yi/internal/widget/GifImageView$GifImageType;

.field public static final enum SYNC_DECODER:Lcom/yi/internal/widget/GifImageView$GifImageType;

.field public static final enum WAIT_FINISH:Lcom/yi/internal/widget/GifImageView$GifImageType;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/yi/internal/widget/GifImageView$GifImageType;

    const-string v1, "WAIT_FINISH"

    invoke-direct {v0, v1, v2, v2}, Lcom/yi/internal/widget/GifImageView$GifImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yi/internal/widget/GifImageView$GifImageType;->WAIT_FINISH:Lcom/yi/internal/widget/GifImageView$GifImageType;

    .line 75
    new-instance v0, Lcom/yi/internal/widget/GifImageView$GifImageType;

    const-string v1, "SYNC_DECODER"

    invoke-direct {v0, v1, v3, v3}, Lcom/yi/internal/widget/GifImageView$GifImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yi/internal/widget/GifImageView$GifImageType;->SYNC_DECODER:Lcom/yi/internal/widget/GifImageView$GifImageType;

    .line 76
    new-instance v0, Lcom/yi/internal/widget/GifImageView$GifImageType;

    const-string v1, "COVER"

    invoke-direct {v0, v1, v4, v4}, Lcom/yi/internal/widget/GifImageView$GifImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yi/internal/widget/GifImageView$GifImageType;->COVER:Lcom/yi/internal/widget/GifImageView$GifImageType;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yi/internal/widget/GifImageView$GifImageType;

    sget-object v1, Lcom/yi/internal/widget/GifImageView$GifImageType;->WAIT_FINISH:Lcom/yi/internal/widget/GifImageView$GifImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yi/internal/widget/GifImageView$GifImageType;->SYNC_DECODER:Lcom/yi/internal/widget/GifImageView$GifImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yi/internal/widget/GifImageView$GifImageType;->COVER:Lcom/yi/internal/widget/GifImageView$GifImageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yi/internal/widget/GifImageView$GifImageType;->$VALUES:[Lcom/yi/internal/widget/GifImageView$GifImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/yi/internal/widget/GifImageView$GifImageType;->nativeInt:I

    .line 80
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yi/internal/widget/GifImageView$GifImageType;
    .locals 1
    .parameter "name"

    .prologue
    .line 72
    const-class v0, Lcom/yi/internal/widget/GifImageView$GifImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yi/internal/widget/GifImageView$GifImageType;

    return-object v0
.end method

.method public static values()[Lcom/yi/internal/widget/GifImageView$GifImageType;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/yi/internal/widget/GifImageView$GifImageType;->$VALUES:[Lcom/yi/internal/widget/GifImageView$GifImageType;

    invoke-virtual {v0}, [Lcom/yi/internal/widget/GifImageView$GifImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yi/internal/widget/GifImageView$GifImageType;

    return-object v0
.end method
