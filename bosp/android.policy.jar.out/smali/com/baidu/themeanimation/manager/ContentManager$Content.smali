.class public Lcom/baidu/themeanimation/manager/ContentManager$Content;
.super Ljava/lang/Object;
.source "ContentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/manager/ContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Content"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "content"


# instance fields
.field private mCountName:Ljava/lang/String;

.field private mDependency:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mOrder:Ljava/lang/String;

.field private mProjection:[Ljava/lang/String;

.field private mSelection:Ljava/lang/String;

.field private mSelectionParas:[Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mUriFormat:Ljava/lang/String;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;",
            ">;"
        }
    .end annotation
.end field

.field private mWhereFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mVariables:Ljava/util/ArrayList;

    .line 71
    return-void
.end method


# virtual methods
.method public actionUpdate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "useless"

    .prologue
    .line 230
    const-string v0, "content"

    const-string v1, "Trigger Content action update!"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/manager/ContentManager$Content;->update(Landroid/content/Context;)V

    .line 232
    return-void
.end method

.method public addContentVariable(Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;)V
    .locals 1
    .parameter "variable"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionParas()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mSelectionParas:[Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setColumns(Ljava/lang/String;)V
    .locals 3
    .parameter "columns"

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/manager/ContentManager$Content;->setProjection([Ljava/lang/String;)V

    .line 172
    const-string v0, "content"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content.setColumns("

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

    .line 174
    :cond_0
    return-void
.end method

.method public setCountName(Ljava/lang/String;)V
    .locals 0
    .parameter "countName"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mCountName:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .parameter "dependency"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mDependency:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 86
    const-string v0, "content"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content.setName("

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

    .line 87
    iput-object p1, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mOrder:Ljava/lang/String;

    .line 137
    const-string v0, "content"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content.setOrder("

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

    .line 138
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 7
    .parameter "projection"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mProjection:[Ljava/lang/String;

    .line 126
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 127
    .local v1, column:Ljava/lang/String;
    const-string v4, "content"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content.setProjection("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v1           #column:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 3
    .parameter "selection"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mSelection:Ljava/lang/String;

    .line 146
    const-string v0, "content"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content.setSelection("

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

    .line 147
    return-void
.end method

.method public setSelectionParas([Ljava/lang/String;)V
    .locals 0
    .parameter "selectionParas"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mSelectionParas:[Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 95
    const-string v0, "content"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content.setUri("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mUri:Landroid/net/Uri;

    .line 97
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 100
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/manager/ContentManager$Content;->setUri(Landroid/net/Uri;)V

    .line 101
    return-void
.end method

.method public setUriFormat(Ljava/lang/String;)V
    .locals 2
    .parameter "uriFormat"

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    const-string v0, "%d"

    const-string v1, "%s"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mUriFormat:Ljava/lang/String;

    .line 114
    :cond_0
    return-void
.end method

.method public setUriParas(Ljava/lang/String;)V
    .locals 3
    .parameter "paras"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mUriFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/manager/ContentManager$Content;->setUri(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public setWhere(Ljava/lang/String;)V
    .locals 0
    .parameter "where"

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/manager/ContentManager$Content;->setSelection(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public setWhereFormat(Ljava/lang/String;)V
    .locals 2
    .parameter "whereFormat"

    .prologue
    .line 159
    if-eqz p1, :cond_0

    .line 160
    const-string v0, "%d"

    const-string v1, "%s"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mWhereFormat:Ljava/lang/String;

    .line 162
    :cond_0
    return-void
.end method

.method public setWhereParas(Ljava/lang/String;)V
    .locals 3
    .parameter "whereParas"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mWhereFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/manager/ContentManager$Content;->setWhere(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public update(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 197
    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 199
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 200
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 202
    .local v6, count:I
    :try_start_0
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mSelectionParas:[Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 203
    if-eqz v7, :cond_2

    .line 204
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 205
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;

    .line 206
    .local v10, variable:Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;
    invoke-virtual {v10, v7}, Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;->update(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #variable:Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;
    :catch_0
    move-exception v8

    .line 214
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "content"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    if-eqz v7, :cond_1

    .line 217
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mCountName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 218
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mCountName:Ljava/lang/String;

    int-to-long v3, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 220
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 224
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #count:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 216
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #count:I
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_2
    if-eqz v7, :cond_1

    .line 217
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mCountName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 218
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mCountName:Ljava/lang/String;

    int-to-long v3, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 220
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 216
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 217
    iget-object v2, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mCountName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 218
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/themeanimation/manager/ContentManager$Content;->mCountName:Ljava/lang/String;

    int-to-long v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 220
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method
