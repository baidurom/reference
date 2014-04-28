.class public Lyi/support/v1/utils/ResHelper;
.super Ljava/lang/Object;
.source "ResHelper.java"


# static fields
.field private static final ATTR:Ljava/lang/String; = "attr"

.field private static final BOOL:Ljava/lang/String; = "bool"

.field private static final DIMEN:Ljava/lang/String; = "dimen"

.field private static final DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final INTERNALR:Ljava/lang/String; = "com.android.internal.R"

.field private static final LAYOUT:Ljava/lang/String; = "layout"

.field private static final STYLEABLE:Ljava/lang/String; = "styleable"

.field private static final TAG:Ljava/lang/String; = "ResHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttrByName(Ljava/lang/String;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 104
    const-string v0, "com.android.internal.R"

    const-string v1, "attr"

    invoke-static {v0, v1, p0}, Lyi/support/v1/utils/ResHelper;->getResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getBoolByName(Ljava/lang/String;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 96
    const-string v0, "com.android.internal.R"

    const-string v1, "bool"

    invoke-static {v0, v1, p0}, Lyi/support/v1/utils/ResHelper;->getResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDimenByName(Ljava/lang/String;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 100
    const-string v0, "com.android.internal.R"

    const-string v1, "dimen"

    invoke-static {v0, v1, p0}, Lyi/support/v1/utils/ResHelper;->getResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDrawableByName(Ljava/lang/String;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 108
    const-string v0, "com.android.internal.R"

    const-string v1, "drawable"

    invoke-static {v0, v1, p0}, Lyi/support/v1/utils/ResHelper;->getResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIdByName(Ljava/lang/String;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 88
    const-string v0, "com.android.internal.R"

    const-string v1, "id"

    invoke-static {v0, v1, p0}, Lyi/support/v1/utils/ResHelper;->getResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayoutByName(Ljava/lang/String;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 92
    const-string v0, "com.android.internal.R"

    const-string v1, "layout"

    invoke-static {v0, v1, p0}, Lyi/support/v1/utils/ResHelper;->getResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResArrayId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 12
    .parameter "cls"
    .parameter "subcls"
    .parameter "field"

    .prologue
    const/4 v6, 0x0

    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 55
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v8

    .line 56
    .local v8, subClsList:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-eqz v8, :cond_0

    array-length v9, v8

    if-lez v9, :cond_0

    .line 57
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v9, v8

    if-ge v5, v9, :cond_0

    .line 58
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "$"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, clsName:Ljava/lang/String;
    const-string v9, "ResHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "clsName is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lyi/support/v1/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    aget-object v9, v8, v5

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 61
    aget-object v9, v8, v5

    invoke-virtual {v9, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 62
    .local v4, f:Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 63
    .local v7, obj:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/Integer;

    if-eqz v9, :cond_1

    .line 65
    check-cast v7, [I

    .end local v7           #obj:Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, [I

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4

    .line 84
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #clsName:Ljava/lang/String;
    .end local v4           #f:Ljava/lang/reflect/Field;
    .end local v5           #i:I
    .end local v8           #subClsList:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    return-object v6

    .line 57
    .restart local v1       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #clsName:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v8       #subClsList:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 72
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #clsName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v8           #subClsList:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 73
    .local v3, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 74
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 75
    .local v3, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 76
    .end local v3           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v3

    .line 77
    .local v3, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 78
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 79
    .local v3, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 80
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v3

    .line 82
    .local v3, e:Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "cls"
    .parameter "subcls"
    .parameter "field"

    .prologue
    .line 21
    const/4 v5, -0x1

    .line 23
    .local v5, id:I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v7

    .line 25
    .local v7, subClsList:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-eqz v7, :cond_0

    array-length v8, v7

    if-lez v8, :cond_0

    .line 26
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_0

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, clsName:Ljava/lang/String;
    const-string v8, "ResHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clsName is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lyi/support/v1/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 30
    aget-object v8, v7, v4

    invoke-virtual {v8, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 31
    .local v3, f:Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 32
    .local v6, obj:Ljava/lang/Object;
    if-eqz v6, :cond_0

    instance-of v8, v6, Ljava/lang/Integer;

    if-eqz v8, :cond_0

    .line 33
    check-cast v6, Ljava/lang/Integer;

    .end local v6           #obj:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v5

    .line 49
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #clsName:Ljava/lang/String;
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v4           #i:I
    .end local v7           #subClsList:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    return v5

    .line 26
    .restart local v0       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v1       #clsName:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v7       #subClsList:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 40
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #clsName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v7           #subClsList:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 41
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 42
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 43
    .local v2, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 44
    .end local v2           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 45
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 46
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 47
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getStyleableArrayByName(Ljava/lang/String;)[I
    .locals 2
    .parameter "field"

    .prologue
    .line 116
    const-string v0, "com.android.internal.R"

    const-string v1, "styleable"

    invoke-static {v0, v1, p0}, Lyi/support/v1/utils/ResHelper;->getResArrayId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getStyleableByName(Ljava/lang/String;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 112
    const-string v0, "com.android.internal.R"

    const-string v1, "styleable"

    invoke-static {v0, v1, p0}, Lyi/support/v1/utils/ResHelper;->getResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
