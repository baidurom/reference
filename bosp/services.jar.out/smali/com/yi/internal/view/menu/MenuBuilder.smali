.class public Lcom/yi/internal/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yi/internal/view/menu/MenuBuilder$ItemInvoker;,
        Lcom/yi/internal/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final MAX_ACTION_BUTTON_NUM:I = 0x3

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yi/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/yi/internal/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yi/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yi/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yi/internal/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yi/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yi/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yi/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 145
    iput-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 146
    iput-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 148
    iput-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 150
    iput-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 190
    iput-object p1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 196
    iput-boolean v1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 200
    iput-boolean v1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 202
    invoke-direct {p0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 203
    return-void
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 398
    invoke-static {p3}, Lcom/yi/internal/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v5

    .line 400
    .local v5, ordering:I
    new-instance v0, Lcom/yi/internal/view/menu/MenuItemImpl;

    iget v7, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/yi/internal/view/menu/MenuItemImpl;-><init>(Lcom/yi/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 403
    .local v0, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    iget-object v1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/yi/internal/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 409
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 411
    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .parameter "cleared"

    .prologue
    .line 239
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 242
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 243
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/yi/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yi/internal/view/menu/MenuPresenter;

    .line 244
    .local v1, presenter:Lcom/yi/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_1

    .line 245
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    :cond_1
    invoke-interface {v1, p1}, Lcom/yi/internal/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_1

    .line 250
    .end local v1           #presenter:Lcom/yi/internal/view/menu/MenuPresenter;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/yi/internal/view/menu/MenuPresenter;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "state"

    .prologue
    .line 293
    const-string v6, "android:menu:presenters"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 295
    .local v4, presenterStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 311
    :cond_0
    return-void

    .line 297
    :cond_1
    iget-object v6, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 298
    .local v5, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/yi/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yi/internal/view/menu/MenuPresenter;

    .line 299
    .local v3, presenter:Lcom/yi/internal/view/menu/MenuPresenter;
    if-nez v3, :cond_3

    .line 300
    iget-object v6, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_3
    invoke-interface {v3}, Lcom/yi/internal/view/menu/MenuPresenter;->getId()I

    move-result v1

    .line 303
    .local v1, id:I
    if-lez v1, :cond_2

    .line 304
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 305
    .local v2, parcel:Landroid/os/Parcelable;
    if-eqz v2, :cond_2

    .line 306
    invoke-interface {v3, v2}, Lcom/yi/internal/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "outState"

    .prologue
    .line 270
    iget-object v6, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 290
    :goto_0
    return-void

    .line 272
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 274
    .local v3, presenterStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v6, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 275
    .local v4, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/yi/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yi/internal/view/menu/MenuPresenter;

    .line 276
    .local v2, presenter:Lcom/yi/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_2

    .line 277
    iget-object v6, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 279
    :cond_2
    invoke-interface {v2}, Lcom/yi/internal/view/menu/MenuPresenter;->getId()I

    move-result v1

    .line 280
    .local v1, id:I
    if-lez v1, :cond_1

    .line 281
    invoke-interface {v2}, Lcom/yi/internal/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 282
    .local v5, state:Landroid/os/Parcelable;
    if-eqz v5, :cond_1

    .line 283
    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 289
    .end local v1           #id:I
    .end local v2           #presenter:Lcom/yi/internal/view/menu/MenuPresenter;
    .end local v4           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/yi/internal/view/menu/MenuPresenter;>;"
    .end local v5           #state:Landroid/os/Parcelable;
    :cond_3
    const-string v6, "android:menu:presenters"

    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method private dispatchSubMenuSelected(Lcom/yi/internal/view/menu/SubMenuBuilder;)Z
    .locals 5
    .parameter "subMenu"

    .prologue
    .line 254
    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .line 266
    :cond_0
    return v3

    .line 256
    :cond_1
    const/4 v3, 0x0

    .line 258
    .local v3, result:Z
    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 259
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/yi/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yi/internal/view/menu/MenuPresenter;

    .line 260
    .local v1, presenter:Lcom/yi/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_3

    .line 261
    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_3
    if-nez v3, :cond_2

    .line 263
    invoke-interface {v1, p1}, Lcom/yi/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lcom/yi/internal/view/menu/SubMenuBuilder;)Z

    move-result v3

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .parameter
    .parameter "ordering"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yi/internal/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 759
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/yi/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 760
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 761
    .local v1, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 762
    add-int/lit8 v2, v0, 0x1

    .line 766
    .end local v1           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :goto_1
    return v2

    .line 759
    .restart local v1       #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 766
    .end local v1           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getOrdering(I)I
    .locals 3
    .parameter "categoryOrder"

    .prologue
    .line 692
    const/high16 v1, -0x1

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 694
    .local v0, index:I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/yi/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 695
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 698
    :cond_1
    sget-object v1, Lcom/yi/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .parameter "index"
    .parameter "updateChildrenOnMenuViews"

    .prologue
    .line 510
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 514
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .parameter "titleRes"
    .parameter "title"
    .parameter "iconRes"
    .parameter "icon"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 1106
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1108
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 1109
    iput-object p5, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1112
    iput-object v2, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1113
    iput-object v2, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1132
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1133
    return-void

    .line 1115
    :cond_0
    if-lez p1, :cond_3

    .line 1116
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1121
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 1122
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1128
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 1117
    :cond_3
    if-eqz p2, :cond_1

    .line 1118
    iput-object p2, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1123
    :cond_4
    if-eqz p4, :cond_2

    .line 1124
    iput-object p4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 3
    .parameter "shortcutsVisible"

    .prologue
    const/4 v0, 0x1

    .line 724
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    const v2, #bool@config_showMenuShortcutsWhenKeyboardPresent#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 728
    return-void

    .line 724
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 423
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yi/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 415
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 13
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .parameter "outSpecificItems"

    .prologue
    .line 452
    iget-object v10, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 453
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 455
    .local v6, lri:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 457
    .local v3, N:I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    .line 458
    invoke-virtual {p0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->removeGroup(I)V

    .line 461
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 462
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 463
    .local v8, ri:Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_3

    move-object/from16 v10, p6

    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 465
    .local v9, rintent:Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 468
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/yi/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    .line 471
    .local v5, item:Landroid/view/MenuItem;
    if-eqz p8, :cond_1

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_1

    .line 472
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    .line 461
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 455
    .end local v3           #N:I
    .end local v4           #i:I
    .end local v5           #item:Landroid/view/MenuItem;
    .end local v8           #ri:Landroid/content/pm/ResolveInfo;
    .end local v9           #rintent:Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 463
    .restart local v3       #N:I
    .restart local v4       #i:I
    .restart local v8       #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2

    .line 476
    .end local v8           #ri:Landroid/content/pm/ResolveInfo;
    :cond_4
    return v3
.end method

.method public addMenuPresenter(Lcom/yi/internal/view/menu/MenuPresenter;)V
    .locals 2
    .parameter "presenter"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/yi/internal/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lcom/yi/internal/view/menu/MenuBuilder;)V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 221
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    .line 435
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 439
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yi/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 440
    .local v0, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    new-instance v1, Lcom/yi/internal/view/menu/SubMenuBuilder;

    iget-object v2, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/yi/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/yi/internal/view/menu/MenuBuilder;Lcom/yi/internal/view/menu/MenuItemImpl;)V

    .line 441
    .local v1, subMenu:Lcom/yi/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->setSubMenu(Lcom/yi/internal/view/menu/SubMenuBuilder;)V

    .line 443
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 431
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public changeMenuMode()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mCallback:Lcom/yi/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mCallback:Lcom/yi/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p0}, Lcom/yi/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/yi/internal/view/menu/MenuBuilder;)V

    .line 756
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/yi/internal/view/menu/MenuItemImpl;)Z

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 536
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 537
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 522
    iput-boolean v1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 523
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->clear()V

    .line 524
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->clearHeader()V

    .line 525
    iput-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 526
    iput-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 527
    invoke-virtual {p0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 528
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1097
    iput-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1098
    iput-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1099
    iput-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1102
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->close(Z)V

    .line 941
    return-void
.end method

.method final close(Z)V
    .locals 4
    .parameter "allMenusAreClosing"

    .prologue
    .line 924
    iget-boolean v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v3, :cond_0

    .line 936
    :goto_0
    return-void

    .line 926
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 927
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 928
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/yi/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yi/internal/view/menu/MenuPresenter;

    .line 929
    .local v1, presenter:Lcom/yi/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_1

    .line 930
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 932
    :cond_1
    invoke-interface {v1, p0, p1}, Lcom/yi/internal/view/menu/MenuPresenter;->onCloseMenu(Lcom/yi/internal/view/menu/MenuBuilder;Z)V

    goto :goto_1

    .line 935
    .end local v1           #presenter:Lcom/yi/internal/view/menu/MenuPresenter;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/yi/internal/view/menu/MenuPresenter;>;"
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mIsClosing:Z

    goto :goto_0
.end method

.method public collapseItemActionView(Lcom/yi/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 1257
    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    if-eq v4, p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1275
    :cond_1
    :goto_0
    return v0

    .line 1259
    :cond_2
    const/4 v0, 0x0

    .line 1261
    .local v0, collapsed:Z
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1262
    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1263
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/yi/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yi/internal/view/menu/MenuPresenter;

    .line 1264
    .local v2, presenter:Lcom/yi/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_4

    .line 1265
    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1266
    :cond_4
    invoke-interface {v2, p0, p1}, Lcom/yi/internal/view/menu/MenuPresenter;->collapseItemActionView(Lcom/yi/internal/view/menu/MenuBuilder;Lcom/yi/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1270
    .end local v2           #presenter:Lcom/yi/internal/view/menu/MenuPresenter;
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/yi/internal/view/menu/MenuPresenter;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1272
    if-eqz v0, :cond_1

    .line 1273
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method dispatchMenuItemSelected(Lcom/yi/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 746
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mCallback:Lcom/yi/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mCallback:Lcom/yi/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Lcom/yi/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/yi/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/yi/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 1235
    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 1253
    :cond_0
    :goto_0
    return v0

    .line 1237
    :cond_1
    const/4 v0, 0x0

    .line 1239
    .local v0, expanded:Z
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1240
    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1241
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/yi/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yi/internal/view/menu/MenuPresenter;

    .line 1242
    .local v2, presenter:Lcom/yi/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_3

    .line 1243
    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1244
    :cond_3
    invoke-interface {v2, p0, p1}, Lcom/yi/internal/view/menu/MenuPresenter;->expandItemActionView(Lcom/yi/internal/view/menu/MenuBuilder;Lcom/yi/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1248
    .end local v2           #presenter:Lcom/yi/internal/view/menu/MenuPresenter;
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/yi/internal/view/menu/MenuPresenter;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1250
    if-eqz v0, :cond_0

    .line 1251
    iput-object p1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public findGroupIndex(I)I
    .locals 1
    .parameter "group"

    .prologue
    .line 640
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .parameter "group"
    .parameter "start"

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 646
    .local v2, size:I
    if-gez p2, :cond_0

    .line 647
    const/4 p2, 0x0

    .line 650
    :cond_0
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 651
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 653
    .local v1, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 658
    .end local v0           #i:I
    .end local v1           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :goto_1
    return v0

    .line 650
    .restart local v0       #i:I
    .restart local v1       #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 658
    .end local v1           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5
    .parameter "id"

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 610
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 611
    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 612
    .local v1, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 623
    .end local v1           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :goto_1
    return-object v1

    .line 614
    .restart local v1       #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_0
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 615
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 617
    .local v2, possibleItem:Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 618
    goto :goto_1

    .line 610
    .end local v2           #possibleItem:Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    .end local v1           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 4
    .parameter "id"

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 629
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 630
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 631
    .local v1, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 636
    .end local v0           #i:I
    .end local v1           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :goto_1
    return v0

    .line 629
    .restart local v0       #i:I
    .restart local v1       #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 636
    .end local v1           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/yi/internal/view/menu/MenuItemImpl;
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 835
    iget-object v2, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 836
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/yi/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 837
    invoke-virtual {p0, v2, p1, p2}, Lcom/yi/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 839
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-object v8

    .line 843
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 844
    .local v3, metaState:I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 846
    .local v4, possibleChars:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 849
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 850
    .local v7, size:I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    .line 851
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yi/internal/view/menu/MenuItemImpl;

    goto :goto_0

    .line 854
    :cond_2
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 857
    .local v5, qwerty:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v7, :cond_0

    .line 858
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 859
    .local v1, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    .line 861
    .local v6, shortcutChar:C
    :goto_2
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v11

    if-ne v6, v9, :cond_3

    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_5

    :cond_3
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v6, v9, :cond_4

    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v5, :cond_7

    const/16 v9, 0x8

    if-ne v6, v9, :cond_7

    const/16 v9, 0x43

    if-ne p1, v9, :cond_7

    :cond_5
    move-object v8, v1

    .line 867
    goto :goto_0

    .line 859
    .end local v6           #shortcutChar:C
    :cond_6
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    goto :goto_2

    .line 857
    .restart local v6       #shortcutChar:C
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 11
    .parameter
    .parameter "keyCode"
    .parameter "event"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yi/internal/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/yi/internal/view/menu/MenuItemImpl;>;"
    const/16 v10, 0x43

    .line 792
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v6

    .line 793
    .local v6, qwerty:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 794
    .local v4, metaState:I
    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 796
    .local v5, possibleChars:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    .line 798
    .local v2, isKeyCodeMapped:Z
    if-nez v2, :cond_1

    if-eq p2, v10, :cond_1

    .line 820
    :cond_0
    return-void

    .line 803
    :cond_1
    iget-object v8, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 804
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 805
    iget-object v8, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 806
    .local v3, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/yi/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 807
    invoke-virtual {v3}, Lcom/yi/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v8, p1, p2, p3}, Lcom/yi/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 809
    :cond_2
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/yi/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    .line 810
    .local v7, shortcutChar:C
    :goto_1
    and-int/lit8 v8, v4, 0x5

    if-nez v8, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    if-eqz v6, :cond_4

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    if-ne p2, v10, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/yi/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 817
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 809
    .end local v7           #shortcutChar:C
    :cond_5
    invoke-virtual {v3}, Lcom/yi/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v7

    goto :goto_1
.end method

.method public flagActionItems()V
    .locals 10

    .prologue
    .line 1048
    iget-boolean v8, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v8, :cond_0

    .line 1084
    :goto_0
    return-void

    .line 1053
    :cond_0
    const/4 v0, 0x0

    .line 1054
    .local v0, flagged:Z
    iget-object v8, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 1055
    .local v6, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/yi/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yi/internal/view/menu/MenuPresenter;

    .line 1056
    .local v5, presenter:Lcom/yi/internal/view/menu/MenuPresenter;
    if-nez v5, :cond_1

    .line 1057
    iget-object v8, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1059
    :cond_1
    invoke-interface {v5}, Lcom/yi/internal/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v8

    or-int/2addr v0, v8

    goto :goto_1

    .line 1063
    .end local v5           #presenter:Lcom/yi/internal/view/menu/MenuPresenter;
    .end local v6           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/yi/internal/view/menu/MenuPresenter;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 1064
    iget-object v8, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1065
    iget-object v8, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1066
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 1067
    .local v7, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/yi/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1068
    .local v4, itemsSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v4, :cond_5

    .line 1069
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 1070
    .local v3, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/yi/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x3

    if-ge v8, v9, :cond_3

    .line 1071
    iget-object v8, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1068
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1073
    :cond_3
    iget-object v8, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1079
    .end local v1           #i:I
    .end local v3           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    .end local v4           #itemsSize:I
    .end local v7           #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/yi/internal/view/menu/MenuItemImpl;>;"
    :cond_4
    iget-object v8, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1080
    iget-object v8, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1081
    iget-object v8, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1083
    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    goto :goto_0
.end method

.method getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yi/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1087
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1088
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getCallback()Lcom/yi/internal/view/menu/MenuBuilder$Callback;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mCallback:Lcom/yi/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lcom/yi/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yi/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1093
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .prologue
    .line 1231
    iget-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/yi/internal/view/menu/MenuBuilder;
    .locals 0

    .prologue
    .line 1212
    return-object p0
.end method

.method getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yi/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1005
    iget-boolean v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 1020
    :goto_0
    return-object v3

    .line 1008
    :cond_0
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1010
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1012
    .local v2, itemsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1013
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 1014
    .local v1, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1017
    .end local v1           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1018
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1020
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 598
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 599
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 600
    .local v1, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 601
    const/4 v3, 0x1

    .line 605
    .end local v1           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :goto_1
    return v3

    .line 598
    .restart local v1       #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    .end local v1           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method isQwertyMode()Z
    .locals 1

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 671
    invoke-virtual {p0, p1, p2}, Lcom/yi/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/yi/internal/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Lcom/yi/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1000
    iput-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1001
    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1002
    return-void
.end method

.method onItemVisibleChanged(Lcom/yi/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 990
    iput-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 991
    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 992
    return-void
.end method

.method onItemsChanged(Z)V
    .locals 2
    .parameter "structureChanged"

    .prologue
    const/4 v1, 0x1

    .line 951
    iget-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_1

    .line 952
    if-eqz p1, :cond_0

    .line 953
    iput-boolean v1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 954
    iput-boolean v1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 957
    :cond_0
    invoke-direct {p0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 961
    :goto_0
    return-void

    .line 959
    :cond_1
    iput-boolean v1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 875
    invoke-virtual {p0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/yi/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 8
    .parameter "item"
    .parameter "flags"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 879
    move-object v1, p1

    check-cast v1, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 881
    .local v1, itemImpl:Lcom/yi/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v0, v6

    .line 911
    :cond_1
    :goto_0
    return v0

    .line 885
    :cond_2
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->invoke()Z

    move-result v0

    .line 887
    .local v0, invoked:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    .line 888
    .local v2, provider:Landroid/view/ActionProvider;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v5

    .line 889
    .local v3, providerHasSubMenu:Z
    :goto_1
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 890
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->expandActionView()Z

    move-result v6

    or-int/2addr v0, v6

    .line 891
    if-eqz v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/yi/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .end local v3           #providerHasSubMenu:Z
    :cond_3
    move v3, v6

    .line 888
    goto :goto_1

    .line 892
    .restart local v3       #providerHasSubMenu:Z
    :cond_4
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v3, :cond_8

    .line 893
    :cond_5
    invoke-virtual {p0, v6}, Lcom/yi/internal/view/menu/MenuBuilder;->close(Z)V

    .line 895
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-nez v6, :cond_6

    .line 896
    new-instance v6, Lcom/yi/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p0, v1}, Lcom/yi/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/yi/internal/view/menu/MenuBuilder;Lcom/yi/internal/view/menu/MenuItemImpl;)V

    invoke-virtual {v1, v6}, Lcom/yi/internal/view/menu/MenuItemImpl;->setSubMenu(Lcom/yi/internal/view/menu/SubMenuBuilder;)V

    .line 899
    :cond_6
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    check-cast v4, Lcom/yi/internal/view/menu/SubMenuBuilder;

    .line 900
    .local v4, subMenu:Lcom/yi/internal/view/menu/SubMenuBuilder;
    if-eqz v3, :cond_7

    .line 901
    invoke-virtual {v2, v4}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 903
    :cond_7
    invoke-direct {p0, v4}, Lcom/yi/internal/view/menu/MenuBuilder;->dispatchSubMenuSelected(Lcom/yi/internal/view/menu/SubMenuBuilder;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 904
    if-nez v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/yi/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .line 906
    .end local v4           #subMenu:Lcom/yi/internal/view/menu/SubMenuBuilder;
    :cond_8
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_1

    .line 907
    invoke-virtual {p0, v5}, Lcom/yi/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 770
    invoke-virtual {p0, p1, p2}, Lcom/yi/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/yi/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 772
    .local v1, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    const/4 v0, 0x0

    .line 774
    .local v0, handled:Z
    if-eqz v1, :cond_0

    .line 775
    invoke-virtual {p0, v1, p3}, Lcom/yi/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 778
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 779
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/yi/internal/view/menu/MenuBuilder;->close(Z)V

    .line 782
    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 5
    .parameter "group"

    .prologue
    .line 484
    invoke-virtual {p0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 486
    .local v0, i:I
    if-ltz v0, :cond_1

    .line 487
    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 488
    .local v1, maxRemovable:I
    const/4 v2, 0x0

    .local v2, numRemoved:I
    move v3, v2

    .line 489
    .end local v2           #numRemoved:I
    .local v3, numRemoved:I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3           #numRemoved:I
    .restart local v2       #numRemoved:I
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yi/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/yi/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 491
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/yi/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2           #numRemoved:I
    .restart local v3       #numRemoved:I
    goto :goto_0

    .line 495
    .end local v3           #numRemoved:I
    .restart local v2       #numRemoved:I
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 497
    .end local v1           #maxRemovable:I
    .end local v2           #numRemoved:I
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 481
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 518
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 519
    return-void
.end method

.method public removeMenuPresenter(Lcom/yi/internal/view/menu/MenuPresenter;)V
    .locals 4
    .parameter "presenter"

    .prologue
    .line 230
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 231
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/yi/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yi/internal/view/menu/MenuPresenter;

    .line 232
    .local v1, item:Lcom/yi/internal/view/menu/MenuPresenter;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    .line 233
    :cond_1
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    .end local v1           #item:Lcom/yi/internal/view/menu/MenuPresenter;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/yi/internal/view/menu/MenuPresenter;>;"
    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 10
    .parameter "states"

    .prologue
    .line 349
    if-nez p1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    .line 356
    .local v7, viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 357
    .local v3, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 358
    invoke-virtual {p0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 359
    .local v2, item:Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    .line 360
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 361
    invoke-virtual {v6, v7}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 363
    :cond_2
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 364
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Lcom/yi/internal/view/menu/SubMenuBuilder;

    .line 365
    .local v5, subMenu:Lcom/yi/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v5, p1}, Lcom/yi/internal/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 357
    .end local v5           #subMenu:Lcom/yi/internal/view/menu/SubMenuBuilder;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 369
    .end local v2           #item:Landroid/view/MenuItem;
    .end local v6           #v:Landroid/view/View;
    :cond_4
    const-string v8, "android:menu:expandedactionview"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 370
    .local v0, expandedId:I
    if-lez v0, :cond_0

    .line 371
    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 372
    .local v4, itemToExpand:Landroid/view/MenuItem;
    if-eqz v4, :cond_0

    .line 373
    invoke-interface {v4}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_0
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 319
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 8
    .parameter "outStates"

    .prologue
    .line 322
    const/4 v5, 0x0

    .line 324
    .local v5, viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 325
    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 326
    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 327
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 328
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 329
    if-nez v5, :cond_0

    .line 330
    new-instance v5, Landroid/util/SparseArray;

    .end local v5           #viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 332
    .restart local v5       #viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    invoke-virtual {v4, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 333
    invoke-interface {v1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 334
    const-string v6, "android:menu:expandedactionview"

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    :cond_1
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 338
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/yi/internal/view/menu/SubMenuBuilder;

    .line 339
    .local v3, subMenu:Lcom/yi/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v3, p1}, Lcom/yi/internal/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 325
    .end local v3           #subMenu:Lcom/yi/internal/view/menu/SubMenuBuilder;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    .end local v1           #item:Landroid/view/MenuItem;
    .end local v4           #v:Landroid/view/View;
    :cond_3
    if-eqz v5, :cond_4

    .line 344
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 346
    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 315
    return-void
.end method

.method public setCallback(Lcom/yi/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mCallback:Lcom/yi/internal/view/menu/MenuBuilder$Callback;

    .line 384
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menuInfo"

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1224
    return-void
.end method

.method public setDefaultShowAsAction(I)Lcom/yi/internal/view/menu/MenuBuilder;
    .locals 0
    .parameter "defaultShowAsAction"

    .prologue
    .line 206
    iput p1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 207
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 540
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 542
    .local v2, group:I
    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 543
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 544
    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 545
    .local v1, curItem:Lcom/yi/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 546
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 543
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 547
    :cond_1
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 550
    if-ne v1, p1, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Lcom/yi/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 553
    .end local v1           #curItem:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_3
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .parameter "group"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    .line 556
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 558
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 559
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 560
    .local v2, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/yi/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 561
    invoke-virtual {v2, p3}, Lcom/yi/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 562
    invoke-virtual {v2, p2}, Lcom/yi/internal/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 558
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    .end local v2           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .parameter "group"
    .parameter "enabled"

    .prologue
    .line 585
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 587
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 588
    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 589
    .local v2, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/yi/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 590
    invoke-virtual {v2, p2}, Lcom/yi/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 587
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    .end local v2           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .parameter "group"
    .parameter "visible"

    .prologue
    .line 568
    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 573
    .local v0, N:I
    const/4 v1, 0x0

    .line 574
    .local v1, changedAtLeastOneItem:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 575
    iget-object v4, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 576
    .local v3, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/yi/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 577
    invoke-virtual {v3, p2}, Lcom/yi/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 574
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    .end local v3           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_1
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 582
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/yi/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "iconRes"

    .prologue
    const/4 v2, 0x0

    .line 1179
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/yi/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1180
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/yi/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1167
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/yi/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1168
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/yi/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "titleRes"

    .prologue
    const/4 v2, 0x0

    .line 1155
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/yi/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1156
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/yi/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1143
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/yi/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1144
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/yi/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1191
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/yi/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1192
    return-object p0
.end method

.method setOptionalIconsVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1227
    iput-boolean p1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1228
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .parameter "isQwerty"

    .prologue
    .line 675
    iput-boolean p1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 677
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 678
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .parameter "shortcutsVisible"

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    .line 721
    :goto_0
    return-void

    .line 719
    :cond_0
    invoke-direct {p0, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 720
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 976
    iput-boolean v1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 978
    iget-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_0

    .line 979
    iput-boolean v1, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 980
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 982
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .prologue
    .line 969
    iget-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 971
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yi/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 973
    :cond_0
    return-void
.end method
