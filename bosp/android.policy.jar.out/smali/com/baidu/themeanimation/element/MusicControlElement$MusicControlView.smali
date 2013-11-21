.class public Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;
.super Landroid/widget/RelativeLayout;
.source "MusicControlElement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/MusicControlElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicControlView"
.end annotation


# static fields
.field public static final NEXT_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field private static final NEXT_BUTTON:I = 0x1

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field private static final PAUSE_BUTTON:I = 0x3

.field private static final PLAY_BUTTON:I = 0x2

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field private static final PREV_BUTTON:I = 0x0

.field public static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"


# instance fields
.field private mAlbumCover:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

.field private mAlbumCoverElement:Lcom/baidu/themeanimation/element/VisibleElement;

.field private mAlbumTextElement:Lcom/baidu/themeanimation/element/TextElement;

.field mContext:Landroid/content/Context;

.field private mDefaultAlbum:Landroid/graphics/Bitmap;

.field mHandler:Landroid/os/Handler;

.field private mNextBtn:Landroid/view/View;

.field private mNextBtnElement:Lcom/baidu/themeanimation/element/VisibleElement;

.field private mPauseBtn:Landroid/view/View;

.field private mPauseBtnElement:Lcom/baidu/themeanimation/element/VisibleElement;

.field private mPlayBtn:Landroid/view/View;

.field private mPlayBtnElement:Lcom/baidu/themeanimation/element/VisibleElement;

.field private mPrevBtn:Landroid/view/View;

.field private mPrevBtnElement:Lcom/baidu/themeanimation/element/VisibleElement;

