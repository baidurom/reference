.class public Lcom/mediatek/epo/MtkEpoXmlLoader;
.super Ljava/lang/Object;
.source "MtkEpoXmlLoader.java"


# instance fields
.field private mAutoEnable:Z

.field private mEpoEnable:Z

.field private mUpdatePeriod:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/mediatek/epo/MtkEpoXmlLoader;->mEpoEnable:Z

    .line 55
    iput-boolean v0, p0, Lcom/mediatek/epo/MtkEpoXmlLoader;->mAutoEnable:Z

    .line 56
    const/16 v0, 0x10e0

    iput v0, p0, Lcom/mediatek/epo/MtkEpoXmlLoader;->mUpdatePeriod:I

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 163
    const-string v0, "[MtkEpoClientManagerService]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method


# virtual methods
.method public dumpFile(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    .line 71
    const/4 v2, 0x0

    .line 73
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 74
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==== dumpFile path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/epo/MtkEpoXmlLoader;->log(Ljava/lang/String;)V

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/epo/MtkEpoXmlLoader;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 79
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 80
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    if-eqz v2, :cond_0

    .line 86
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 91
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-void

    .line 85
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_1
    if-eqz v3, :cond_2

    .line 86
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v2, v3

    .line 89
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 87
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 88
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 90
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 87
    .end local v1           #line:Ljava/lang/String;
    .local v0, e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 88
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 81
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 82
    .restart local v0       #e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 85
    if-eqz v2, :cond_0

    .line 86
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 87
    :catch_4
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 84
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 85
    :goto_4
    if-eqz v2, :cond_3

    .line 86
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 89
    :cond_3
    :goto_5
    throw v4

    .line 87
    :catch_5
    move-exception v0

    .line 88
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 84
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 81
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 79
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method public getAutoEnable()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoXmlLoader;->mAutoEnable:Z

    return v0
.end method

.method public getEpoEnable()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoXmlLoader;->mEpoEnable:Z

    return v0
.end method

.method public getUpdatePeriod()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/mediatek/epo/MtkEpoXmlLoader;->mUpdatePeriod:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 158
    .local v0, tmp:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EpoXmlLoader epoEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/epo/MtkEpoXmlLoader;->mEpoEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " autoEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/epo/MtkEpoXmlLoader;->mAutoEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updatePeriod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/epo/MtkEpoXmlLoader;->mUpdatePeriod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    return-object v0
.end method

.method public updateEpoProfile(Ljava/lang/String;)V
    .locals 14
    .parameter "path"

    .prologue
    const/16 v13, 0x5a0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 95
    const/4 v9, 0x0

    .line 96
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    .line 103
    .local v6, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 104
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 106
    .end local v6           #is:Ljava/io/InputStream;
    .local v7, is:Ljava/io/InputStream;
    :try_start_1
    const-string/jumbo v10, "utf-8"

    invoke-interface {v9, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 109
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 110
    .local v4, eventType:I
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, name:Ljava/lang/String;
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    move-result v2

    .line 113
    .local v2, count:I
    const/4 v10, 0x2

    if-eq v4, v10, :cond_4

    .line 132
    :cond_1
    if-ne v4, v11, :cond_0

    .line 148
    if-eqz v7, :cond_2

    .line 149
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_2
    move-object v6, v7

    .line 154
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #name:Ljava/lang/String;
    .restart local v6       #is:Ljava/io/InputStream;
    :cond_3
    :goto_0
    return-void

    .line 115
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v2       #count:I
    .restart local v4       #eventType:I
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #name:Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v10, "epo_conf_para"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 116
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 117
    invoke-interface {v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, attrValue:Ljava/lang/String;
    const-string v10, "epo_enable"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 121
    const-string/jumbo v10, "yes"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v10, v11

    :goto_2
    iput-boolean v10, p0, Lcom/mediatek/epo/MtkEpoXmlLoader;->mEpoEnable:Z

    .line 116
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    move v10, v12

    .line 121
    goto :goto_2

    .line 122
    :cond_7
    const-string v10, "auto_enable"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 123
    const-string/jumbo v10, "yes"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v10, v11

    :goto_4
    iput-boolean v10, p0, Lcom/mediatek/epo/MtkEpoXmlLoader;->mAutoEnable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    goto :goto_3

    .line 134
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v5           #i:I
    .end local v8           #name:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 135
    .end local v7           #is:Ljava/io/InputStream;
    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v6       #is:Ljava/io/InputStream;
    :goto_5
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 136
    invoke-virtual {p0, p1}, Lcom/mediatek/epo/MtkEpoXmlLoader;->dumpFile(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    if-eqz v6, :cond_3

    .line 149
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 150
    :catch_1
    move-exception v3

    .line 151
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v0       #attrName:Ljava/lang/String;
    .restart local v1       #attrValue:Ljava/lang/String;
    .restart local v2       #count:I
    .restart local v4       #eventType:I
    .restart local v5       #i:I
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #name:Ljava/lang/String;
    :cond_8
    move v10, v12

    .line 123
    goto :goto_4

    .line 124
    :cond_9
    :try_start_6
    const-string/jumbo v10, "update_period"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/mediatek/epo/MtkEpoXmlLoader;->mUpdatePeriod:I

    .line 126
    iget v10, p0, Lcom/mediatek/epo/MtkEpoXmlLoader;->mUpdatePeriod:I

    if-ge v10, v13, :cond_5

    .line 127
    const/16 v10, 0x5a0

    iput v10, p0, Lcom/mediatek/epo/MtkEpoXmlLoader;->mUpdatePeriod:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_3

    .line 137
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v5           #i:I
    .end local v8           #name:Ljava/lang/String;
    :catch_2
    move-exception v3

    move-object v6, v7

    .line 138
    .end local v7           #is:Ljava/io/InputStream;
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6       #is:Ljava/io/InputStream;
    :goto_6
    :try_start_7
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/epo/MtkEpoXmlLoader;->dumpFile(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 148
    if-eqz v6, :cond_3

    .line 149
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    .line 150
    :catch_3
    move-exception v3

    .line 151
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 150
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v2       #count:I
    .restart local v4       #eventType:I
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #name:Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 151
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 153
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 140
    .end local v2           #count:I
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #eventType:I
    .end local v8           #name:Ljava/lang/String;
    :catch_5
    move-exception v3

    .line 141
    .restart local v3       #e:Ljava/io/IOException;
    :goto_7
    :try_start_9
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/epo/MtkEpoXmlLoader;->dumpFile(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 148
    if-eqz v6, :cond_3

    .line 149
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    .line 150
    :catch_6
    move-exception v3

    .line 151
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 143
    .end local v3           #e:Ljava/io/IOException;
    :catch_7
    move-exception v3

    .line 144
    .local v3, e:Ljava/lang/Exception;
    :goto_8
    :try_start_b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    invoke-virtual {p0, p1}, Lcom/mediatek/epo/MtkEpoXmlLoader;->dumpFile(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 148
    if-eqz v6, :cond_3

    .line 149
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_0

    .line 150
    :catch_8
    move-exception v3

    .line 151
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 147
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 148
    :goto_9
    if-eqz v6, :cond_a

    .line 149
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 152
    :cond_a
    :goto_a
    throw v10

    .line 150
    :catch_9
    move-exception v3

    .line 151
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 147
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #is:Ljava/io/InputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    goto :goto_9

    .line 143
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    :catch_a
    move-exception v3

    move-object v6, v7

    .end local v7           #is:Ljava/io/InputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    goto :goto_8

    .line 140
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    :catch_b
    move-exception v3

    move-object v6, v7

    .end local v7           #is:Ljava/io/InputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    goto :goto_7

    .line 137
    :catch_c
    move-exception v3

    goto :goto_6

    .line 134
    :catch_d
    move-exception v3

    goto/16 :goto_5
.end method
