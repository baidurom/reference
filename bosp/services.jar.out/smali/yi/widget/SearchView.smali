.class public Lyi/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/widget/SearchView$SearchAutoComplete;,
        Lyi/widget/SearchView$OnSuggestionListener;,
        Lyi/widget/SearchView$OnViewFadeOutListener;,
        Lyi/widget/SearchView$OnCloseListener;,
        Lyi/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field private mCloseButton:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field private mHideIMM:Ljava/lang/Runnable;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Lyi/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Lyi/widget/SearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Lyi/widget/SearchView$OnSuggestionListener;

.field private mOnViewFadeOutListener:Lyi/widget/SearchView$OnViewFadeOutListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private mSearchBackIcon:Landroid/widget/ImageView;

.field private mSearchButton:Landroid/view/View;

.field private mSearchEditFrame:Landroid/view/View;

.field private mSearchHintIcon:Landroid/widget/ImageView;

.field private mSearchPlate:Landroid/view/View;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mShowIMM:Ljava/lang/Runnable;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private mSubmitArea:Landroid/view/View;

.field private mSubmitButton:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private mSuggestionsAdapter:Landroid/widget/CursorAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private mVoiceButton:Landroid/view/View;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lyi/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 286
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    new-instance v7, Lyi/widget/SearchView$1;

    invoke-direct {v7, p0}, Lyi/widget/SearchView$1;-><init>(Lyi/widget/SearchView;)V

    iput-object v7, p0, Lyi/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 180
    new-instance v7, Lyi/widget/SearchView$2;

    invoke-direct {v7, p0}, Lyi/widget/SearchView$2;-><init>(Lyi/widget/SearchView;)V

    iput-object v7, p0, Lyi/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 186
    new-instance v7, Lyi/widget/SearchView$3;

    invoke-direct {v7, p0}, Lyi/widget/SearchView$3;-><init>(Lyi/widget/SearchView;)V

    iput-object v7, p0, Lyi/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 200
    new-instance v7, Ljava/util/WeakHashMap;

    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v7, p0, Lyi/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 869
    new-instance v7, Lyi/widget/SearchView$10;

    invoke-direct {v7, p0}, Lyi/widget/SearchView$10;-><init>(Lyi/widget/SearchView;)V

    iput-object v7, p0, Lyi/widget/SearchView;->mShowIMM:Ljava/lang/Runnable;

    .line 912
    new-instance v7, Lyi/widget/SearchView$11;

    invoke-direct {v7, p0}, Lyi/widget/SearchView$11;-><init>(Lyi/widget/SearchView;)V

    iput-object v7, p0, Lyi/widget/SearchView;->mHideIMM:Ljava/lang/Runnable;

    .line 1083
    new-instance v7, Lyi/widget/SearchView$12;

    invoke-direct {v7, p0}, Lyi/widget/SearchView$12;-><init>(Lyi/widget/SearchView;)V

    iput-object v7, p0, Lyi/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1134
    new-instance v7, Lyi/widget/SearchView$13;

    invoke-direct {v7, p0}, Lyi/widget/SearchView$13;-><init>(Lyi/widget/SearchView;)V

    iput-object v7, p0, Lyi/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1368
    new-instance v7, Lyi/widget/SearchView$14;

    invoke-direct {v7, p0}, Lyi/widget/SearchView$14;-><init>(Lyi/widget/SearchView;)V

    iput-object v7, p0, Lyi/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1554
    new-instance v7, Lyi/widget/SearchView$15;

    invoke-direct {v7, p0}, Lyi/widget/SearchView$15;-><init>(Lyi/widget/SearchView;)V

    iput-object v7, p0, Lyi/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1565
    new-instance v7, Lyi/widget/SearchView$16;

    invoke-direct {v7, p0}, Lyi/widget/SearchView$16;-><init>(Lyi/widget/SearchView;)V

    iput-object v7, p0, Lyi/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1871
    new-instance v7, Lyi/widget/SearchView$17;

    invoke-direct {v7, p0}, Lyi/widget/SearchView$17;-><init>(Lyi/widget/SearchView;)V

    iput-object v7, p0, Lyi/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 288
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 290
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x4090019

    const/4 v8, 0x1

    invoke-virtual {v3, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 292
    const v7, 0x4020009

    invoke-virtual {p0, v7}, Lyi/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lyi/widget/SearchView;->mSearchButton:Landroid/view/View;

    .line 293
    const v7, 0x4020036

    invoke-virtual {p0, v7}, Lyi/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lyi/widget/SearchView$SearchAutoComplete;

    iput-object v7, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    .line 294
    iget-object v7, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, p0}, Lyi/widget/SearchView$SearchAutoComplete;->setSearchView(Lyi/widget/SearchView;)V

    .line 295
    iget-object v7, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Lyi/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x40800b1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lyi/widget/SearchView$SearchAutoComplete;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 297
    const v7, 0x4020033

    invoke-virtual {p0, v7}, Lyi/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lyi/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    .line 298
    const v7, 0x4020035

    invoke-virtual {p0, v7}, Lyi/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lyi/widget/SearchView;->mSearchPlate:Landroid/view/View;

    .line 299
    const v7, 0x4020038

    invoke-virtual {p0, v7}, Lyi/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lyi/widget/SearchView;->mSubmitArea:Landroid/view/View;

    .line 300
    const v7, 0x4020039

    invoke-virtual {p0, v7}, Lyi/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lyi/widget/SearchView;->mSubmitButton:Landroid/view/View;

    .line 301
    const v7, 0x4020037

    invoke-virtual {p0, v7}, Lyi/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lyi/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 302
    const v7, 0x402003a

    invoke-virtual {p0, v7}, Lyi/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lyi/widget/SearchView;->mVoiceButton:Landroid/view/View;

    .line 303
    const v7, 0x4020034

    invoke-virtual {p0, v7}, Lyi/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lyi/widget/SearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    .line 304
    const v7, 0x4020016

    invoke-virtual {p0, v7}, Lyi/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lyi/widget/SearchView;->mSearchBackIcon:Landroid/widget/ImageView;

    .line 306
    iget-object v7, p0, Lyi/widget/SearchView;->mSearchButton:Landroid/view/View;

    iget-object v8, p0, Lyi/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v7, p0, Lyi/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lyi/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v7, p0, Lyi/widget/SearchView;->mSubmitButton:Landroid/view/View;

    iget-object v8, p0, Lyi/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v7, p0, Lyi/widget/SearchView;->mVoiceButton:Landroid/view/View;

    iget-object v8, p0, Lyi/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v7, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Lyi/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lyi/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v7, p0, Lyi/widget/SearchView;->mSearchBackIcon:Landroid/widget/ImageView;

    iget-object v8, p0, Lyi/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v7, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Lyi/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v7, v8}, Lyi/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 314
    iget-object v7, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Lyi/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v7, v8}, Lyi/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 315
    iget-object v7, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Lyi/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v8}, Lyi/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 316
    iget-object v7, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Lyi/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v8}, Lyi/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 317
    iget-object v7, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Lyi/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v8}, Lyi/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 319
    iget-object v7, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    new-instance v8, Lyi/widget/SearchView$4;

    invoke-direct {v8, p0}, Lyi/widget/SearchView$4;-><init>(Lyi/widget/SearchView;)V

    invoke-virtual {v7, v8}, Lyi/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 328
    sget-object v7, Lcom/android/internal/R$styleable;->SearchView:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 329
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Lyi/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 330
    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 331
    .local v5, maxWidth:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 332
    invoke-virtual {p0, v5}, Lyi/widget/SearchView;->setMaxWidth(I)V

    .line 334
    :cond_0
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 335
    .local v6, queryHint:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 336
    invoke-virtual {p0, v6}, Lyi/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 338
    :cond_1
    const/4 v7, 0x2

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 339
    .local v2, imeOptions:I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    .line 340
    invoke-virtual {p0, v2}, Lyi/widget/SearchView;->setImeOptions(I)V

    .line 342
    :cond_2
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 343
    .local v4, inputType:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_3

    .line 344
    invoke-virtual {p0, v4}, Lyi/widget/SearchView;->setInputType(I)V

    .line 347
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 349
    const/4 v1, 0x1

    .line 351
    .local v1, focusable:Z
    sget-object v7, Lcom/android/internal/R$styleable;->View:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 352
    const/16 v7, 0x12

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 353
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 354
    invoke-virtual {p0, v1}, Lyi/widget/SearchView;->setFocusable(Z)V

    .line 357
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.WEB_SEARCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lyi/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 358
    iget-object v7, p0, Lyi/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 v8, 0x1000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 359
    iget-object v7, p0, Lyi/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v8, "android.speech.extra.LANGUAGE_MODEL"

    const-string v9, "web_search"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lyi/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 363
    iget-object v7, p0, Lyi/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    const/high16 v8, 0x1000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 365
    iget-object v7, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Lyi/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v7

    invoke-virtual {p0, v7}, Lyi/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lyi/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    .line 366
    iget-object v7, p0, Lyi/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 367
    iget-object v7, p0, Lyi/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v8, Lyi/widget/SearchView$5;

    invoke-direct {v8, p0}, Lyi/widget/SearchView$5;-><init>(Lyi/widget/SearchView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 377
    :cond_4
    iget-boolean v7, p0, Lyi/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, v7}, Lyi/widget/SearchView;->updateViewsVisibility(Z)V

    .line 378
    invoke-direct {p0}, Lyi/widget/SearchView;->updateQueryHint()V

    .line 379
    return-void
