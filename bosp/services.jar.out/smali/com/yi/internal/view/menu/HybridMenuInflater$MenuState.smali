.class Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "HybridMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yi/internal/view/menu/HybridMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field private itemActionProvider:Landroid/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Lcom/yi/internal/view/menu/HybridMenuInflater;


# direct methods
.method public constructor <init>(Lcom/yi/internal/view/menu/HybridMenuInflater;Landroid/view/Menu;)V
    .locals 0
    .parameter
    .parameter "menu"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->this$0:Lcom/yi/internal/view/menu/HybridMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p2, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 313
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->resetGroup()V

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;)Landroid/view/ActionProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    return-object v0
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 1
    .parameter "shortcutString"

    .prologue
    const/4 v0, 0x0

    .line 397
    if-nez p1, :cond_0

    .line 400
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "className"
    .parameter
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 475
    .local p2, constructorSignature:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->this$0:Lcom/yi/internal/view/menu/HybridMenuInflater;

    #getter for: Lcom/yi/internal/view/menu/HybridMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/yi/internal/view/menu/HybridMenuInflater;->access$100(Lcom/yi/internal/view/menu/HybridMenuInflater;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 476
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 477
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 481
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v3

    .line 478
    :catch_0
    move-exception v2

    .line 479
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "MenuInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot instantiate class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 405
    iget-boolean v3, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemVisible:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemEnabled:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    iget v3, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemCheckable:I

    if-lt v3, v4, :cond_1

    move v3, v4

    :goto_0
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v5, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    iget v5, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemIconResId:I

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-char v5, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemAlphabeticShortcut:C

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    iget-char v5, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemNumericShortcut:C

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 414
    iget v3, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v3, :cond_0

    .line 415
    iget v3, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemShowAsAction:I

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 418
    :cond_0
    iget-object v3, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 419
    iget-object v3, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->this$0:Lcom/yi/internal/view/menu/HybridMenuInflater;

    #getter for: Lcom/yi/internal/view/menu/HybridMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/yi/internal/view/menu/HybridMenuInflater;->access$100(Lcom/yi/internal/view/menu/HybridMenuInflater;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 405
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 423
    :cond_2
    new-instance v3, Lcom/yi/internal/view/menu/HybridMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v5, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->this$0:Lcom/yi/internal/view/menu/HybridMenuInflater;

    #getter for: Lcom/yi/internal/view/menu/HybridMenuInflater;->mRealOwner:Ljava/lang/Object;
    invoke-static {v5}, Lcom/yi/internal/view/menu/HybridMenuInflater;->access$400(Lcom/yi/internal/view/menu/HybridMenuInflater;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/yi/internal/view/menu/HybridMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 427
    :cond_3
    instance-of v3, p1, Lcom/yi/internal/view/menu/MenuItemImpl;

    if-eqz v3, :cond_4

    move-object v2, p1

    .line 428
    check-cast v2, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 429
    .local v2, impl:Lcom/yi/internal/view/menu/MenuItemImpl;
    iget v3, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemCheckable:I

    const/4 v5, 0x2

    if-lt v3, v5, :cond_4

    .line 430
    invoke-virtual {v2, v4}, Lcom/yi/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 434
    .end local v2           #impl:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_4
    const/4 v1, 0x0

    .line 435
    .local v1, actionViewSpecified:Z
    iget-object v3, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 436
    iget-object v3, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    invoke-static {}, Lcom/yi/internal/view/menu/HybridMenuInflater;->access$500()[Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->this$0:Lcom/yi/internal/view/menu/HybridMenuInflater;

    #getter for: Lcom/yi/internal/view/menu/HybridMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;
    invoke-static {v5}, Lcom/yi/internal/view/menu/HybridMenuInflater;->access$600(Lcom/yi/internal/view/menu/HybridMenuInflater;)[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 438
    .local v0, actionView:Landroid/view/View;
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 439
    const/4 v1, 0x1

    .line 441
    .end local v0           #actionView:Landroid/view/View;
    :cond_5
    iget v3, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v3, :cond_6

    .line 442
    if-nez v1, :cond_8

    .line 443
    iget v3, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemActionViewLayout:I

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 444
    const/4 v1, 0x1

    .line 450
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    if-eqz v3, :cond_7

    .line 451
    iget-object v3, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 453
    :cond_7
    return-void

    .line 446
    :cond_8
    const-string v3, "MenuInflater"

    const-string v4, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addItem()V
    .locals 5

    .prologue
    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemAdded:Z

    .line 457
    iget-object v0, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupId:I

    iget v2, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemId:I

    iget v3, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 458
    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 6

    .prologue
    .line 461
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemAdded:Z

    .line 462
    iget-object v1, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v2, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupId:I

    iget v3, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemId:I

    iget v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v5, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 463
    .local v0, subMenu:Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 464
    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 329
    iget-object v1, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->this$0:Lcom/yi/internal/view/menu/HybridMenuInflater;

    #getter for: Lcom/yi/internal/view/menu/HybridMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/yi/internal/view/menu/HybridMenuInflater;->access$100(Lcom/yi/internal/view/menu/HybridMenuInflater;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->MenuGroup:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 332
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupId:I

    .line 333
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupCategory:I

    .line 334
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupOrder:I

    .line 335
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupCheckable:I

    .line 336
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupVisible:Z

    .line 337
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupEnabled:Z

    .line 339
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 340
    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "attrs"

    .prologue
    const/16 v8, 0xb

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 346
    iget-object v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->this$0:Lcom/yi/internal/view/menu/HybridMenuInflater;

    #getter for: Lcom/yi/internal/view/menu/HybridMenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/yi/internal/view/menu/HybridMenuInflater;->access$100(Lcom/yi/internal/view/menu/HybridMenuInflater;)Landroid/content/Context;

    move-result-object v4

    sget-object v7, Lcom/android/internal/R$styleable;->MenuItem:[I

    invoke-virtual {v4, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 350
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemId:I

    .line 351
    const/4 v4, 0x5

    iget v7, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 352
    .local v1, category:I
    const/4 v4, 0x6

    iget v7, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 353
    .local v3, order:I
    const/high16 v4, -0x1

    and-int/2addr v4, v1

    const v7, 0xffff

    and-int/2addr v7, v3

    or-int/2addr v4, v7

    iput v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemCategoryOrder:I

    .line 354
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 355
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 356
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemIconResId:I

    .line 357
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 359
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemNumericShortcut:C

    .line 361
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 363
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemCheckable:I

    .line 369
    :goto_1
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemChecked:Z

    .line 370
    const/4 v4, 0x4

    iget-boolean v7, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemVisible:Z

    .line 371
    iget-boolean v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemEnabled:Z

    .line 372
    const/16 v4, 0xd

    const/4 v7, -0x1

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemShowAsAction:I

    .line 373
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 374
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemActionViewLayout:I

    .line 375
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 376
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 378
    iget-object v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v4, :cond_2

    move v2, v5

    .line 379
    .local v2, hasActionProvider:Z
    :goto_2
    if-eqz v2, :cond_3

    iget v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 380
    iget-object v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    invoke-static {}, Lcom/yi/internal/view/menu/HybridMenuInflater;->access$200()[Ljava/lang/Class;

    move-result-object v5

    iget-object v7, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->this$0:Lcom/yi/internal/view/menu/HybridMenuInflater;

    #getter for: Lcom/yi/internal/view/menu/HybridMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;
    invoke-static {v7}, Lcom/yi/internal/view/menu/HybridMenuInflater;->access$300(Lcom/yi/internal/view/menu/HybridMenuInflater;)[Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v4, v5, v7}, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ActionProvider;

    iput-object v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    .line 391
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 393
    iput-boolean v6, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemAdded:Z

    .line 394
    return-void

    .end local v2           #hasActionProvider:Z
    :cond_0
    move v4, v6

    .line 363
    goto :goto_0

    .line 367
    :cond_1
    iget v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupCheckable:I

    iput v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemCheckable:I

    goto :goto_1

    :cond_2
    move v2, v6

    .line 378
    goto :goto_2

    .line 384
    .restart local v2       #hasActionProvider:Z
    :cond_3
    if-eqz v2, :cond_4

    .line 385
    const-string v4, "MenuInflater"

    const-string v5, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    goto :goto_3
.end method

.method public resetGroup()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 317
    iput v0, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupId:I

    .line 318
    iput v0, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupCategory:I

    .line 319
    iput v0, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupOrder:I

    .line 320
    iput v0, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupCheckable:I

    .line 321
    iput-boolean v1, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupVisible:Z

    .line 322
    iput-boolean v1, p0, Lcom/yi/internal/view/menu/HybridMenuInflater$MenuState;->groupEnabled:Z

    .line 323
    return-void
.end method
