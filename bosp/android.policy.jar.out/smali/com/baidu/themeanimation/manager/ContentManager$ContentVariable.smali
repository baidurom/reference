.class public Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;
.super Ljava/lang/Object;
.source "ContentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/manager/ContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentVariable"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "content"

.field private static final TYPE_INT:I = 0x0

.field private static final TYPE_LONG:I = 0x1

.field private static final TYPE_STRING:I = 0x2


# instance fields
.field private mColumn:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mRow:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;->mRow:I

    .line 249
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;->mType:I

    .line 250
    return-void
.end method


# virtual methods
.method public setColumn(Ljava/lang/String;)V
    .locals 3
    .parameter "column"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;->mColumn:Ljava/lang/String;

    .line 259
    const-string v0, "content"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentVariable.setColumn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;->mName:Ljava/lang/String;

    .line 254
    const-string v0, "content"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentVariable.setName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public setRow(I)V
    .locals 3
    .parameter "row"

    .prologue
    .line 278
    iput p1, p0, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;->mRow:I

    .line 279
    const-string v0, "content"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentVariable.setRow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public setRow(Ljava/lang/String;)V
    .locals 1
    .parameter "row"

    .prologue
    .line 283
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;->setRow(I)V

    .line 284
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 263
    iput p1, p0, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;->mType:I

    .line 264
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 4
    .parameter "type"

    .prologue
    .line 267
    const/4 v0, 0x2

    .line 268
    .local v0, iType:I
    const-string v1, "int"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const/4 v0, 0x0

    .line 273
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;->setType(I)V

    .line 274
    const-string v1, "content"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentVariable.setType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void

    .line 270
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public update(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 287
    const/4 v1, 0x0

    .line 288
    .local v1, result:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 289
    iget-object v2, p0, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;->mColumn:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 290
    .local v0, columnIndex:I
    const-string v2, "content"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;->mColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    iget v2, p0, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;->mRow:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    iget v2, p0, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 303
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 310
    .end local v0           #columnIndex:I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-object v1

    .line 294
    .restart local v0       #columnIndex:I
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    goto :goto_0

    .line 298
    :pswitch_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 299
    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
