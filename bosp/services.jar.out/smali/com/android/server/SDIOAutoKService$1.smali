.class Lcom/android/server/SDIOAutoKService$1;
.super Landroid/os/UEventObserver;
.source "SDIOAutoKService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SDIOAutoKService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SDIOAutoKService;


# direct methods
.method constructor <init>(Lcom/android/server/SDIOAutoKService;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/SDIOAutoKService$1;->this$0:Lcom/android/server/SDIOAutoKService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 25
    .parameter "event"

    .prologue
    .line 68
    invoke-static {}, Lcom/android/server/SDIOAutoKService;->access$000()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ">>>>>>> SDIOAutoK UEVENT: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " <<<<<<<"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v22, "FROM"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 70
    .local v12, from:Ljava/lang/String;
    const/16 v22, 0x100

    move/from16 v0, v22

    new-array v5, v0, [B

    .line 71
    .local v5, autokParams:[B
    const/16 v22, 0x200

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 72
    .local v17, procParams:[B
    const/4 v15, 0x0

    .line 73
    .local v15, paramsOffset:I
    const/4 v4, 0x0

    .line 74
    .local v4, autokLen:I
    new-instance v9, Ljava/io/File;

    const-string v22, "data/autok"

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v9, fAutoK:Ljava/io/File;
    const-string v22, "sdio_autok"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 78
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    const-string v22, "proc/autok"

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 84
    .local v10, fin:Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 85
    .local v6, bis:Ljava/io/BufferedInputStream;
    new-instance v11, Ljava/io/FileOutputStream;

    const-string v22, "data/autok"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 86
    .local v11, fout:Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 89
    .local v7, bos:Ljava/io/BufferedOutputStream;
    :goto_1
    invoke-virtual {v6, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v4, v0, :cond_3

    .line 90
    const-string v21, ""

    .line 91
    .local v21, str:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    if-ge v13, v4, :cond_2

    .line 93
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-byte v23, v5, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 91
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 96
    :cond_2
    invoke-static {}, Lcom/android/server/SDIOAutoKService;->access$000()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "read from proc (Str): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " \n length: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v5, v0, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 104
    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #bos:Ljava/io/BufferedOutputStream;
    .end local v10           #fin:Ljava/io/FileInputStream;
    .end local v11           #fout:Ljava/io/FileOutputStream;
    .end local v13           #i:I
    .end local v21           #str:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 105
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 100
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #bos:Ljava/io/BufferedOutputStream;
    .restart local v10       #fin:Ljava/io/FileInputStream;
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 101
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    .line 102
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 108
    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #bos:Ljava/io/BufferedOutputStream;
    .end local v10           #fin:Ljava/io/FileInputStream;
    .end local v11           #fout:Ljava/io/FileOutputStream;
    :cond_4
    const-string v22, "lte_drv"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 109
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 110
    .local v20, stage:[B
    const-string v16, ""

    .line 113
    .local v16, paramsStr:Ljava/lang/String;
    const/16 v22, 0x0

    const/16 v23, 0x0

    aput-byte v23, v20, v22

    .line 115
    const-string v22, "SDIOFUNC"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 118
    .local v18, sdiofunc:Ljava/lang/String;
    const-string v22, "UEVENT_TEST"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 119
    invoke-static {}, Lcom/android/server/SDIOAutoKService;->access$000()Ljava/lang/String;

    move-result-object v22

    const-string v23, "UEVENT TEST"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 124
    :cond_5
    const/16 v22, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/SDIOAutoKService;->hexStringToByteArray_reverse(Ljava/lang/String;)[B

    move-result-object v19

    .line 125
    .local v19, sdiofunc_addr:[B
    const/16 v22, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    add-int v15, v15, v22

    .line 128
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 129
    invoke-static {}, Lcom/android/server/SDIOAutoKService;->access$000()Ljava/lang/String;

    move-result-object v22

    const-string v23, "/data/autok exists, do stage 2 auto-K"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/16 v22, 0x0

    const/16 v23, 0x2

    aput-byte v23, v20, v22

    .line 132
    const/16 v22, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    add-int v15, v15, v22

    .line 136
    :try_start_2
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 137
    .restart local v10       #fin:Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 139
    .restart local v6       #bis:Ljava/io/BufferedInputStream;
    :goto_3
    invoke-virtual {v6, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v4, v0, :cond_7

    .line 140
    const-string v21, ""

    .line 142
    .restart local v21       #str:Ljava/lang/String;
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    add-int/2addr v15, v4

    .line 145
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_4
    if-ge v13, v4, :cond_6

    .line 147
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-byte v23, v5, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 145
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 149
    :cond_6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 150
    goto :goto_3

    .line 151
    .end local v13           #i:I
    .end local v21           #str:Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/android/server/SDIOAutoKService;->access$000()Ljava/lang/String;

    move-result-object v22

    const-string v23, "/data/autok content:"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/android/server/SDIOAutoKService;->access$000()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 165
    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .end local v10           #fin:Ljava/io/FileInputStream;
    :goto_5
    invoke-static {}, Lcom/android/server/SDIOAutoKService;->access$000()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "length of params write to proc:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :try_start_3
    new-instance v11, Ljava/io/FileOutputStream;

    const-string v22, "proc/autok"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 171
    .restart local v7       #bos:Ljava/io/BufferedOutputStream;
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1, v15}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 173
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 174
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 176
    .end local v7           #bos:Ljava/io/BufferedOutputStream;
    .end local v11           #fout:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v8

    .line 177
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 156
    .end local v8           #e:Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 157
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 160
    .end local v8           #e:Ljava/io/IOException;
    :cond_8
    const/16 v22, 0x0

    const/16 v23, 0x1

    aput-byte v23, v20, v22

    .line 161
    const/16 v22, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    add-int v15, v15, v22

    goto :goto_5

    .line 180
    .end local v16           #paramsStr:Ljava/lang/String;
    .end local v18           #sdiofunc:Ljava/lang/String;
    .end local v19           #sdiofunc_addr:[B
    .end local v20           #stage:[B
    :cond_9
    const-string v22, "autok_done"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 182
    :try_start_4
    new-instance v11, Ljava/io/FileOutputStream;

    const-string v22, "proc/lte_autok"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 183
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 185
    .restart local v7       #bos:Ljava/io/BufferedOutputStream;
    const-string v22, "autok_done"

    const-string v23, "UTF-8"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 186
    .local v14, lteprocParams:[B
    const-string v21, ""

    .line 188
    .restart local v21       #str:Ljava/lang/String;
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_6
    array-length v0, v14

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_a

    .line 190
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-byte v23, v14, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 188
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 192
    :cond_a
    invoke-static {}, Lcom/android/server/SDIOAutoKService;->access$000()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "autok_done procParam: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/16 v22, 0x0

    array-length v0, v14

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v14, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 196
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 197
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 199
    .end local v7           #bos:Ljava/io/BufferedOutputStream;
    .end local v11           #fout:Ljava/io/FileOutputStream;
    .end local v13           #i:I
    .end local v14           #lteprocParams:[B
    .end local v21           #str:Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 200
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