.field final synthetic this$0:Lcom/baidu/themeanimation/element/MusicControlElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/MusicControlElement;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x2

    .line 115
    iput-object p1, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->this$0:Lcom/baidu/themeanimation/element/MusicControlElement;

    .line 116
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 118
    iput-object p2, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mContext:Landroid/content/Context;

    .line 119
    iput-object p3, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 122
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/MusicControlElement;->getX()I

    move-result v1

    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/MusicControlElement;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    const-string v1, "MusicControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music control x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->initView()V

    .line 130
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 153
    iget-object v5, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->this$0:Lcom/baidu/themeanimation/element/MusicControlElement;

    #getter for: Lcom/baidu/themeanimation/element/MusicControlElement;->mElements:Ljava/util/List;
    invoke-static {v5}, Lcom/baidu/themeanimation/element/MusicControlElement;->access$000(Lcom/baidu/themeanimation/element/MusicControlElement;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 157
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->this$0:Lcom/baidu/themeanimation/element/MusicControlElement;

    #getter for: Lcom/baidu/themeanimation/element/MusicControlElement;->mElements:Ljava/util/List;
    invoke-static {v5}, Lcom/baidu/themeanimation/element/MusicControlElement;->access$000(Lcom/baidu/themeanimation/element/MusicControlElement;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 158
    iget-object v5, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->this$0:Lcom/baidu/themeanimation/element/MusicControlElement;

    #getter for: Lcom/baidu/themeanimation/element/MusicControlElement;->mElements:Ljava/util/List;
    invoke-static {v5}, Lcom/baidu/themeanimation/element/MusicControlElement;->access$000(Lcom/baidu/themeanimation/element/MusicControlElement;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/VisibleElement;

    .line 159
    .local v1, element:Lcom/baidu/themeanimation/element/VisibleElement;
    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/VisibleElement;->getName()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v6}, Lcom/baidu/themeanimation/element/VisibleElement;->generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;

    move-result-object v4

    .line 162
    .local v4, view:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 163
    instance-of v5, v1, Lcom/baidu/themeanimation/element/ButtonElement;

    if-eqz v5, :cond_0

    .line 164
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :cond_0
    instance-of v5, v1, Lcom/baidu/themeanimation/element/TextElement;

    if-eqz v5, :cond_1

    move-object v5, v1

    .line 168
    check-cast v5, Lcom/baidu/themeanimation/element/TextElement;

    iput-object v5, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mAlbumTextElement:Lcom/baidu/themeanimation/element/TextElement;

    .line 171
    :cond_1
    const-string v5, "music_prev"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 172
    iput-object v1, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPrevBtnElement:Lcom/baidu/themeanimation/element/VisibleElement;

    .line 173
    iput-object v4, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPrevBtn:Landroid/view/View;

    .line 174
    iget-object v5, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPrevBtn:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setId(I)V

    .line 194
    :cond_2
    :goto_1
    invoke-virtual {p0, v4}, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->addView(Landroid/view/View;)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_3
    const-string v5, "music_next"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 176
    iput-object v1, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mNextBtnElement:Lcom/baidu/themeanimation/element/VisibleElement;

    .line 177
    iput-object v4, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mNextBtn:Landroid/view/View;

    .line 178
    iget-object v5, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mNextBtn:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setId(I)V

    goto :goto_1

    .line 179
    :cond_4
    const-string v5, "music_play"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 180
    iput-object v1, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPlayBtnElement:Lcom/baidu/themeanimation/element/VisibleElement;

    .line 181
    iput-object v4, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPlayBtn:Landroid/view/View;

    .line 182
    iget-object v5, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPlayBtn:Landroid/view/View;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    goto :goto_1

    .line 183
    :cond_5
    const-string v5, "music_pause"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 184
    iput-object v1, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPauseBtnElement:Lcom/baidu/themeanimation/element/VisibleElement;

    .line 185
    iput-object v4, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPauseBtn:Landroid/view/View;

    .line 186
    iget-object v5, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPauseBtn:Landroid/view/View;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    goto :goto_1

    .line 187
    :cond_6
    const-string v5, "music_album_cover"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    iput-object v1, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mAlbumCoverElement:Lcom/baidu/themeanimation/element/VisibleElement;

    move-object v5, v4

    .line 189
    check-cast v5, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    iput-object v5, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mAlbumCover:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    .line 190
    iget-object v5, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mAlbumCover:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mDefaultAlbum:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 197
    .end local v1           #element:Lcom/baidu/themeanimation/element/VisibleElement;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #view:Landroid/view/View;
    :cond_7
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->updateView(Landroid/os/Bundle;)V

    .line 200
    :try_start_0
    const-class v5, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;

    const-string v6, "updateView"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/os/Bundle;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/baidu/themeanimation/receiver/MusicControlReceiver;->registerMusicPlayCB(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v2           #i:I
    :cond_8
    :goto_2
    return-void

    .line 202
    .restart local v2       #i:I
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 292
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 322
    :goto_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    return-void

    .line 295
    :pswitch_0
    const-string v1, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 299
    :pswitch_1
    const-string v1, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 303
    :pswitch_2
    const-string v1, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPlayBtnElement:Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/themeanimation/element/VisibleElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 307
    iget-object v1, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPauseBtnElement:Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/themeanimation/element/VisibleElement;->setVisibility(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 311
    :pswitch_3
    const-string v1, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPlayBtnElement:Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/themeanimation/element/VisibleElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 315
    iget-object v1, p0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPauseBtnElement:Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/themeanimation/element/VisibleElement;->setVisibility(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateView(Landroid/os/Bundle;)V
    .locals 18
    .parameter "musicBundle"

    .prologue
    .line 210
    const/4 v9, 0x0

    .line 211
    .local v9, isPlay:Z
    const-wide/16 v6, -0x1

    .line 212
    .local v6, id:J
    const/4 v1, 0x0

    .line 213
    .local v1, albumString:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 214
    const-string v14, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 216
    const-string v14, "playstate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 217
    const/4 v9, 0x1

    .line 220
    :cond_0
    const-string v14, "album"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 223
    .local v11, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 224
    .local v10, key:Ljava/lang/String;
    const-string v14, "music"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "3:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    if-eqz v9, :cond_5

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPlayBtnElement:Lcom/baidu/themeanimation/element/VisibleElement;

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/baidu/themeanimation/element/VisibleElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPauseBtnElement:Lcom/baidu/themeanimation/element/VisibleElement;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/baidu/themeanimation/element/VisibleElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 242
    :goto_1
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-ltz v14, :cond_4

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mAlbumTextElement:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v14, v1}, Lcom/baidu/themeanimation/element/TextElement;->setText(Ljava/lang/String;)V

    .line 244
    const-string v14, "content://media/external/audio/albumart"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 245
    .local v12, sArtworkUri:Landroid/net/Uri;
    invoke-static {v12, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 246
    .local v13, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 248
    .local v8, in:Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 254
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mAlbumCover:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    if-eqz v14, :cond_3

    .line 255
    const/4 v2, 0x0

    .line 256
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    .line 257
    const/4 v14, 0x0

    invoke-static {}, Lcom/baidu/themeanimation/element/MusicControlElement;->access$100()Landroid/graphics/BitmapFactory$Options;

    move-result-object v15

    invoke-static {v8, v14, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 263
    :cond_2
    if-eqz v2, :cond_6

    .line 264
    const-string v14, "music"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "set album cover! width="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", height="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mAlbumCover:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {v14, v2}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 276
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    .line 277
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 284
    .end local v8           #in:Ljava/io/InputStream;
    .end local v12           #sArtworkUri:Landroid/net/Uri;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_4
    :goto_4
    return-void

    .line 237
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPlayBtnElement:Lcom/baidu/themeanimation/element/VisibleElement;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/baidu/themeanimation/element/VisibleElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mPauseBtnElement:Lcom/baidu/themeanimation/element/VisibleElement;

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/baidu/themeanimation/element/VisibleElement;->setVisibility(Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 249
    .restart local v8       #in:Ljava/io/InputStream;
    .restart local v12       #sArtworkUri:Landroid/net/Uri;
    .restart local v13       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 250
    .local v4, ee:Ljava/lang/Exception;
    const-string v14, "music"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get album failed!+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 269
    .end local v4           #ee:Ljava/lang/Exception;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mAlbumCover:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/themeanimation/element/MusicControlElement$MusicControlView;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v14, v15}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 272
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    .line 273
    .local v3, e:Ljava/lang/Exception;
    :try_start_4
    const-string v14, "music"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get album cover!+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    if-eqz v8, :cond_4

    .line 277
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 279
    :catch_2
    move-exception v3

    .line 280
    const-string v14, "music"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get album cover!+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 279
    .end local v3           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 280
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v14, "music"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get album cover!+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 275
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 276
    if-eqz v8, :cond_7

    .line 277
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 281
    :cond_7
    :goto_5
    throw v14

    .line 279
    :catch_4
    move-exception v3

    .line 280
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v15, "music"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "get album cover!+"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method
