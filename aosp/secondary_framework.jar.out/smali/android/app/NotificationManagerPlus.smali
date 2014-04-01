.class public Landroid/app/NotificationManagerPlus;
.super Ljava/lang/Object;
.source "NotificationManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationManagerPlus$OnLastDismissListener;,
        Landroid/app/NotificationManagerPlus$OnFirstShowListener;,
        Landroid/app/NotificationManagerPlus$ManagerBuilder;,
        Landroid/app/NotificationManagerPlus$Parameters;,
        Landroid/app/NotificationManagerPlus$DialogPlus;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static final MSG_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NotificationManangerPlus"


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/NotificationManagerPlus$DialogPlus;",
            ">;"
        }
    .end annotation
.end field

.field private mListening:Z

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

.field private mParams:Landroid/app/NotificationManagerPlus$Parameters;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSend:Z


# direct methods
.method private constructor <init>(Landroid/app/NotificationManagerPlus$Parameters;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 293
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mSend:Z

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mListening:Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Landroid/app/NotificationManagerPlus$1;

    invoke-direct {v0, p0}, Landroid/app/NotificationManagerPlus$1;-><init>(Landroid/app/NotificationManagerPlus;)V

    iput-object v0, p0, Landroid/app/NotificationManagerPlus;->mHandler:Landroid/os/Handler;

    .line 247
    new-instance v0, Landroid/app/NotificationManagerPlus$4;

    invoke-direct {v0, p0}, Landroid/app/NotificationManagerPlus$4;-><init>(Landroid/app/NotificationManagerPlus;)V

    iput-object v0, p0, Landroid/app/NotificationManagerPlus;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    new-instance v0, Landroid/app/NotificationManagerPlus$5;

    invoke-direct {v0, p0}, Landroid/app/NotificationManagerPlus$5;-><init>(Landroid/app/NotificationManagerPlus;)V

    iput-object v0, p0, Landroid/app/NotificationManagerPlus;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 277
    new-instance v0, Landroid/app/NotificationManagerPlus$6;

    invoke-direct {v0, p0}, Landroid/app/NotificationManagerPlus$6;-><init>(Landroid/app/NotificationManagerPlus;)V

    iput-object v0, p0, Landroid/app/NotificationManagerPlus;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 294
    iget-object v0, p1, Landroid/app/NotificationManagerPlus$Parameters;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context not allowed null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    iput-object p1, p0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    .line 298
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationManagerPlus;->mFilter:Landroid/content/IntentFilter;

    .line 299
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "mediatek.intent.action.FULL_SCRENN_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/NotificationManagerPlus$Parameters;Landroid/app/NotificationManagerPlus$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/app/NotificationManagerPlus;-><init>(Landroid/app/NotificationManagerPlus$Parameters;)V

    return-void
.end method

.method static synthetic access$000(Landroid/app/NotificationManagerPlus;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/app/NotificationManagerPlus;->resolve(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/NotificationManagerPlus;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mSend:Z

    return v0
.end method

.method static synthetic access$200(Landroid/app/NotificationManagerPlus;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/NotificationManagerPlus;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/NotificationManagerPlus;)Landroid/app/NotificationManagerPlus$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    return-object v0
.end method

.method private buildOnCancelListener(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1
    .parameter "pending"

    .prologue
    .line 231
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/NotificationManagerPlus$3;

    invoke-direct {v0, p0, p1}, Landroid/app/NotificationManagerPlus$3;-><init>(Landroid/app/NotificationManagerPlus;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private buildOnClickListenr(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "pending"

    .prologue
    .line 216
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/NotificationManagerPlus$2;

    invoke-direct {v0, p0, p1}, Landroid/app/NotificationManagerPlus$2;-><init>(Landroid/app/NotificationManagerPlus;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static cancel(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 414
    new-instance v0, Landroid/app/NotificationPlus;

    invoke-direct {v0, p0}, Landroid/app/NotificationPlus;-><init>(Landroid/content/Context;)V

    .line 415
    .local v0, notification:Landroid/app/NotificationPlus;
    invoke-virtual {v0, p1}, Landroid/app/NotificationPlus;->setId(I)V

    .line 416
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationPlus;->setType(I)V

    .line 417
    invoke-virtual {v0}, Landroid/app/NotificationPlus;->send()V

    .line 418
    return-void
.end method

.method public static cancelAll(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 425
    new-instance v0, Landroid/app/NotificationPlus;

    invoke-direct {v0, p0}, Landroid/app/NotificationPlus;-><init>(Landroid/content/Context;)V

    .line 426
    .local v0, notification:Landroid/app/NotificationPlus;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationPlus;->setType(I)V

    .line 427
    invoke-virtual {v0}, Landroid/app/NotificationPlus;->send()V

    .line 428
    return-void
.end method

.method public static notify(ILandroid/app/NotificationPlus;)V
    .locals 1
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 403
    invoke-virtual {p1, p0}, Landroid/app/NotificationPlus;->setId(I)V

    .line 404
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/NotificationPlus;->setType(I)V

    .line 405
    invoke-virtual {p1}, Landroid/app/NotificationPlus;->send()V

    .line 406
    return-void
.end method

.method private resolve(Landroid/os/Bundle;)V
    .locals 17
    .parameter "extra"

    .prologue
    .line 97
    const-string v14, "mediatek.intent.extra.package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, packageName:Ljava/lang/String;
    const-string v14, "mediatek.intent.extra.type"

    const/4 v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 99
    .local v13, type:I
    const-string v14, "NotificationManangerPlus"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resolve("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") packageName="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", type="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-eqz v10, :cond_0

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v14, "mediatek.intent.extra.id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    .line 105
    .local v4, hasId:Z
    const/4 v5, -0x1

    .line 106
    .local v5, id:I
    if-eqz v4, :cond_2

    .line 107
    const-string v14, "mediatek.intent.extra.id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 109
    :cond_2
    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    .line 110
    if-eqz v4, :cond_5

    .line 111
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    monitor-enter v15

    .line 112
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/NotificationManagerPlus$DialogPlus;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 113
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManagerPlus$DialogPlus;

    .line 114
    .local v2, dialog:Landroid/app/NotificationManagerPlus$DialogPlus;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v5}, Landroid/app/NotificationManagerPlus;->equals(Landroid/app/NotificationManagerPlus$DialogPlus;Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 115
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 116
    invoke-virtual {v2}, Landroid/app/NotificationManagerPlus$DialogPlus;->cancel()V

    .line 120
    .end local v2           #dialog:Landroid/app/NotificationManagerPlus$DialogPlus;
    :cond_4
    monitor-exit v15

    goto :goto_0

    .end local v6           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/NotificationManagerPlus$DialogPlus;>;"
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 122
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/NotificationManagerPlus$DialogPlus;>;"
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 123
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManagerPlus$DialogPlus;

    .line 124
    .restart local v2       #dialog:Landroid/app/NotificationManagerPlus$DialogPlus;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Landroid/app/NotificationManagerPlus;->equals(Landroid/app/NotificationManagerPlus$DialogPlus;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 125
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 126
    invoke-virtual {v2}, Landroid/app/NotificationManagerPlus$DialogPlus;->cancel()V

    goto :goto_0

    .line 133
    .end local v2           #dialog:Landroid/app/NotificationManagerPlus$DialogPlus;
    .end local v6           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/NotificationManagerPlus$DialogPlus;>;"
    :cond_7
    const/4 v3, 0x0

    .line 134
    .local v3, find:Landroid/app/NotificationManagerPlus$DialogPlus;
    if-nez v4, :cond_8

    .line 135
    const-string v14, "NotificationManangerPlus"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resolve("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") type=notify, but no id!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 138
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/NotificationManagerPlus$DialogPlus;>;"
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 139
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManagerPlus$DialogPlus;

    .line 140
    .local v12, temp:Landroid/app/NotificationManagerPlus$DialogPlus;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10, v5}, Landroid/app/NotificationManagerPlus;->equals(Landroid/app/NotificationManagerPlus$DialogPlus;Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 141
    move-object v3, v12

    .line 146
    .end local v12           #temp:Landroid/app/NotificationManagerPlus$DialogPlus;
    :cond_a
    new-instance v9, Landroid/app/NotificationManagerPlus$DialogPlus;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-object v14, v14, Landroid/app/NotificationManagerPlus$Parameters;->mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Landroid/app/NotificationManagerPlus$DialogPlus;-><init>(Landroid/content/Context;)V

    .line 147
    .local v9, newDialog:Landroid/app/NotificationManagerPlus$DialogPlus;
    invoke-virtual {v9, v10}, Landroid/app/NotificationManagerPlus$DialogPlus;->setPackageName(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v9, v5}, Landroid/app/NotificationManagerPlus$DialogPlus;->setId(I)V

    .line 149
    const-string v14, "mediatek.intent.extra.content.title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/app/NotificationManagerPlus$DialogPlus;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    const-string v14, "mediatek.intent.extra.content.text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/app/NotificationManagerPlus$DialogPlus;->setMessage(Ljava/lang/CharSequence;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Landroid/app/NotificationManagerPlus$Parameters;->mPositiveButtonHandled:Z

    if-eqz v14, :cond_10

    .line 152
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-object v15, v15, Landroid/app/NotificationManagerPlus$Parameters;->mPositiveButtonText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/NotificationManagerPlus$Parameters;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Landroid/app/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 157
    :cond_b
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Landroid/app/NotificationManagerPlus$Parameters;->mNeutralButtonHandled:Z

    if-eqz v14, :cond_11

    .line 158
    const/4 v14, -0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-object v15, v15, Landroid/app/NotificationManagerPlus$Parameters;->mNeutralButtonText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Landroid/app/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 163
    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Landroid/app/NotificationManagerPlus$Parameters;->mNegativeButtonHandled:Z

    if-eqz v14, :cond_12

    .line 164
    const/4 v14, -0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-object v15, v15, Landroid/app/NotificationManagerPlus$Parameters;->mNegativeButtonText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Landroid/app/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 169
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Landroid/app/NotificationManagerPlus$Parameters;->mCancelable:Z

    if-eqz v14, :cond_e

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Landroid/app/NotificationManagerPlus$Parameters;->mCancelHandled:Z

    if-eqz v14, :cond_13

    .line 171
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-object v14, v14, Landroid/app/NotificationManagerPlus$Parameters;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v9, v14}, Landroid/app/NotificationManagerPlus$DialogPlus;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 182
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v9, v14}, Landroid/app/NotificationManagerPlus$DialogPlus;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v9, v14}, Landroid/app/NotificationManagerPlus$DialogPlus;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 184
    invoke-virtual {v9}, Landroid/app/NotificationManagerPlus$DialogPlus;->show()V

    .line 185
    if-eqz v3, :cond_f

    .line 186
    invoke-virtual {v3}, Landroid/app/NotificationManagerPlus$DialogPlus;->dismiss()V

    .line 188
    :cond_f
    const-string v14, "NotificationManangerPlus"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resolve("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") find="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 153
    :cond_10
    const-string v14, "mediatek.intent.extra.button.name.positive"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 154
    const-string v14, "mediatek.intent.extra.button.intent.positive"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .line 155
    .local v11, positive:Landroid/app/PendingIntent;
    const/4 v14, -0x1

    const-string v15, "mediatek.intent.extra.button.name.positive"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/app/NotificationManagerPlus;->buildOnClickListenr(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Landroid/app/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 159
    .end local v11           #positive:Landroid/app/PendingIntent;
    :cond_11
    const-string v14, "mediatek.intent.extra.button.name.neutral"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 160
    const-string v14, "mediatek.intent.extra.button.intent.neutral"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 161
    .local v8, neutral:Landroid/app/PendingIntent;
    const/4 v14, -0x3

    const-string v15, "mediatek.intent.extra.button.name.neutral"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/app/NotificationManagerPlus;->buildOnClickListenr(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Landroid/app/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 165
    .end local v8           #neutral:Landroid/app/PendingIntent;
    :cond_12
    const-string v14, "mediatek.intent.extra.button.name.negative"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 166
    const-string v14, "mediatek.intent.extra.button.intent.negative"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 167
    .local v7, negative:Landroid/app/PendingIntent;
    const/4 v14, -0x2

    const-string v15, "mediatek.intent.extra.button.name.negative"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/app/NotificationManagerPlus;->buildOnClickListenr(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Landroid/app/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_3

    .line 173
    .end local v7           #negative:Landroid/app/PendingIntent;
    :cond_13
    const-string v14, "mediatek.intent.extra.cancel.enable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    const-string v15, "mediatek.intent.extra.cancel.enable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    iput-boolean v15, v14, Landroid/app/NotificationManagerPlus$Parameters;->mCancelable:Z

    .line 176
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Landroid/app/NotificationManagerPlus$Parameters;->mCancelable:Z

    if-eqz v14, :cond_e

    .line 177
    const-string v14, "mediatek.intent.extra.cancel.intent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 178
    .local v1, cancel:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/app/NotificationManagerPlus;->buildOnCancelListener(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/app/NotificationManagerPlus$DialogPlus;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/NotificationManagerPlus;->cancelAll(Z)V

    .line 350
    return-void
.end method

.method public cancelAll(Z)V
    .locals 5
    .parameter "ignoreAction"

    .prologue
    .line 357
    const-string v2, "NotificationManangerPlus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelAll("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v3, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 359
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManagerPlus$DialogPlus;

    .line 360
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/app/NotificationManagerPlus$DialogPlus;->cancel()V

    goto :goto_0

    .line 367
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 364
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz p1, :cond_2

    .line 365
    :try_start_1
    iget-object v2, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 367
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/NotificationManagerPlus;->clearAll(Z)V

    .line 376
    return-void
.end method

.method public clearAll(Z)V
    .locals 5
    .parameter "ignoreAction"

    .prologue
    .line 383
    const-string v2, "NotificationManangerPlus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearAll("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v3, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 385
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManagerPlus$DialogPlus;

    .line 386
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    invoke-virtual {v0}, Landroid/app/NotificationManagerPlus$DialogPlus;->dismiss()V

    goto :goto_0

    .line 393
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 390
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz p1, :cond_2

    .line 391
    :try_start_1
    iget-object v2, p0, Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 393
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    return-void
.end method

.method public equals(Landroid/app/NotificationManagerPlus$DialogPlus;Ljava/lang/String;)Z
    .locals 2
    .parameter "cmp"
    .parameter "packageName"

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, result:Z
    if-nez p2, :cond_1

    iget-object v1, p1, Landroid/app/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 207
    const/4 v0, 0x1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    if-eqz p2, :cond_0

    iget-object v1, p1, Landroid/app/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/app/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Landroid/app/NotificationManagerPlus$DialogPlus;Ljava/lang/String;I)Z
    .locals 2
    .parameter "cmp"
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, result:Z
    iget v1, p1, Landroid/app/NotificationManagerPlus$DialogPlus;->mId:I

    if-ne p3, v1, :cond_0

    .line 194
    if-nez p2, :cond_1

    iget-object v1, p1, Landroid/app/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 195
    const/4 v0, 0x1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 196
    :cond_1
    if-eqz p2, :cond_0

    iget-object v1, p1, Landroid/app/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/app/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 315
    const-string v0, "NotificationManangerPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause() mSend="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationManagerPlus;->mSend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mSend:Z

    .line 317
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 307
    const-string v0, "NotificationManangerPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume() mSend="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationManagerPlus;->mSend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mSend:Z

    .line 309
    return-void
.end method

.method public startListening()V
    .locals 3

    .prologue
    .line 324
    const-string v0, "NotificationManangerPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startListening() mListening="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationManagerPlus;->mListening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mListening:Z

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-object v0, v0, Landroid/app/NotificationManagerPlus$Parameters;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/NotificationManagerPlus;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/app/NotificationManagerPlus;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mListening:Z

    .line 329
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 3

    .prologue
    .line 336
    const-string v0, "NotificationManangerPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopListening() mListening="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/NotificationManagerPlus;->mListening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mListening:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    iget-object v0, p0, Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;

    iget-object v0, v0, Landroid/app/NotificationManagerPlus$Parameters;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/NotificationManagerPlus;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/NotificationManagerPlus;->mListening:Z

    .line 342
    :cond_0
    return-void
.end method
