.class public Lyi/support/v1/utils/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p0, :cond_1

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, field:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    :goto_0
    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 158
    const-class v1, Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    .line 159
    invoke-static {p0, p1}, Lyi/support/v1/utils/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 164
    .end local v0           #field:Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 154
    .restart local v0       #field:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "object"
    .parameter "name"

    .prologue
    .line 20
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Lyi/support/v1/utils/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 21
    .local v1, field:Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 22
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 28
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Reflection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFieldValue "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyi/support/v1/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "object"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lyi/support/v1/utils/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    .local v1, value:Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    move-object v0, v1

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Character;

    if-ne v0, p0, :cond_1

    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 143
    .end local p0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object p0

    .line 136
    .restart local p0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    const-class v0, Ljava/lang/Byte;

    if-ne v0, p0, :cond_2

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 137
    :cond_2
    const-class v0, Ljava/lang/Short;

    if-ne v0, p0, :cond_3

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 138
    :cond_3
    const-class v0, Ljava/lang/Integer;

    if-ne v0, p0, :cond_4

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 139
    :cond_4
    const-class v0, Ljava/lang/Long;

    if-ne v0, p0, :cond_5

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 140
    :cond_5
    const-class v0, Ljava/lang/Float;

    if-ne v0, p0, :cond_6

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 141
    :cond_6
    const-class v0, Ljava/lang/Double;

    if-ne v0, p0, :cond_7

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 142
    :cond_7
    const-class v0, Ljava/lang/Boolean;

    if-ne v0, p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter "receiver"
    .parameter "name"
    .parameter "args"

    .prologue
    .line 89
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 95
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 96
    .local v7, methods:[Ljava/lang/reflect/Method;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 97
    .local v6, method:Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 98
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 99
    .local v8, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v9, v8

    array-length v10, p2

    if-ne v9, v10, :cond_2

    .line 100
    const/4 v5, 0x0

    .line 101
    .local v5, matched:I
    :goto_1
    array-length v9, v8

    if-ge v5, v9, :cond_0

    .line 102
    aget-object v9, v8, v5

    aget-object v10, p2, v5

    invoke-static {v9, v10}, Lyi/support/v1/utils/Reflection;->isAcceptableParameter(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 106
    :cond_0
    array-length v9, v8

    if-ne v5, v9, :cond_2

    .line 107
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 108
    invoke-virtual {v6, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 122
    .end local v0           #arr$:[Ljava/lang/reflect/Method;
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #matched:I
    .end local v6           #method:Ljava/lang/reflect/Method;
    .end local v7           #methods:[Ljava/lang/reflect/Method;
    .end local v8           #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :goto_2
    return-object v9

    .line 101
    .restart local v0       #arr$:[Ljava/lang/reflect/Method;
    .restart local v1       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #matched:I
    .restart local v6       #method:Ljava/lang/reflect/Method;
    .restart local v7       #methods:[Ljava/lang/reflect/Method;
    .restart local v8       #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 96
    .end local v5           #matched:I
    .end local v8           #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v0           #arr$:[Ljava/lang/reflect/Method;
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #method:Ljava/lang/reflect/Method;
    .end local v7           #methods:[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 120
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "Reflection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invokeMethod "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lyi/support/v1/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private static isAcceptableParameter(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lyi/support/v1/utils/Reflection;->getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 128
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    if-ne p0, v0, :cond_0

    .line 130
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return v1

    .restart local v0       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    move v1, v2

    .line 128
    goto :goto_0

    .line 130
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static varargs newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter "className"
    .parameter "args"

    .prologue
    .line 61
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 62
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 63
    .local v3, constructors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/reflect/Constructor;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v2, v0, v5

    .line 64
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 65
    .local v8, types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v9, v8

    array-length v10, p1

    if-ne v9, v10, :cond_2

    .line 66
    const/4 v7, 0x0

    .line 67
    .local v7, matched:I
    :goto_1
    array-length v9, v8

    if-ge v7, v9, :cond_0

    .line 68
    aget-object v9, v8, v7

    aget-object v10, p1, v7

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 72
    :cond_0
    array-length v9, p1

    if-ne v7, v9, :cond_2

    .line 73
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 81
    .end local v0           #arr$:[Ljava/lang/reflect/Constructor;
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #constructors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #matched:I
    .end local v8           #types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :goto_2
    return-object v9

    .line 67
    .restart local v0       #arr$:[Ljava/lang/reflect/Constructor;
    .restart local v1       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local v3       #constructors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #matched:I
    .restart local v8       #types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 63
    .end local v7           #matched:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    .end local v0           #arr$:[Ljava/lang/reflect/Constructor;
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #constructors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 79
    .local v4, e:Ljava/lang/Exception;
    const-string v9, "Reflection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newInstance "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lyi/support/v1/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .end local v4           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public static setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 44
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Lyi/support/v1/utils/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 45
    .local v1, field:Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 46
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 47
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Reflection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFieldValue "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyi/support/v1/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
