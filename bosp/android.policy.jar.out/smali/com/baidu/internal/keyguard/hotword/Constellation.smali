.class public Lcom/baidu/internal/keyguard/hotword/Constellation;
.super Landroid/widget/RelativeLayout;
.source "Constellation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final PARAM_CSRC:Ljava/lang/String;

.field private final SEARCHBOX_QUERY_ACTION:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mAxisSingleLine:Landroid/widget/RelativeLayout;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mConstellation:Landroid/widget/ImageView;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mExpand:Landroid/widget/TextView;

.field private mHover:Landroid/widget/TextView;

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mPage:I

.field private mSearch:Landroid/widget/ImageView;

.field private mSingleLine:Z

.field private mWord1:Landroid/widget/TextView;

.field private mWord2:Landroid/widget/TextView;

.field private mWord3:Landroid/widget/TextView;

.field private mWord4:Landroid/widget/TextView;

.field private mWord5:Landroid/widget/TextView;

.field private mWordLast:Landroid/widget/TextView;

.field private mWordX:[F

.field private mWordY:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x5

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordX:[F

    .line 42
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordY:[F

    .line 46
    const-string v0, "com.baidu.searchbox.action.SEARCH"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->SEARCHBOX_QUERY_ACTION:Ljava/lang/String;

    .line 48
    const-string v0, "lock_main_topword"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->PARAM_CSRC:Ljava/lang/String;

    .line 50
    const-string v0, "Constellation"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->TAG:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->init()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x5

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordX:[F

    .line 42
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordY:[F

    .line 46
    const-string v0, "com.baidu.searchbox.action.SEARCH"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->SEARCHBOX_QUERY_ACTION:Ljava/lang/String;

    .line 48
    const-string v0, "lock_main_topword"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->PARAM_CSRC:Ljava/lang/String;

    .line 50
    const-string v0, "Constellation"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->TAG:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x5

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordX:[F

    .line 42
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordY:[F

    .line 46
    const-string v0, "com.baidu.searchbox.action.SEARCH"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->SEARCHBOX_QUERY_ACTION:Ljava/lang/String;

    .line 48
    const-string v0, "lock_main_topword"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->PARAM_CSRC:Ljava/lang/String;

    .line 50
    const-string v0, "Constellation"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->TAG:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->init()V

    .line 78
    return-void
.end method

.method private getSearchboxQueryIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3
    .parameter "key"

    .prologue
    .line 380
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.searchbox.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 384
    const-string v1, "search_source"

    const-string v2, "lock_main_topword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v1, "BROWSER_RESTART"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 386
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 387
    return-object v0
.end method

.method private getSearchboxQueryIntentByUrl(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "query"

    .prologue
    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.searchbox.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 375
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 376
    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/high16 v3, 0x10e

    .line 57
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mInAnimation:Landroid/view/animation/Animation;

    .line 58
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 60
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, #anim@fade_out#t

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mOutAnimation:Landroid/view/animation/Animation;

    .line 61
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 63
    return-void
.end method

.method private startQuery()V
    .locals 4

    .prologue
    .line 334
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getIntent(Landroid/widget/TextView;)Landroid/content/Intent;

    move-result-object v1

    .line 335
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 337
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 344
    :cond_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->TAG:Ljava/lang/String;

    const-string v3, "start query fail:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getConstellationY()F
    .locals 2

    .prologue
    .line 391
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mConstellation:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 392
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 393
    .local v0, location:[I
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mConstellation:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 394
    const/4 v1, 0x1

    aget v1, v0, v1

    int-to-float v1, v1

    .line 396
    .end local v0           #location:[I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIntent(Landroid/widget/TextView;)Landroid/content/Intent;
    .locals 5
    .parameter "v"

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    .line 349
    .local v2, word:Lcom/baidu/internal/keyguard/hotword/WordList$Word;
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/baidu/internal/keyguard/hotword/Constellation;->isSearchboxInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 350
    iget v3, v2, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 351
    iget-object v3, v2, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getSearchboxQueryIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 361
    :cond_0
    :goto_0
    return-object v0

    .line 352
    :cond_1
    iget v3, v2, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 353
    iget-object v3, v2, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->url:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getSearchboxQueryIntentByUrl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 356
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://m.baidu.com/s?word="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 357
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 358
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public isSearchboxInstalled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 366
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.baidu.searchbox.action.SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 368
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 82
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 83
    const v0, #id@hotword1#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord1:Landroid/widget/TextView;

    .line 84
    const v0, #id@hotword2#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord2:Landroid/widget/TextView;

    .line 85
    const v0, #id@hotword3#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord3:Landroid/widget/TextView;

    .line 86
    const v0, #id@hotword4#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord4:Landroid/widget/TextView;

    .line 87
    const v0, #id@hotword5#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord5:Landroid/widget/TextView;

    .line 88
    const v0, #id@search#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mSearch:Landroid/widget/ImageView;

    .line 89
    const v0, #id@expand_text#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mExpand:Landroid/widget/TextView;

    .line 90
    const v0, #id@hover_text#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mHover:Landroid/widget/TextView;

    .line 91
    const v0, #id@constellation_bg#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mConstellation:Landroid/widget/ImageView;

    .line 92
    const v0, #id@constellation_container#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mContainer:Landroid/widget/RelativeLayout;

    .line 93
    const v0, #id@axis_single_line#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mAxisSingleLine:Landroid/widget/RelativeLayout;

    .line 94
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord1:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v3}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord2:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v4}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord3:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v5}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord4:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v6}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord5:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v2}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord1:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v3}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord2:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v4}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord3:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v5}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord4:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v6}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord5:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v2}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord1:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord2:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord3:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord4:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord5:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mConstellation:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 122
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 123
    invoke-virtual {p0, v6}, Lcom/baidu/internal/keyguard/hotword/Constellation;->setTransparent(Z)V

    .line 124
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mExpand:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mSearch:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mSearch:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    .line 131
    .local v0, word:Lcom/baidu/internal/keyguard/hotword/WordList$Word;
    iget v1, v0, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->type:I

    if-ne v1, v6, :cond_4

    .line 132
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/hotword/UbcUtils;

    move-result-object v1

    const-string v2, "0207"

    iget-object v3, v0, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->addStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->startQuery()V

    .line 140
    .end local v0           #word:Lcom/baidu/internal/keyguard/hotword/WordList$Word;
    :cond_2
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 141
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mExpand:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mSearch:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mExpand:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mExpand:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setY(F)V

    .line 145
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mSearch:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mSearch:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 146
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :cond_3
    return-void

    .line 134
    .restart local v0       #word:Lcom/baidu/internal/keyguard/hotword/WordList$Word;
    :cond_4
    iget v1, v0, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/hotword/UbcUtils;

    move-result-object v1

    const-string v2, "0208"

    iget-object v3, v0, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->addStatistic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 299
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 300
    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->setTransparent(Z)V

    .line 301
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord1:Landroid/widget/TextView;

    if-ne p1, v2, :cond_2

    .line 305
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord1:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    .line 316
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mContainer:Landroid/widget/RelativeLayout;

    if-eq p1, v2, :cond_6

    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 317
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mExpand:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mSearch:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mExpand:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mExpand:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setY(F)V

    .line 321
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mSearch:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mSearch:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 322
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    :goto_1
    return v0

    .line 306
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord2:Landroid/widget/TextView;

    if-ne p1, v2, :cond_3

    .line 307
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord2:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    goto :goto_0

    .line 308
    :cond_3
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord3:Landroid/widget/TextView;

    if-ne p1, v2, :cond_4

    .line 309
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord3:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    goto :goto_0

    .line 310
    :cond_4
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord4:Landroid/widget/TextView;

    if-ne p1, v2, :cond_5

    .line 311
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord4:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    goto :goto_0

    .line 312
    :cond_5
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord5:Landroid/widget/TextView;

    if-ne p1, v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord5:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    goto :goto_0

    .line 327
    :cond_6
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_7

    .line 328
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->resetUi()V

    :cond_7
    move v0, v1

    .line 330
    goto :goto_1