.end method

.method static synthetic access$000(Lyi/widget/SearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lyi/widget/SearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$100(Lyi/widget/SearchView;)Landroid/widget/CursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lyi/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lyi/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lyi/widget/SearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lyi/widget/SearchView;->onCloseClicked()V

    return-void
.end method

.method static synthetic access$1200(Lyi/widget/SearchView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lyi/widget/SearchView;->mSubmitButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lyi/widget/SearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lyi/widget/SearchView;->onSubmitQuery()V

    return-void
.end method

.method static synthetic access$1400(Lyi/widget/SearchView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lyi/widget/SearchView;->mVoiceButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lyi/widget/SearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lyi/widget/SearchView;->onVoiceClicked()V

    return-void
.end method

.method static synthetic access$1600(Lyi/widget/SearchView;)Lyi/widget/SearchView$SearchAutoComplete;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    return-object v0
.end method

.method static synthetic access$1700(Lyi/widget/SearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lyi/widget/SearchView;->forceSuggestionQuery()V

    return-void
.end method

.method static synthetic access$1800(Lyi/widget/SearchView;)Landroid/app/SearchableInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method static synthetic access$1900(Lyi/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lyi/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lyi/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lyi/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$2100(Lyi/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lyi/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lyi/widget/SearchView;IILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lyi/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lyi/widget/SearchView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lyi/widget/SearchView;->onItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lyi/widget/SearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lyi/widget/SearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lyi/widget/SearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lyi/widget/SearchView;->adjustDropDownSizeAndPosition()V

    return-void
.end method

.method static synthetic access$400(Lyi/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lyi/widget/SearchView;->mSearchBackIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lyi/widget/SearchView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lyi/widget/SearchView;->mSearchPlate:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lyi/widget/SearchView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lyi/widget/SearchView;->setShowSoftInputOnFocus(Z)V

    return-void
.end method

.method static synthetic access$700(Lyi/widget/SearchView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lyi/widget/SearchView;->setImeVisibility(Z)V

    return-void
.end method

.method static synthetic access$800(Lyi/widget/SearchView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lyi/widget/SearchView;->mSearchButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lyi/widget/SearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lyi/widget/SearchView;->onSearchClicked()V

    return-void
.end method

.method private adjustDropDownSizeAndPosition()V
    .locals 7

    .prologue
    .line 1518
    iget-object v4, p0, Lyi/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1519
    invoke-virtual {p0}, Lyi/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1520
    .local v3, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lyi/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 1521
    .local v0, anchorPadding:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1522
    .local v1, dropDownPadding:Landroid/graphics/Rect;
    iget-boolean v4, p0, Lyi/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_1

    const v4, 0x405000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x405000a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int v2, v4, v5

    .line 1526
    .local v2, iconOffset:I
    :goto_0
    iget-object v4, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Lyi/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1527
    iget-object v4, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    neg-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lyi/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1529
    iget-object v4, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    iget-object v5, p0, Lyi/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lyi/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1532
    .end local v0           #anchorPadding:I
    .end local v1           #dropDownPadding:Landroid/graphics/Rect;
    .end local v2           #iconOffset:I
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 1522
    .restart local v0       #anchorPadding:I
    .restart local v1       #dropDownPadding:Landroid/graphics/Rect;
    .restart local v3       #res:Landroid/content/res/Resources;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "action"
    .parameter "data"
    .parameter "extraData"
    .parameter "query"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    .line 1683
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1684
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1688
    if-eqz p2, :cond_0

    .line 1689
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1691
    :cond_0
    const-string v1, "user_query"

    iget-object v2, p0, Lyi/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1692
    if-eqz p4, :cond_1

    .line 1693
    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1695
    :cond_1
    if-eqz p3, :cond_2

    .line 1696
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1698
    :cond_2
    iget-object v1, p0, Lyi/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1699
    const-string v1, "app_data"

    iget-object v2, p0, Lyi/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1701
    :cond_3
    if-eqz p5, :cond_4

    .line 1702
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1703
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1705
    :cond_4
    iget-object v1, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1706
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 12
    .parameter "c"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    .line 1798
    :try_start_0
    const-string v0, "suggest_intent_action"

    invoke-static {p1, v0}, Lyi/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1800
    .local v1, action:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1801
    iget-object v0, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1803
    :cond_0
    if-nez v1, :cond_1

    .line 1804
    const-string v1, "android.intent.action.SEARCH"

    .line 1808
    :cond_1
    const-string v0, "suggest_intent_data"

    invoke-static {p1, v0}, Lyi/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1809
    .local v7, data:Ljava/lang/String;
    if-nez v7, :cond_2

    .line 1810
    iget-object v0, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v7

    .line 1813
    :cond_2
    if-eqz v7, :cond_3

    .line 1814
    const-string v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Lyi/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1815
    .local v10, id:Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1819
    .end local v10           #id:Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_4

    const/4 v2, 0x0

    .line 1821
    .local v2, dataUri:Landroid/net/Uri;
    :goto_0
    const-string v0, "suggest_intent_query"

    invoke-static {p1, v0}, Lyi/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1822
    .local v4, query:Ljava/lang/String;
    const-string v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Lyi/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, extraData:Ljava/lang/String;
    move-object v0, p0

    move v5, p2

    move-object v6, p3

    .line 1824
    invoke-direct/range {v0 .. v6}, Lyi/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1834
    .end local v1           #action:Ljava/lang/String;
    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v3           #extraData:Ljava/lang/String;
    .end local v4           #query:Ljava/lang/String;
    .end local v7           #data:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1819
    .restart local v1       #action:Ljava/lang/String;
    .restart local v7       #data:Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1825
    .end local v1           #action:Ljava/lang/String;
    .end local v7           #data:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1828
    .local v8, e:Ljava/lang/RuntimeException;
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 1832
    .local v11, rowNum:I
    :goto_2
    const-string v0, "SearchView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search Suggestions cursor at row "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    const/4 v0, 0x0

    goto :goto_1

    .line 1829
    .end local v11           #rowNum:I
    :catch_1
    move-exception v9

    .line 1830
    .local v9, e2:Ljava/lang/RuntimeException;
    const/4 v11, -0x1

    .restart local v11       #rowNum:I
    goto :goto_2
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 13
    .parameter "baseIntent"
    .parameter "searchable"

    .prologue
    .line 1728
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .line 1733
    .local v8, searchActivity:Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1734
    .local v6, queryIntent:Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1735
    invoke-virtual {p0}, Lyi/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x4000

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1742
    .local v3, pending:Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1747
    .local v5, queryExtras:Landroid/os/Bundle;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1750
    .local v9, voiceIntent:Landroid/content/Intent;
    const-string v1, "free_form"

    .line 1751
    .local v1, languageModel:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1752
    .local v4, prompt:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1753
    .local v0, language:Ljava/lang/String;
    const/4 v2, 0x1

    .line 1755
    .local v2, maxResults:I
    invoke-virtual {p0}, Lyi/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1756
    .local v7, resources:Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_0

    .line 1757
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1759
    :cond_0
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_1

    .line 1760
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1762
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_2

    .line 1763
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1765
    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_3

    .line 1766
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    .line 1768
    :cond_3
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1769
    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1770
    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1771
    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1772
    const-string v11, "calling_package"

    if-nez v8, :cond_4

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1776
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1777
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1779
    return-object v9

    .line 1772
    :cond_4
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4
    .parameter "baseIntent"
    .parameter "searchable"

    .prologue
    .line 1713
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1714
    .local v1, voiceIntent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1715
    .local v0, searchActivity:Landroid/content/ComponentName;
    const-string v3, "calling_package"

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1717
    return-object v1

    .line 1715
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private dismissSuggestions()V
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lyi/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1409
    return-void
.end method

.method private forceSuggestionQuery()V
    .locals 6

    .prologue
    .line 1849
    :try_start_0
    const-string v4, "AutoCompleteTextView"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1850
    .local v0, autoTextView:Ljava/lang/Class;
    const-string v4, "doAfterTextChanged"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1851
    .local v1, doAfterTextChanged:Ljava/lang/reflect/Method;
    const-string v4, "doBeforeTextChanged"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1852
    .local v2, doBeforeTextChanged:Ljava/lang/reflect/Method;
    iget-object v4, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    iget-object v4, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1861
    .end local v0           #autoTextView:Ljava/lang/Class;
    .end local v1           #doAfterTextChanged:Ljava/lang/reflect/Method;
    .end local v2           #doBeforeTextChanged:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1855
    :catch_0
    move-exception v3

    .line 1857
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "actionKey"

    .prologue
    .line 1258
    const/4 v1, 0x0

    .line 1260
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v0

    .line 1261
    .local v0, column:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1262
    invoke-static {p0, v0}, Lyi/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1267
    :cond_0
    if-nez v1, :cond_1

    .line 1268
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v1

    .line 1270
    :cond_1
    return-object v1
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "hintText"

    .prologue
    .line 1292
    return-object p1
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 965
    invoke-virtual {p0}, Lyi/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x405000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getSearchIconId()I
    .locals 4

    .prologue
    .line 1274
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1275
    .local v0, outValue:Landroid/util/TypedValue;
    const-string v2, "searchViewSearchIcon"

    invoke-static {v2}, Lyi/support/v1/utils/ResHelper;->getAttrByName(Ljava/lang/String;)I

    move-result v1

    .line 1276
    .local v1, searchViewSearchIconId:I
    invoke-virtual {p0}, Lyi/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1278
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    return v2
.end method

.method private hasVoiceSearch()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 990
    iget-object v3, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 991
    const/4 v1, 0x0

    .line 992
    .local v1, testIntent:Landroid/content/Intent;
    iget-object v3, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 993
    iget-object v1, p0, Lyi/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 997
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 998
    invoke-virtual {p0}, Lyi/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1000
    .local v0, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 1003
    .end local v0           #ri:Landroid/content/pm/ResolveInfo;
    .end local v1           #testIntent:Landroid/content/Intent;
    :cond_1
    return v2

    .line 994
    .restart local v1       #testIntent:Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 995
    iget-object v1, p0, Lyi/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1864
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .prologue
    .line 1007
    iget-boolean v0, p0, Lyi/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lyi/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lyi/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1638
    if-nez p1, :cond_0

    .line 1648
    :goto_0
    return-void

    .line 1644
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lyi/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1645
    :catch_0
    move-exception v0

    .line 1646
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "SearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "actionKey"
    .parameter "actionMsg"
    .parameter "query"

    .prologue
    const/4 v2, 0x0

    .line 1660
    const-string v1, "android.intent.action.SEARCH"

    .local v1, action:Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1661
    invoke-direct/range {v0 .. v6}, Lyi/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1662
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lyi/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1663
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 3
    .parameter "position"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    .line 1621
    iget-object v2, p0, Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1622
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1624
    invoke-direct {p0, v0, p2, p3}, Lyi/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1627
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lyi/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1629
    const/4 v2, 0x1

    .line 1631
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onCloseClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1412
    iget-object v1, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lyi/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1413
    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1414
    iget-boolean v1, p0, Lyi/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_1

    .line 1416
    iget-object v1, p0, Lyi/widget/SearchView;->mOnCloseListener:Lyi/widget/SearchView$OnCloseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lyi/widget/SearchView;->mOnCloseListener:Lyi/widget/SearchView$OnCloseListener;

    invoke-interface {v1}, Lyi/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1418
    :cond_0
    invoke-virtual {p0}, Lyi/widget/SearchView;->clearFocus()V

    .line 1420
    invoke-direct {p0, v3}, Lyi/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1429
    :cond_1
    :goto_0
    return-void

    .line 1424
    :cond_2
    iget-object v1, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lyi/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1425
    iget-object v1, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lyi/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1426
    invoke-direct {p0, v3}, Lyi/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .locals 2
    .parameter "position"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    const/4 v0, 0x0

    .line 1535
    iget-object v1, p0, Lyi/widget/SearchView;->mOnSuggestionListener:Lyi/widget/SearchView$OnSuggestionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lyi/widget/SearchView;->mOnSuggestionListener:Lyi/widget/SearchView$OnSuggestionListener;

    invoke-interface {v1, p1}, Lyi/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1537
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lyi/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1538
    invoke-direct {p0, v0}, Lyi/widget/SearchView;->setImeVisibility(Z)V

    .line 1539
    invoke-direct {p0}, Lyi/widget/SearchView;->dismissSuggestions()V

    .line 1540
    const/4 v0, 0x1

    .line 1542
    :cond_1
    return v0
.end method

.method private onItemSelected(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1546
    iget-object v0, p0, Lyi/widget/SearchView;->mOnSuggestionListener:Lyi/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyi/widget/SearchView;->mOnSuggestionListener:Lyi/widget/SearchView$OnSuggestionListener;

    invoke-interface {v0, p1}, Lyi/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1548
    :cond_0
    invoke-direct {p0, p1}, Lyi/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    .line 1549
    const/4 v0, 0x1

    .line 1551
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSearchClicked()V
    .locals 1

    .prologue
    .line 1432
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lyi/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1433
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lyi/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1434
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lyi/widget/SearchView;->setImeVisibility(Z)V

    .line 1435
    iget-object v0, p0, Lyi/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lyi/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1438
    :cond_0
    return-void
.end method

.method private onSubmitQuery()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1394
    iget-object v1, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lyi/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1395
    .local v0, query:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1396
    iget-object v1, p0, Lyi/widget/SearchView;->mOnQueryChangeListener:Lyi/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lyi/widget/SearchView;->mOnQueryChangeListener:Lyi/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lyi/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1398
    :cond_0
    iget-object v1, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    .line 1399
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v1, v2}, Lyi/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1400
    invoke-direct {p0, v3}, Lyi/widget/SearchView;->setImeVisibility(Z)V

    .line 1402
    :cond_1
    invoke-direct {p0}, Lyi/widget/SearchView;->dismissSuggestions()V

    .line 1405
    :cond_2
    return-void
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x15

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1186
    iget-object v7, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v7, :cond_1

    .line 1243
    :cond_0
    :goto_0
    return v5

    .line 1189
    :cond_1
    iget-object v7, p0, Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v7, :cond_0

    .line 1192
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1195
    const/16 v7, 0x42

    if-eq p2, v7, :cond_2

    const/16 v7, 0x54

    if-eq p2, v7, :cond_2

    const/16 v7, 0x3d

    if-ne p2, v7, :cond_3

    .line 1197
    :cond_2
    iget-object v6, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Lyi/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    .line 1198
    .local v3, position:I
    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6}, Lyi/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 1203
    .end local v3           #position:I
    :cond_3
    if-eq p2, v8, :cond_4

    const/16 v7, 0x16

    if-ne p2, v7, :cond_6

    .line 1208
    :cond_4
    if-ne p2, v8, :cond_5

    move v4, v5

    .line 1210
    .local v4, selPoint:I
    :goto_1
    iget-object v7, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v4}, Lyi/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1211
    iget-object v7, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v5}, Lyi/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1212
    iget-object v5, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Lyi/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1213
    iget-object v5, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5, v6}, Lyi/widget/SearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    move v5, v6

    .line 1215
    goto :goto_0

    .line 1208
    .end local v4           #selPoint:I
    :cond_5
    iget-object v7, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Lyi/widget/SearchView$SearchAutoComplete;->length()I

    move-result v4

    goto :goto_1

    .line 1219
    :cond_6
    const/16 v6, 0x13

    if-ne p2, v6, :cond_7

    iget-object v6, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Lyi/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1226
    :cond_7
    iget-object v6, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v6, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1227
    .local v0, actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1231
    :cond_8
    iget-object v6, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Lyi/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    .line 1232
    .restart local v3       #position:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 1233
    iget-object v6, p0, Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1234
    .local v2, c:Landroid/database/Cursor;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1235
    invoke-static {v2, v0}, Lyi/widget/SearchView;->getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1236
    .local v1, actionMsg:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1237
    invoke-direct {p0, v3, p2, v1}, Lyi/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "newText"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1380
    iget-object v4, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Lyi/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1381
    .local v1, text:Ljava/lang/CharSequence;
    iput-object v1, p0, Lyi/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1382
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1383
    .local v0, hasText:Z
    :goto_0
    invoke-direct {p0, v0}, Lyi/widget/SearchView;->updateSubmitButton(Z)V

    .line 1384
    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lyi/widget/SearchView;->updateVoiceButton(Z)V

    .line 1385
    invoke-direct {p0}, Lyi/widget/SearchView;->updateCloseButton()V

    .line 1386
    invoke-direct {p0}, Lyi/widget/SearchView;->updateSubmitArea()V

    .line 1387
    iget-object v2, p0, Lyi/widget/SearchView;->mOnQueryChangeListener:Lyi/widget/SearchView$OnQueryTextListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lyi/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1388
    iget-object v2, p0, Lyi/widget/SearchView;->mOnQueryChangeListener:Lyi/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lyi/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1390
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lyi/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1391
    return-void

    .end local v0           #hasText:Z
    :cond_1
    move v0, v3

    .line 1382
    goto :goto_0

    .restart local v0       #hasText:Z
    :cond_2
    move v2, v3

    .line 1384
    goto :goto_1
.end method

.method private onVoiceClicked()V
    .locals 6

    .prologue
    .line 1442
    iget-object v4, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v4, :cond_1

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    iget-object v2, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 1447
    .local v2, searchable:Landroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1448
    iget-object v4, p0, Lyi/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Lyi/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    .line 1450
    .local v3, webSearchIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lyi/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1456
    .end local v3           #webSearchIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1459
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "SearchView"

    const-string v5, "Could not find voice search activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1451
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1452
    iget-object v4, p0, Lyi/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Lyi/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1454
    .local v0, appSearchIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lyi/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lyi/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lyi/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 1045
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 1588
    iget-object v3, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lyi/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1589
    .local v2, oldQuery:Ljava/lang/CharSequence;
    iget-object v3, p0, Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1590
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1608
    :goto_0
    return-void

    .line 1593
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1595
    iget-object v3, p0, Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1596
    .local v1, newQuery:Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 1599
    invoke-direct {p0, v1}, Lyi/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1602
    :cond_1
    invoke-direct {p0, v2}, Lyi/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1606
    .end local v1           #newQuery:Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0, v2}, Lyi/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 1062
    if-eqz p1, :cond_1

    .line 1063
    iget-object v1, p0, Lyi/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lyi/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    iget-object v1, p0, Lyi/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lyi/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1066
    invoke-virtual {p0}, Lyi/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1069
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1070
    invoke-virtual {p0}, Lyi/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 1654
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lyi/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;Z)V

    .line 1656
    iget-object v1, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lyi/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1657
    return-void

    .line 1656
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private setShowSoftInputOnFocus(Z)V
    .locals 8
    .parameter "show"

    .prologue
    .line 877
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 878
    .local v3, stringSDK:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 879
    .local v1, sdkversion:I
    const/16 v4, 0x10

    if-ge v1, v4, :cond_0

    .line 881
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    .line 883
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/widget/TextView;>;"
    const-string v4, "setSoftInputShownOnFocus"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 885
    .local v2, setShowSoftInputOnFocus:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 886
    iget-object v4, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 901
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/widget/TextView;>;"
    .end local v2           #setShowSoftInputOnFocus:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 891
    :cond_0
    :try_start_1
    const-class v0, Landroid/widget/TextView;

    .line 893
    .restart local v0       #cls:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/widget/TextView;>;"
    const-string v4, "setShowSoftInputOnFocus"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 895
    .restart local v2       #setShowSoftInputOnFocus:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 896
    iget-object v4, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 897
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/widget/TextView;>;"
    .end local v2           #setShowSoftInputOnFocus:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 887
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1030
    iget-object v4, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Lyi/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 1033
    .local v0, hasText:Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v4, p0, Lyi/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lyi/widget/SearchView;->mExpandedInActionView:Z

    if-nez v4, :cond_3

    .line 1034
    .local v2, showClose:Z
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    iget-object v4, p0, Lyi/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1036
    invoke-virtual {p0}, Lyi/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x40a0009

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1037
    .local v1, scale:Landroid/view/animation/Animation;
    iget-object v4, p0, Lyi/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1039
    .end local v1           #scale:Landroid/view/animation/Animation;
    :cond_1
    iget-object v4, p0, Lyi/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1040
    iget-object v3, p0, Lyi/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v0, :cond_5

    sget-object v3, Lyi/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1041
    return-void

    .end local v0           #hasText:Z
    .end local v2           #showClose:Z
    :cond_2
    move v0, v3

    .line 1030
    goto :goto_0

    .restart local v0       #hasText:Z
    :cond_3
    move v2, v3

    .line 1033
    goto :goto_1

    .line 1039
    .restart local v2       #showClose:Z
    :cond_4
    const/16 v3, 0x8

    goto :goto_2

    .line 1040
    :cond_5
    sget-object v3, Lyi/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private updateFocusedState()V
    .locals 3

    .prologue
    .line 1048
    iget-object v1, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lyi/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 1049
    .local v0, focused:Z
    iget-object v1, p0, Lyi/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_0

    sget-object v1, Lyi/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1050
    iget-object v1, p0, Lyi/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_1

    sget-object v1, Lyi/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1051
    invoke-virtual {p0}, Lyi/widget/SearchView;->invalidate()V

    .line 1052
    return-void

    .line 1049
    :cond_0
    sget-object v1, Lyi/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_0

    .line 1050
    :cond_1
    sget-object v1, Lyi/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_1
.end method

.method private updateQueryHint()V
    .locals 4

    .prologue
    .line 1296
    iget-object v2, p0, Lyi/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 1297
    iget-object v2, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Lyi/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Lyi/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lyi/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1298
    :cond_1
    iget-object v2, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_3

    .line 1299
    const/4 v0, 0x0

    .line 1300
    .local v0, hint:Ljava/lang/CharSequence;
    iget-object v2, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 1301
    .local v1, hintId:I
    if-eqz v1, :cond_2

    .line 1302
    invoke-virtual {p0}, Lyi/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1304
    :cond_2
    if-eqz v0, :cond_0

    .line 1305
    iget-object v2, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-direct {p0, v0}, Lyi/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lyi/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1308
    .end local v0           #hint:Ljava/lang/CharSequence;
    .end local v1           #hintId:I
    :cond_3
    iget-object v2, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    const-string v3, ""

    invoke-direct {p0, v3}, Lyi/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lyi/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSearchAutoComplete()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1316
    iget-object v1, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lyi/widget/SearchView$SearchAutoComplete;->setDropDownAnimationStyle(I)V

    .line 1317
    iget-object v1, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {v1, v3}, Lyi/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1318
    iget-object v1, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v1, v3}, Lyi/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1319
    iget-object v1, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1322
    .local v0, inputType:I
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_0

    .line 1325
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1326
    iget-object v1, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1327
    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 1334
    const/high16 v1, 0x8

    or-int/2addr v0, v1

    .line 1337
    :cond_0
    iget-object v1, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Lyi/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1338
    iget-object v1, p0, Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v1, :cond_1

    .line 1339
    iget-object v1, p0, Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1343
    :cond_1
    iget-object v1, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1344
    new-instance v1, Lyi/widget/SuggestionsAdapter;

    invoke-virtual {p0}, Lyi/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, Lyi/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Lyi/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Lyi/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 1346
    iget-object v1, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v3}, Lyi/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1347
    iget-object v1, p0, Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v1, Lyi/widget/SuggestionsAdapter;

    iget-boolean v3, p0, Lyi/widget/SearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-virtual {v1, v2}, Lyi/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 1351
    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .prologue
    .line 1020
    const/16 v0, 0x8

    .line 1021
    .local v0, visibility:I
    invoke-direct {p0}, Lyi/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lyi/widget/SearchView;->mSubmitButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lyi/widget/SearchView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1024
    :cond_0
    const/4 v0, 0x0

    .line 1026
    :cond_1
    iget-object v1, p0, Lyi/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .parameter "hasText"

    .prologue
    .line 1011
    const/16 v0, 0x8

    .line 1012
    .local v0, visibility:I
    iget-boolean v1, p0, Lyi/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lyi/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lyi/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lyi/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_1

    .line 1014
    :cond_0
    const/4 v0, 0x0

    .line 1016
    :cond_1
    iget-object v1, p0, Lyi/widget/SearchView;->mSubmitButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1017
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 7
    .parameter "collapsed"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 970
    iput-boolean p1, p0, Lyi/widget/SearchView;->mIconified:Z

    .line 972
    if-eqz p1, :cond_1

    move v1, v2

    .line 974
    .local v1, visCollapsed:I
    :goto_0
    iget-object v5, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Lyi/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v4

    .line 977
    .local v0, hasText:Z
    :goto_1
    iget-object v5, p0, Lyi/widget/SearchView;->mSearchButton:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 978
    invoke-direct {p0, v0}, Lyi/widget/SearchView;->updateSubmitButton(Z)V

    .line 979
    iget-object v6, p0, Lyi/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_3

    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 981
    iget-object v5, p0, Lyi/widget/SearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 982
    invoke-direct {p0}, Lyi/widget/SearchView;->updateCloseButton()V

    .line 983
    if-nez v0, :cond_4

    :goto_3
    invoke-direct {p0, v4}, Lyi/widget/SearchView;->updateVoiceButton(Z)V

    .line 984
    invoke-direct {p0}, Lyi/widget/SearchView;->updateSubmitArea()V

    .line 985
    if-eqz p1, :cond_0

    .line 986
    iget-object v2, p0, Lyi/widget/SearchView;->mSearchBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 987
    :cond_0
    return-void

    .end local v0           #hasText:Z
    .end local v1           #visCollapsed:I
    :cond_1
    move v1, v3

    .line 972
    goto :goto_0

    .restart local v1       #visCollapsed:I
    :cond_2
    move v0, v2

    .line 974
    goto :goto_1

    .restart local v0       #hasText:Z
    :cond_3
    move v5, v2

    .line 979
    goto :goto_2

    :cond_4
    move v4, v2

    .line 983
    goto :goto_3
.end method

.method private updateVoiceButton(Z)V
    .locals 3
    .parameter "empty"

    .prologue
    .line 1360
    const/16 v0, 0x8

    .line 1361
    .local v0, visibility:I
    iget-boolean v1, p0, Lyi/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lyi/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1362
    const/4 v0, 0x0

    .line 1363
    iget-object v1, p0, Lyi/widget/SearchView;->mSubmitButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1365
    :cond_0
    iget-object v1, p0, Lyi/widget/SearchView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1366
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyi/widget/SearchView;->mClearingFocus:Z

    .line 483
    invoke-direct {p0, v1}, Lyi/widget/SearchView;->setImeVisibility(Z)V

    .line 484
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 485
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lyi/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 486
    iput-boolean v1, p0, Lyi/widget/SearchView;->mClearingFocus:Z

    .line 487
    return-void
.end method

.method public collapseSearchViewDown()V
    .locals 3

    .prologue
    .line 923
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    if-eqz v0, :cond_0

    .line 924
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lyi/widget/SearchView;->setImeVisibility(Z)V

    .line 925
    iget-object v0, p0, Lyi/widget/SearchView;->mHideIMM:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lyi/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 927
    :cond_0
    return-void
.end method

.method public expandSearchViewUp(Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v1, 0x1

    .line 904
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    if-eqz v0, :cond_0

    .line 905
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lyi/widget/SearchView;->setShowSoftInputOnFocus(Z)V

    .line 906
    invoke-virtual {p0, p1, v1}, Lyi/widget/SearchView;->showSearchBackIcon(Landroid/view/View$OnClickListener;Z)V

    .line 907
    invoke-static {}, Lyi/support/v1/YiLaf;->current()Lyi/support/v1/YiLaf$Interface;

    move-result-object v0

    invoke-interface {v0, v1}, Lyi/support/v1/YiLaf$Interface;->setContentViewExclusive(Z)V

    .line 908
    iget-object v0, p0, Lyi/widget/SearchView;->mShowIMM:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lyi/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 910
    :cond_0
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lyi/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lyi/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Lyi/widget/SearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lyi/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 597
    iget-object v2, p0, Lyi/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 598
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 607
    :cond_0
    :goto_0
    return-object v0

    .line 599
    :cond_1
    iget-object v2, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_2

    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, hint:Ljava/lang/CharSequence;
    iget-object v2, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 602
    .local v1, hintId:I
    if-eqz v1, :cond_0

    .line 603
    invoke-virtual {p0}, Lyi/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 607
    .end local v0           #hint:Ljava/lang/CharSequence;
    .end local v1           #hintId:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public hideSearchBackIcon(Z)V
    .locals 9
    .parameter "animation"

    .prologue
    const-wide/16 v7, 0x12c

    const/4 v6, 0x0

    .line 818
    if-eqz p1, :cond_0

    .line 819
    invoke-virtual {p0}, Lyi/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x40a0008

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 821
    .local v0, mOutAnimationFuture:Landroid/view/animation/Animation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 822
    iget-object v2, p0, Lyi/widget/SearchView;->mSearchBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 823
    iget-object v2, p0, Lyi/widget/SearchView;->mSearchPlate:Landroid/view/View;

    const-string v3, "left"

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, p0, Lyi/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 825
    .local v1, scaleAnim1:Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 826
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 827
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 828
    new-instance v2, Lyi/widget/SearchView$8;

    invoke-direct {v2, p0}, Lyi/widget/SearchView$8;-><init>(Lyi/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 837
    new-instance v2, Lyi/widget/SearchView$9;

    invoke-direct {v2, p0}, Lyi/widget/SearchView$9;-><init>(Lyi/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 867
    .end local v0           #mOutAnimationFuture:Landroid/view/animation/Animation;
    .end local v1           #scaleAnim1:Landroid/animation/ObjectAnimator;
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-object v2, p0, Lyi/widget/SearchView;->mSearchBackIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lyi/widget/SearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lyi/widget/SearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .prologue
    .line 716
    iget-boolean v0, p0, Lyi/widget/SearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lyi/widget/SearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public isViewFadeOut()V
    .locals 1

    .prologue
    .line 2018
    iget-object v0, p0, Lyi/widget/SearchView;->mOnViewFadeOutListener:Lyi/widget/SearchView$OnViewFadeOutListener;

    if-eqz v0, :cond_0

    .line 2019
    iget-object v0, p0, Lyi/widget/SearchView;->mOnViewFadeOutListener:Lyi/widget/SearchView$OnViewFadeOutListener;

    invoke-interface {v0}, Lyi/widget/SearchView$OnViewFadeOutListener;->onViewFadeOut()Z

    .line 2020
    :cond_0
    return-void
.end method

.method public onActionViewCollapsed()V
    .locals 2

    .prologue
    .line 1485
    invoke-virtual {p0}, Lyi/widget/SearchView;->clearFocus()V

    .line 1486
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lyi/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1487
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Lyi/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Lyi/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyi/widget/SearchView;->mExpandedInActionView:Z

    .line 1489
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .prologue
    .line 1496
    iget-boolean v0, p0, Lyi/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    .line 1503
    :goto_0
    return-void

    .line 1498
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyi/widget/SearchView;->mExpandedInActionView:Z

    .line 1499
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lyi/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Lyi/widget/SearchView;->mCollapsedImeOptions:I

    .line 1500
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Lyi/widget/SearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x200

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lyi/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1501
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lyi/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1502
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyi/widget/SearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lyi/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lyi/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1057
    iget-object v0, p0, Lyi/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lyi/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 1058
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1059
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1507
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1508
    const-class v0, Lyi/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1509
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1513
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1514
    const-class v0, Lyi/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1515
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1113
    iget-object v1, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v1, :cond_0

    .line 1114
    const/4 v1, 0x0

    .line 1126
    :goto_0
    return v1

    .line 1119
    :cond_0
    iget-object v1, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1, p1}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1120
    .local v0, actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1121
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Lyi/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lyi/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1123
    const/4 v1, 0x1

    goto :goto_0

    .line 1126
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 932
    invoke-virtual {p0}, Lyi/widget/SearchView;->isIconified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 933
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 962
    :goto_0
    return-void

    .line 937
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 938
    .local v1, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 940
    .local v0, width:I
    sparse-switch v1, :sswitch_data_0

    .line 960
    :cond_1
    :goto_1
    const/high16 v1, 0x4000

    .line 961
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 943
    :sswitch_0
    iget v2, p0, Lyi/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_2

    .line 944
    iget v2, p0, Lyi/widget/SearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 946
    :cond_2
    invoke-direct {p0}, Lyi/widget/SearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 948
    goto :goto_1

    .line 951
    :sswitch_1
    iget v2, p0, Lyi/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_1

    .line 952
    iget v2, p0, Lyi/widget/SearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 957
    :sswitch_2
    iget v2, p0, Lyi/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_3

    iget v0, p0, Lyi/widget/SearchView;->mMaxWidth:I

    :goto_2
    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lyi/widget/SearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_2

    .line 940
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "queryText"

    .prologue
    .line 1080
    invoke-direct {p0, p1}, Lyi/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1081
    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    .prologue
    .line 1464
    invoke-virtual {p0}, Lyi/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lyi/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1467
    invoke-direct {p0}, Lyi/widget/SearchView;->postUpdateFocusedState()V

    .line 1468
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lyi/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1469
    invoke-direct {p0}, Lyi/widget/SearchView;->forceSuggestionQuery()V

    .line 1471
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 1475
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 1477
    invoke-direct {p0}, Lyi/widget/SearchView;->postUpdateFocusedState()V

    .line 1478
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 464
    iget-boolean v2, p0, Lyi/widget/SearchView;->mClearingFocus:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 475
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    invoke-virtual {p0}, Lyi/widget/SearchView;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 468
    :cond_2
    invoke-virtual {p0}, Lyi/widget/SearchView;->isIconified()Z

    move-result v2

    if-nez v2, :cond_3

    .line 469
    iget-object v2, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, p1, p2}, Lyi/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 470
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 471
    invoke-direct {p0, v1}, Lyi/widget/SearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .line 475
    .end local v0           #result:Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .parameter "appSearchData"

    .prologue
    .line 412
    iput-object p1, p0, Lyi/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 413
    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .parameter "iconify"

    .prologue
    .line 650
    if-eqz p1, :cond_0

    .line 651
    invoke-direct {p0}, Lyi/widget/SearchView;->onCloseClicked()V

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-direct {p0}, Lyi/widget/SearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .parameter "iconified"

    .prologue
    .line 623
    iget-boolean v0, p0, Lyi/widget/SearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    .line 627
    :goto_0
    return-void

    .line 624
    :cond_0
    iput-boolean p1, p0, Lyi/widget/SearchView;->mIconifiedByDefault:Z

    .line 625
    invoke-direct {p0, p1}, Lyi/widget/SearchView;->updateViewsVisibility(Z)V

    .line 626
    invoke-direct {p0}, Lyi/widget/SearchView;->updateQueryHint()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1
    .parameter "imeOptions"

    .prologue
    .line 424
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lyi/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 425
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .parameter "inputType"

    .prologue
    .line 447
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lyi/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 448
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter "maxpixels"

    .prologue
    .line 745
    iput p1, p0, Lyi/widget/SearchView;->mMaxWidth:I

    .line 747
    invoke-virtual {p0}, Lyi/widget/SearchView;->requestLayout()V

    .line 748
    return-void
.end method

.method public setOnCloseListener(Lyi/widget/SearchView$OnCloseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 514
    iput-object p1, p0, Lyi/widget/SearchView;->mOnCloseListener:Lyi/widget/SearchView$OnCloseListener;

    .line 515
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 523
    iput-object p1, p0, Lyi/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 524
    return-void
.end method

.method public setOnQueryTextListener(Lyi/widget/SearchView$OnQueryTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 496
    iput-object p1, p0, Lyi/widget/SearchView;->mOnQueryChangeListener:Lyi/widget/SearchView$OnQueryTextListener;

    .line 497
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 544
    iput-object p1, p0, Lyi/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 545
    return-void
.end method

.method public setOnSuggestionListener(Lyi/widget/SearchView$OnSuggestionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 532
    iput-object p1, p0, Lyi/widget/SearchView;->mOnSuggestionListener:Lyi/widget/SearchView$OnSuggestionListener;

    .line 533
    return-void
.end method

.method public setOnViewFadeOutListener(Lyi/widget/SearchView$OnViewFadeOutListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 505
    iput-object p1, p0, Lyi/widget/SearchView;->mOnViewFadeOutListener:Lyi/widget/SearchView$OnViewFadeOutListener;

    .line 506
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "query"
    .parameter "submit"

    .prologue
    .line 565
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lyi/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 566
    if-eqz p1, :cond_0

    .line 567
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lyi/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lyi/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 568
    iput-object p1, p0, Lyi/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 572
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    invoke-direct {p0}, Lyi/widget/SearchView;->onSubmitQuery()V

    .line 575
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 586
    iput-object p1, p0, Lyi/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 587
    invoke-direct {p0}, Lyi/widget/SearchView;->updateQueryHint()V

    .line 588
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 704
    iput-boolean p1, p0, Lyi/widget/SearchView;->mQueryRefinement:Z

    .line 705
    iget-object v0, p0, Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    instance-of v0, v0, Lyi/widget/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v0, Lyi/widget/SuggestionsAdapter;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lyi/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 709
    :cond_0
    return-void

    .line 706
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2
    .parameter "searchable"

    .prologue
    .line 390
    iput-object p1, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 391
    iget-object v0, p0, Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_0

    .line 392
    invoke-direct {p0}, Lyi/widget/SearchView;->updateSearchAutoComplete()V

    .line 393
    invoke-direct {p0}, Lyi/widget/SearchView;->updateQueryHint()V

    .line 396
    :cond_0
    invoke-direct {p0}, Lyi/widget/SearchView;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Lyi/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 398
    iget-boolean v0, p0, Lyi/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Lyi/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 403
    :cond_1
    invoke-virtual {p0}, Lyi/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lyi/widget/SearchView;->updateViewsVisibility(Z)V

    .line 404
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 676
    iput-boolean p1, p0, Lyi/widget/SearchView;->mSubmitButtonEnabled:Z

    .line 677
    invoke-virtual {p0}, Lyi/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lyi/widget/SearchView;->updateViewsVisibility(Z)V

    .line 678
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 726
    iput-object p1, p0, Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 728
    iget-object v0, p0, Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Lyi/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 729
    return-void
.end method

.method public showSearchBackIcon(Landroid/view/View$OnClickListener;Z)V
    .locals 10
    .parameter "listener"
    .parameter "animation"

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v6, 0x0

    .line 763
    if-eqz p2, :cond_1

    .line 765
    invoke-virtual {p0}, Lyi/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x40a0007

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 767
    .local v0, mInAnimationFuture:Landroid/view/animation/Animation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 768
    new-instance v2, Lyi/widget/SearchView$6;

    invoke-direct {v2, p0}, Lyi/widget/SearchView$6;-><init>(Lyi/widget/SearchView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 787
    iget-object v2, p0, Lyi/widget/SearchView;->mSearchBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    .line 788
    iget-object v2, p0, Lyi/widget/SearchView;->mSearchBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 790
    :cond_0
    iget-object v2, p0, Lyi/widget/SearchView;->mSearchBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 793
    iget-object v2, p0, Lyi/widget/SearchView;->mSearchPlate:Landroid/view/View;

    const-string v3, "left"

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, p0, Lyi/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    aput v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, p0, Lyi/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Lyi/widget/SearchView;->mSearchBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 795
    .local v1, scaleAnim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 796
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 797
    new-instance v2, Lyi/widget/SearchView$7;

    invoke-direct {v2, p0}, Lyi/widget/SearchView$7;-><init>(Lyi/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 807
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 811
    .end local v0           #mInAnimationFuture:Landroid/view/animation/Animation;
    .end local v1           #scaleAnim:Landroid/animation/ObjectAnimator;
    :goto_0
    if-eqz p1, :cond_2

    .line 812
    iget-object v2, p0, Lyi/widget/SearchView;->mSearchBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    :goto_1
    return-void

    .line 809
    :cond_1
    iget-object v2, p0, Lyi/widget/SearchView;->mSearchBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 814
    :cond_2
    iget-object v2, p0, Lyi/widget/SearchView;->mSearchBackIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lyi/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
