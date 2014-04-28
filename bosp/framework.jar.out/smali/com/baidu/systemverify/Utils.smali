.class public Lcom/baidu/systemverify/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/systemverify/Utils$FileInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/baidu/systemverify/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static WriteChangeHashMapToFile(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter "pathChangeHashfile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, mChangeHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v8, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    const-string v9, "enter WriteChangeHashMapToFile()"

    invoke-static {v8, v9}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, changeHashMapFile:Ljava/io/File;
    const/4 v6, 0x0

    .line 153
    .local v6, writer:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 155
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 156
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    :cond_0
    :goto_0
    :try_start_1
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 165
    .end local v6           #writer:Ljava/io/BufferedWriter;
    .local v7, writer:Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 166
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 167
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 168
    .local v2, entry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 169
    .local v4, key:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 170
    .local v5, val:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 173
    .end local v2           #entry:Ljava/util/Map$Entry;
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #val:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v6, v7

    .line 174
    .end local v7           #writer:Ljava/io/BufferedWriter;
    .local v1, e:Ljava/lang/Exception;
    .restart local v6       #writer:Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    sget-object v8, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    if-eqz v6, :cond_1

    .line 178
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 179
    const/4 v6, 0x0

    .line 184
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-void

    .line 158
    :catch_1
    move-exception v1

    .line 159
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v8, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v7       #writer:Ljava/io/BufferedWriter;
    :cond_2
    :try_start_5
    sget-object v8, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    const-string v9, "  mChangeHashMap success"

    invoke-static {v8, v9}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 176
    if-eqz v7, :cond_4

    .line 178
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 179
    const/4 v6, 0x0

    .end local v7           #writer:Ljava/io/BufferedWriter;
    .restart local v6       #writer:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 180
    .end local v6           #writer:Ljava/io/BufferedWriter;
    .restart local v7       #writer:Ljava/io/BufferedWriter;
    :catch_2
    move-exception v8

    move-object v6, v7

    .line 181
    .end local v7           #writer:Ljava/io/BufferedWriter;
    .restart local v6       #writer:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 176
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v6, :cond_3

    .line 178
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 179
    const/4 v6, 0x0

    .line 181
    :cond_3
    :goto_5
    throw v8

    .line 180
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_3

    .end local v1           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v9

    goto :goto_5

    .line 176
    .end local v6           #writer:Ljava/io/BufferedWriter;
    .restart local v7       #writer:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #writer:Ljava/io/BufferedWriter;
    .restart local v6       #writer:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 173
    :catch_5
    move-exception v1

    goto :goto_2

    .end local v6           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v7       #writer:Ljava/io/BufferedWriter;
    :cond_4
    move-object v6, v7

    .end local v7           #writer:Ljava/io/BufferedWriter;
    .restart local v6       #writer:Ljava/io/BufferedWriter;
    goto :goto_3
.end method

.method public static WriteHashMapToFile(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter "pathLastUploadHashfile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/systemverify/Utils$FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, mLastSourceHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/systemverify/Utils$FileInfo;>;"
    sget-object v8, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    const-string v9, "enter WriteHashMapToFile()"

    invoke-static {v8, v9}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v4, lastHashMapFile:Ljava/io/File;
    const/4 v6, 0x0

    .line 114
    .local v6, writer:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 115
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 116
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 117
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :cond_0
    :goto_0
    :try_start_1
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 125
    .end local v6           #writer:Ljava/io/BufferedWriter;
    .local v7, writer:Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 126
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 128
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 129
    .local v3, key:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/systemverify/Utils$FileInfo;

    .line 130
    .local v5, val:Lcom/baidu/systemverify/Utils$FileInfo;
    sget-object v8, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WriteHashMapToFile key:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v5, Lcom/baidu/systemverify/Utils$FileInfo;->fileSize:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/baidu/systemverify/Utils$FileInfo;->fileHash:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 134
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #val:Lcom/baidu/systemverify/Utils$FileInfo;
    :catch_0
    move-exception v0

    move-object v6, v7

    .line 135
    .end local v7           #writer:Ljava/io/BufferedWriter;
    .local v0, e:Ljava/lang/Exception;
    .restart local v6       #writer:Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    sget-object v8, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    if-eqz v6, :cond_1

    .line 139
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 140
    const/4 v6, 0x0

    .line 145
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-void

    .line 119
    :catch_1
    move-exception v0

    .line 120
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v8, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    .end local v0           #e:Ljava/lang/Exception;
    .end local v6           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v7       #writer:Ljava/io/BufferedWriter;
    :cond_2
    :try_start_5
    sget-object v8, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    const-string v9, "WriteHashMapToFile success"

    invoke-static {v8, v9}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 137
    if-eqz v7, :cond_4

    .line 139
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 140
    const/4 v6, 0x0

    .end local v7           #writer:Ljava/io/BufferedWriter;
    .restart local v6       #writer:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 141
    .end local v6           #writer:Ljava/io/BufferedWriter;
    .restart local v7       #writer:Ljava/io/BufferedWriter;
    :catch_2
    move-exception v8

    move-object v6, v7

    .line 142
    .end local v7           #writer:Ljava/io/BufferedWriter;
    .restart local v6       #writer:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 137
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v6, :cond_3

    .line 139
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 140
    const/4 v6, 0x0

    .line 142
    :cond_3
    :goto_5
    throw v8

    .line 141
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_3

    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v9

    goto :goto_5

    .line 137
    .end local v6           #writer:Ljava/io/BufferedWriter;
    .restart local v7       #writer:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #writer:Ljava/io/BufferedWriter;
    .restart local v6       #writer:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 134
    :catch_5
    move-exception v0

    goto :goto_2

    .end local v6           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v7       #writer:Ljava/io/BufferedWriter;
    :cond_4
    move-object v6, v7

    .end local v7           #writer:Ljava/io/BufferedWriter;
    .restart local v6       #writer:Ljava/io/BufferedWriter;
    goto :goto_3
.end method

.method public static byte2hex([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    .line 96
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    .local v1, retString:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 98
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getHashInfoFromFile(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 9
    .parameter "input"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/systemverify/Utils$FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v7, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    const-string v8, "enter getSha1InfoFromFile()"

    invoke-static {v7, v8}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v5, sha1s:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/systemverify/Utils$FileInfo;>;"
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v1, p0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 49
    .local v1, in:Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 51
    .local v4, reader:Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, line:Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 53
    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, splits:[Ljava/lang/String;
    new-instance v2, Lcom/baidu/systemverify/Utils$FileInfo;

    invoke-direct {v2}, Lcom/baidu/systemverify/Utils$FileInfo;-><init>()V

    .line 55
    .local v2, info:Lcom/baidu/systemverify/Utils$FileInfo;
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/baidu/systemverify/Utils$FileInfo;->fileSize:J

    .line 56
    const/4 v7, 0x2

    aget-object v7, v6, v7

    iput-object v7, v2, Lcom/baidu/systemverify/Utils$FileInfo;->fileHash:Ljava/lang/String;

    .line 57
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v5, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 59
    goto :goto_0

    .line 60
    .end local v2           #info:Lcom/baidu/systemverify/Utils$FileInfo;
    .end local v6           #splits:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 61
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 62
    sget-object v7, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    const-string v8, "getSha1InfoFromFile success"

    invoke-static {v7, v8}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1           #in:Ljava/io/InputStreamReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    :goto_1
    return-object v5

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    sget-object v7, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getSha1sFromFile(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v6, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    const-string v7, "enter getSha1sFromFile()"

    invoke-static {v6, v7}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 26
    .local v4, sha1s:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v1, p0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 27
    .local v1, in:Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 29
    .local v3, reader:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, line:Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 31
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, splits:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 35
    .end local v5           #splits:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 36
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1           #in:Ljava/io/InputStreamReader;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :goto_1
    return-object v4

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static sha1(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .parameter "file"

    .prologue
    .line 71
    const/4 v6, 0x0

    .line 72
    .local v6, rst:Ljava/lang/String;
    const/4 v3, 0x0

    .line 74
    .local v3, in:Ljava/io/FileInputStream;
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 75
    .local v1, digest:Ljava/security/MessageDigest;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 76
    .end local v3           #in:Ljava/io/FileInputStream;
    .local v4, in:Ljava/io/FileInputStream;
    const/high16 v7, 0x8

    :try_start_1
    new-array v0, v7, [B

    .line 78
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, len:I
    if-lez v5, :cond_1

    .line 79
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 82
    .end local v0           #buf:[B
    .end local v5           #len:I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 83
    .end local v1           #digest:Ljava/security/MessageDigest;
    .end local v4           #in:Ljava/io/FileInputStream;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #in:Ljava/io/FileInputStream;
    :goto_1
    sget-object v7, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    if-eqz v3, :cond_0

    .line 87
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 92
    :cond_0
    :goto_3
    return-object v6

    .line 81
    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v0       #buf:[B
    .restart local v1       #digest:Ljava/security/MessageDigest;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v5       #len:I
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/systemverify/Utils;->byte2hex([B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    move-object v3, v4

    .line 84
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_2

    .line 88
    .end local v0           #buf:[B
    .end local v1           #digest:Ljava/security/MessageDigest;
    .end local v5           #len:I
    :catch_1
    move-exception v2

    .line 89
    .local v2, e:Ljava/io/IOException;
    sget-object v7, Lcom/baidu/systemverify/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 82
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_1
.end method