.end method

.method public onWordHover(Landroid/graphics/Point;)Landroid/widget/TextView;
    .locals 17
    .parameter "handlePoint"

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, v:Landroid/widget/TextView;
    const/4 v12, 0x2

    new-array v3, v12, [I

    .line 231
    .local v3, word1XY:[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord1:Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 232
    const/4 v12, 0x2

    new-array v5, v12, [I

    .line 233
    .local v5, word2XY:[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord2:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 234
    const/4 v12, 0x2

    new-array v7, v12, [I

    .line 235
    .local v7, word3XY:[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord3:Landroid/widget/TextView;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 236
    const/4 v12, 0x2

    new-array v9, v12, [I

    .line 237
    .local v9, word4XY:[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord4:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 238
    const/4 v12, 0x2

    new-array v11, v12, [I

    .line 239
    .local v11, word5XY:[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord5:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 241
    new-instance v2, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x1

    aget v13, v3, v13

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getWidth()I

    move-result v14

    const/4 v15, 0x1

    aget v15, v3, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord1:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-direct {v2, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 242
    .local v2, word1Rect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x1

    aget v13, v5, v13

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getWidth()I

    move-result v14

    const/4 v15, 0x1

    aget v15, v5, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord2:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-direct {v4, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 243
    .local v4, word2Rect:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x1

    aget v13, v7, v13

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getWidth()I

    move-result v14

    const/4 v15, 0x1

    aget v15, v7, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord3:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-direct {v6, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 244
    .local v6, word3Rect:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x1

    aget v13, v9, v13

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getWidth()I

    move-result v14

    const/4 v15, 0x1

    aget v15, v9, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord4:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-direct {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 245
    .local v8, word4Rect:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x1

    aget v13, v11, v13

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getWidth()I

    move-result v14

    const/4 v15, 0x1

    aget v15, v11, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord5:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-direct {v10, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 247
    .local v10, word5Rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord1:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_1

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord1:Landroid/widget/TextView;

    .line 263
    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    .line 264
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/baidu/internal/keyguard/hotword/Constellation;->setTransparent(Z)V

    .line 265
    const/high16 v12, 0x3f80

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setAlpha(F)V

    .line 266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mHover:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mHover:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mHover:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mHover:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setX(F)V

    .line 269
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mHover:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mHover:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x46

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setY(F)V

    .line 275
    :goto_1
    return-object v1

    .line 249
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord2:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_2

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord2:Landroid/widget/TextView;

    goto :goto_0

    .line 252
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord3:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_3

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord3:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 255
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord4:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_4

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord4:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 258
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord5:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_0

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord5:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 271
    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/baidu/internal/keyguard/hotword/Constellation;->setTransparent(Z)V

    .line 272
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mHover:Landroid/widget/TextView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onWordListAvaliable(Z)V
    .locals 7
    .parameter "b"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 400
    if-eqz p1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mConstellation:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord1:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v2}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord2:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v3}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord3:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v4}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord4:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v5}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord5:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v6}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord1:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v2}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord2:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v3}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 409
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord3:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v4}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord4:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v5}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord5:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    invoke-static {v1, v6}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 413
    :cond_0
    return-void
.end method

.method public requestSingleLine(Z)V
    .locals 10
    .parameter "singleLine"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 168
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v3, words:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord1:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord2:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord3:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord4:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord5:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    if-eqz p1, :cond_7

    .line 178
    iget-boolean v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mSingleLine:Z

    if-nez v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mConstellation:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    .line 182
    .local v0, height:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 183
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 184
    .local v2, word:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 185
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordX:[F

    aget v4, v4, v1

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 186
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordX:[F

    invoke-virtual {v2}, Landroid/widget/TextView;->getX()F

    move-result v5

    aput v5, v4, v1

    .line 187
    :cond_2
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordY:[F

    aget v4, v4, v1

    cmpg-float v4, v4, v7

    if-gez v4, :cond_3

    .line 188
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordY:[F

    invoke-virtual {v2}, Landroid/widget/TextView;->getY()F

    move-result v5

    aput v5, v4, v1

    .line 189
    :cond_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 190
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setX(F)V

    .line 194
    :goto_2
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mConstellation:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getY()F

    move-result v4

    add-int/lit8 v5, v1, 0x1

    mul-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3fc0

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setY(F)V

    .line 182
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 192
    :cond_5
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setX(F)V

    goto :goto_2

    .line 198
    .end local v2           #word:Landroid/widget/TextView;
    :cond_6
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mConstellation:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mAxisSingleLine:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 210
    .end local v0           #height:I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 211
    iput-boolean p1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mSingleLine:Z

    goto/16 :goto_0

    .line 201
    .end local v1           #i:I
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 202
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 203
    .restart local v2       #word:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordX:[F

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setX(F)V

    .line 204
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordY:[F

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setY(F)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 206
    .end local v2           #word:Landroid/widget/TextView;
    :cond_8
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->postInvalidate()V

    .line 207
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mConstellation:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mAxisSingleLine:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method public resetUi()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 215
    invoke-virtual {p0, v1}, Lcom/baidu/internal/keyguard/hotword/Constellation;->setTransparent(Z)V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWordLast:Landroid/widget/TextView;

    .line 217
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mExpand:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mHover:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mAxisSingleLine:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 226
    return-void
.end method

.method public setAnimation(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "visibility"

    .prologue
    const/4 v2, 0x4

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    if-ne p2, v2, :cond_2

    .line 155
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 157
    :cond_2
    if-nez p2, :cond_0

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 165
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 117
    iput p1, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mPage:I

    .line 118
    return-void
.end method

.method public setTransparent(Z)V
    .locals 3
    .parameter "transparent"

    .prologue
    const/high16 v2, 0x3f80

    const v1, 0x3e99999a

    .line 280
    if-eqz p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 282
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 283
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 284
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 285
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 286
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mConstellation:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 295
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 289
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 290
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 291
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord4:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 292
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mWord5:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 293
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/Constellation;->mConstellation:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method
