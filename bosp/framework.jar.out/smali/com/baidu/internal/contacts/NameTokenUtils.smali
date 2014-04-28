.class public Lcom/baidu/internal/contacts/NameTokenUtils;
.super Ljava/lang/Object;
.source "NameTokenUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final PINYIN_SEPARATOR:C = '|'

.field private static final TAG:Ljava/lang/String; = "NameTokenUtils"

.field private static keyMap:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/internal/contacts/NameTokenUtils;->keyMap:[C

    return-void

    :array_0
    .array-data 0x2
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    return-void
.end method

.method private static appendPinyin(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 4
    .parameter "sb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/internal/contacts/HanziToPinyin$Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/internal/contacts/HanziToPinyin$Token;>;"
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 121
    const/16 v3, 0x7c

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 124
    .local v2, tokenSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 125
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/internal/contacts/HanziToPinyin$Token;

    .line 126
    .local v1, token:Lcom/baidu/internal/contacts/HanziToPinyin$Token;
    invoke-virtual {v1}, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->isSearchable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    iget-object v3, v1, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/internal/contacts/NameTokenUtils;->upperStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v1           #token:Lcom/baidu/internal/contacts/HanziToPinyin$Token;
    :cond_2
    return-void
.end method

.method private static buildNameTokens(Ljava/util/List;Ljava/util/List;)V
    .locals 20
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/internal/contacts/HanziToPinyin$Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, nameTokens:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;>;"
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/internal/contacts/HanziToPinyin$Token;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v17, sbSource:Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v15, sbInitial:Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v16, sbLast:Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v14, sbFull:Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v19

    .line 196
    .local v19, tokenSize:I
    move/from16 v0, v19

    new-array v6, v0, [I

    .line 197
    .local v6, indexs:[I
    add-int/lit8 v5, v19, -0x1

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_0

    .line 198
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/internal/contacts/HanziToPinyin$Token;

    iget v1, v1, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->index:I

    aput v1, v6, v5

    .line 197
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 200
    :cond_0
    const/4 v11, -0x1

    .line 201
    .local v11, firstValid:I
    const/4 v13, 0x0

    .line 202
    .local v13, pos:I
    add-int/lit8 v5, v19, -0x1

    :goto_1
    if-ltz v5, :cond_3

    .line 203
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/baidu/internal/contacts/HanziToPinyin$Token;

    .line 204
    .local v18, token:Lcom/baidu/internal/contacts/HanziToPinyin$Token;
    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->isSearchable(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    const/4 v1, 0x0

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const/4 v1, 0x0

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const/4 v1, 0x0

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 209
    const/4 v1, 0x0

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :goto_2
    new-instance v1, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;-><init>(Ljava/lang/String;Ljava/lang/String;II[I)V

    move-object/from16 v0, p0

    invoke-interface {v0, v13, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 215
    mul-int/lit8 v1, v13, 0x2

    add-int/lit8 v7, v1, 0x1

    new-instance v1, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;-><init>(Ljava/lang/String;Ljava/lang/String;II[I)V

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 217
    move v11, v5

    .line 218
    add-int/lit8 v13, v13, 0x1

    .line 202
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 211
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 221
    .end local v18           #token:Lcom/baidu/internal/contacts/HanziToPinyin$Token;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 222
    new-instance v7, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;-><init>(Ljava/lang/String;Ljava/lang/String;II[I)V

    move-object/from16 v0, p0

    invoke-interface {v0, v13, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 225
    :cond_4
    return-void
.end method

.method private static displayListStatus(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/internal/contacts/HanziToPinyin$Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, tokens:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/internal/contacts/HanziToPinyin$Token;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v1, indexs:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v2, pinyins:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/internal/contacts/HanziToPinyin$Token;

    .line 232
    .local v3, token:Lcom/baidu/internal/contacts/HanziToPinyin$Token;
    iget v4, v3, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->index:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 235
    .end local v3           #token:Lcom/baidu/internal/contacts/HanziToPinyin$Token;
    :cond_0
    const-string v4, "NameTokenUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "indexs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pinyins: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public static getNameTokens(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Lcom/baidu/internal/contacts/HanziToPinyin;->getInstance()Lcom/baidu/internal/contacts/HanziToPinyin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/internal/contacts/HanziToPinyin;->getTokens(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/internal/contacts/NameTokenUtils;->getNameTokens(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getNameTokens(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/internal/contacts/HanziToPinyin$Token;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, tokens:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/internal/contacts/HanziToPinyin$Token;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v1, nameTokens:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/internal/contacts/NameTokenUtils$NameToken;>;"
    if-eqz p0, :cond_3

    .line 160
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 161
    .local v4, tokenSize:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/internal/contacts/HanziToPinyin$Token;

    .line 162
    .local v3, token:Lcom/baidu/internal/contacts/HanziToPinyin$Token;
    invoke-virtual {v3}, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->reset()V

    goto :goto_0

    .line 164
    .end local v3           #token:Lcom/baidu/internal/contacts/HanziToPinyin$Token;
    :cond_0
    add-int/lit8 v2, v4, -0x1

    .line 169
    .local v2, pos:I
    :cond_1
    :goto_1
    if-ltz v2, :cond_3

    .line 177
    invoke-static {v1, p0}, Lcom/baidu/internal/contacts/NameTokenUtils;->buildNameTokens(Ljava/util/List;Ljava/util/List;)V

    .line 178
    :goto_2
    if-ltz v2, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/internal/contacts/HanziToPinyin$Token;

    invoke-virtual {v5}, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->nextPinyin()Z

    move-result v5

    if-nez v5, :cond_2

    .line 179
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 181
    :cond_2
    if-ltz v2, :cond_1

    .line 182
    add-int/lit8 v2, v4, -0x1

    goto :goto_1

    .line 186
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #pos:I
    .end local v4           #tokenSize:I
    :cond_3
    return-object v1
.end method

.method public static getPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 89
    invoke-static {}, Lcom/baidu/internal/contacts/HanziToPinyin;->getInstance()Lcom/baidu/internal/contacts/HanziToPinyin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/internal/contacts/HanziToPinyin;->getTokens(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/internal/contacts/NameTokenUtils;->getPinyin(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPinyin(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/internal/contacts/HanziToPinyin$Token;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, tokens:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/internal/contacts/HanziToPinyin$Token;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v2, sb:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_3

    .line 101
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 102
    .local v4, tokenSize:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/internal/contacts/HanziToPinyin$Token;

    .line 103
    .local v3, token:Lcom/baidu/internal/contacts/HanziToPinyin$Token;
    invoke-virtual {v3}, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->reset()V

    goto :goto_0

    .line 105
    .end local v3           #token:Lcom/baidu/internal/contacts/HanziToPinyin$Token;
    :cond_0
    add-int/lit8 v1, v4, -0x1

    .line 106
    .local v1, pos:I
    :cond_1
    :goto_1
    if-ltz v1, :cond_3

    .line 107
    invoke-static {v2, p0}, Lcom/baidu/internal/contacts/NameTokenUtils;->appendPinyin(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 108
    :goto_2
    if-ltz v1, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/internal/contacts/HanziToPinyin$Token;

    invoke-virtual {v5}, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->nextPinyin()Z

    move-result v5

    if-nez v5, :cond_2

    .line 109
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 111
    :cond_2
    if-ltz v1, :cond_1

    .line 112
    add-int/lit8 v1, v4, -0x1

    goto :goto_1

    .line 116
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pos:I
    .end local v4           #tokenSize:I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getStarts(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "pinyin"

    .prologue
    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    const-string v3, ""

    .line 78
    :goto_0
    return-object v3

    .line 71
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 74
    .local v0, c:C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-le v0, v3, :cond_2

    .line 75
    :cond_1
    int-to-char v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static mapChar(C)C
    .locals 2
    .parameter "ch"

    .prologue
    .line 35
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 36
    sget-object v0, Lcom/baidu/internal/contacts/NameTokenUtils;->keyMap:[C

    add-int/lit8 v1, p0, -0x61

    aget-char p0, v0, v1

    .line 41
    .end local p0
    :cond_0
    :goto_0
    return p0

    .line 38
    .restart local p0
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 39
    sget-object v0, Lcom/baidu/internal/contacts/NameTokenUtils;->keyMap:[C

    add-int/lit8 v1, p0, -0x41

    aget-char p0, v0, v1

    goto :goto_0
.end method

.method public static mapString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "from"

    .prologue
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/baidu/internal/contacts/NameTokenUtils;->mapChar(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v0           #i:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static upperStart(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "pinyin"

    .prologue
    const/4 v2, 0x1

    .line 133
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, ""

    .line 139
    :goto_0
    return-object v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
