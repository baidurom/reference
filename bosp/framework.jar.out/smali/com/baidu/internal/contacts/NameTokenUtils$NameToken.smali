.class public Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;
.super Ljava/lang/Object;
.source "NameTokenUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/contacts/NameTokenUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameToken"
.end annotation


# static fields
.field public static final TYPE_FULL:I = 0x2

.field public static final TYPE_INITIAL:I = 0x0

.field public static final TYPE_INITIAL_LAST:I = 0x1


# instance fields
.field public digits:Ljava/lang/String;

.field public indexs:[I

.field public source:Ljava/lang/String;

.field public start:I

.field public target:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II[I)V
    .locals 7
    .parameter "source"
    .parameter "target"
    .parameter "type"
    .parameter "start"
    .parameter "indexs"

    .prologue
    .line 263
    invoke-static {p2}, Lcom/baidu/internal/contacts/NameTokenUtils;->mapString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[I)V

    .line 264
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[I)V
    .locals 0
    .parameter "source"
    .parameter "target"
    .parameter "digits"
    .parameter "type"
    .parameter "start"
    .parameter "indexs"

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;->source:Ljava/lang/String;

    .line 269
    iput-object p2, p0, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;->target:Ljava/lang/String;

    .line 270
    iput-object p3, p0, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;->digits:Ljava/lang/String;

    .line 271
    iput p4, p0, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;->type:I

    .line 272
    iput p5, p0, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;->start:I

    .line 273
    iput-object p6, p0, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;->indexs:[I

    .line 277
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 281
    const-string v0, "NameToken(type: %d, start: %d, digit: %s, target: %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;->start:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;->digits:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;->target:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
