.class Lcom/android/phone/SimAssociateHandler$MyHandler;
.super Landroid/os/Handler;
.source "SimAssociateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimAssociateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimAssociateHandler;


# direct methods
.method public constructor <init>(Lcom/android/phone/SimAssociateHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/phone/SimAssociateHandler$MyHandler;->this$0:Lcom/android/phone/SimAssociateHandler;

    .line 136
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 141
    const/4 v14, 0x0

    .line 142
    .local v14, number:Ljava/lang/String;
    const/4 v13, -0x1

    .line 143
    .local v13, id:I
    const/4 v7, 0x0

    .line 144
    .local v7, associateSims:Ljava/util/ArrayList;
    const/4 v11, 0x0

    .line 145
    .local v11, exist:Z
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 147
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SimAssociateHandler$MyHandler;->this$0:Lcom/android/phone/SimAssociateHandler;

    const-string v2, "+MSG_LOAD"

    invoke-virtual {v1, v2}, Lcom/android/phone/SimAssociateHandler;->log(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SimAssociateHandler$MyHandler;->this$0:Lcom/android/phone/SimAssociateHandler;

    iget-object v1, v1, Lcom/android/phone/SimAssociateHandler;->mSimAssociationMaps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SimAssociateHandler$MyHandler;->this$0:Lcom/android/phone/SimAssociateHandler;

    iget-object v1, v1, Lcom/android/phone/SimAssociateHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "sim_id"

    aput-object v5, v3, v4

    const-string v4, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND (sim_id>0)"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 156
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 160
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SimAssociateHandler$MyHandler;->this$0:Lcom/android/phone/SimAssociateHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/SimAssociateHandler;->log(Ljava/lang/String;)V

    .line 162
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 163
    .local v15, strNumber:Ljava/lang/String;
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    .line 164
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 166
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SimAssociateHandler$MyHandler;->this$0:Lcom/android/phone/SimAssociateHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/SimAssociateHandler;->log(Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SimAssociateHandler$MyHandler;->this$0:Lcom/android/phone/SimAssociateHandler;

    iget-object v1, v1, Lcom/android/phone/SimAssociateHandler;->mSimAssociationMaps:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0

    .line 168
    if-nez v7, :cond_2

    .line 169
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v7           #associateSims:Ljava/util/ArrayList;
    .local v8, associateSims:Ljava/util/ArrayList;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SimAssociateHandler$MyHandler;->this$0:Lcom/android/phone/SimAssociateHandler;

    iget-object v1, v1, Lcom/android/phone/SimAssociateHandler;->mSimAssociationMaps:Ljava/util/HashMap;

    invoke-virtual {v1, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 172
    .end local v8           #associateSims:Ljava/util/ArrayList;
    .restart local v7       #associateSims:Ljava/util/ArrayList;
    :cond_2
    const/4 v11, 0x0

    .line 173
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_3

    .line 174
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v13, :cond_7

    .line 175
    const/4 v11, 0x1

    .line 179
    :cond_3
    if-nez v11, :cond_4

    .line 180
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SimAssociateHandler$MyHandler;->this$0:Lcom/android/phone/SimAssociateHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "associateSims = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/SimAssociateHandler;->log(Ljava/lang/String;)V

    .line 182
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 187
    .end local v12           #i:I
    .end local v15           #strNumber:Ljava/lang/String;
    :cond_5
    :goto_2
    if-eqz v9, :cond_6

    .line 188
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_6
    monitor-enter p0

    .line 190
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SimAssociateHandler$MyHandler;->this$0:Lcom/android/phone/SimAssociateHandler;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/SimAssociateHandler;->mLoading:Z
    invoke-static {v1, v2}, Lcom/android/phone/SimAssociateHandler;->access$102(Lcom/android/phone/SimAssociateHandler;Z)Z

    .line 191
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SimAssociateHandler$MyHandler;->this$0:Lcom/android/phone/SimAssociateHandler;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/SimAssociateHandler;->mCacheDirty:Z
    invoke-static {v1, v2}, Lcom/android/phone/SimAssociateHandler;->access$002(Lcom/android/phone/SimAssociateHandler;Z)Z

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SimAssociateHandler$MyHandler;->this$0:Lcom/android/phone/SimAssociateHandler;

    const-string v2, "-MSG_LOADs"

    invoke-virtual {v1, v2}, Lcom/android/phone/SimAssociateHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    .restart local v12       #i:I
    .restart local v15       #strNumber:Ljava/lang/String;
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 183
    .end local v12           #i:I
    .end local v15           #strNumber:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 184
    .local v10, e:Ljava/lang/Exception;
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SimAssociateHandler$MyHandler;->this$0:Lcom/android/phone/SimAssociateHandler;

    const-string v2, "exception"

    invoke-virtual {v1, v2}, Lcom/android/phone/SimAssociateHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 191
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 198
    .end local v9           #cursor:Landroid/database/Cursor;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SimAssociateHandler$MyHandler;->this$0:Lcom/android/phone/SimAssociateHandler;

    const-string v2, "MSG_EXIT"

    invoke-virtual {v1, v2}, Lcom/android/phone/SimAssociateHandler;->log(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SimAssociateHandler$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 203
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SimAssociateHandler$MyHandler;->this$0:Lcom/android/phone/SimAssociateHandler;

    invoke-virtual {v1}, Lcom/android/phone/SimAssociateHandler;->load()V

    goto/16 :goto_0

    .line 183
    .end local v7           #associateSims:Ljava/util/ArrayList;
    .restart local v8       #associateSims:Ljava/util/ArrayList;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v15       #strNumber:Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object v7, v8

    .end local v8           #associateSims:Ljava/util/ArrayList;
    .restart local v7       #associateSims:Ljava/util/ArrayList;
    goto :goto_3

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
