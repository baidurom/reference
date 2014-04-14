.class Landroid/webkit/WebBackForwardListClassic;
.super Landroid/webkit/WebBackForwardList;
.source "WebBackForwardListClassic.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/WebHistoryItemClassic;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mClearPending:Z

.field private mCurrentIndex:I


# direct methods
.method constructor <init>(Landroid/webkit/CallbackProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/webkit/WebBackForwardList;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebBackForwardListClassic;->mCurrentIndex:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Landroid/webkit/WebBackForwardListClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 38
    return-void
.end method

.method private static native nativeClose(I)V
.end method

.method private declared-synchronized removeHistoryItem(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/webkit/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebHistoryItem;

    .line 127
    .local v0, h:Landroid/webkit/WebHistoryItem;
    iget v1, p0, Landroid/webkit/WebBackForwardListClassic;->mCurrentIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/webkit/WebBackForwardListClassic;->mCurrentIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 124
    .end local v0           #h:Landroid/webkit/WebHistoryItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synchronized native declared-synchronized restoreIndex(II)V
.end method


# virtual methods
.method declared-synchronized addHistoryItem(Landroid/webkit/WebHistoryItem;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget v4, p0, Landroid/webkit/WebBackForwardListClassic;->mCurrentIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/webkit/WebBackForwardListClassic;->mCurrentIndex:I

    .line 88
    iget-object v4, p0, Landroid/webkit/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 89
    .local v3, size:I
    iget v2, p0, Landroid/webkit/WebBackForwardListClassic;->mCurrentIndex:I

    .line 90
    .local v2, newPos:I
    if-eq v2, v3, :cond_0

    .line 91
    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 92
    iget-object v4, p0, Landroid/webkit/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebHistoryItem;

    .line 91
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 96
    .end local v1           #i:I
    :cond_0
    iget-object v5, p0, Landroid/webkit/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    move-object v0, p1

    check-cast v0, Landroid/webkit/WebHistoryItemClassic;

    move-object v4, v0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v4, p0, Landroid/webkit/WebBackForwardListClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    if-eqz v4, :cond_1

    .line 98
    iget-object v4, p0, Landroid/webkit/WebBackForwardListClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4, p1}, Landroid/webkit/CallbackProxy;->onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    monitor-exit p0

    return-void

    .line 85
    .end local v2           #newPos:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public bridge synthetic clone()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/webkit/WebBackForwardListClassic;->clone()Landroid/webkit/WebBackForwardListClassic;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized clone()Landroid/webkit/WebBackForwardListClassic;
    .locals 5

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/webkit/WebBackForwardListClassic;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/webkit/WebBackForwardListClassic;-><init>(Landroid/webkit/CallbackProxy;)V

    .line 132
    .local v1, l:Landroid/webkit/WebBackForwardListClassic;
    iget-boolean v3, p0, Landroid/webkit/WebBackForwardListClassic;->mClearPending:Z

    if-eqz v3, :cond_1

    .line 134
    invoke-virtual {p0}, Landroid/webkit/WebBackForwardListClassic;->getCurrentItem()Landroid/webkit/WebHistoryItemClassic;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebBackForwardListClassic;->addHistoryItem(Landroid/webkit/WebHistoryItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    monitor-exit p0

    return-object v1

    .line 137
    :cond_1
    :try_start_1
    iget v3, p0, Landroid/webkit/WebBackForwardListClassic;->mCurrentIndex:I

    iput v3, v1, Landroid/webkit/WebBackForwardListClassic;->mCurrentIndex:I

    .line 138
    invoke-virtual {p0}, Landroid/webkit/WebBackForwardListClassic;->getSize()I

    move-result v2

    .line 139
    .local v2, size:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v1, Landroid/webkit/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 142
    iget-object v4, v1, Landroid/webkit/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/webkit/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebHistoryItemClassic;

    invoke-virtual {v3}, Landroid/webkit/WebHistoryItemClassic;->clone()Landroid/webkit/WebHistoryItemClassic;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v0           #i:I
    .end local v1           #l:Landroid/webkit/WebBackForwardListClassic;
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/webkit/WebBackForwardListClassic;->clone()Landroid/webkit/WebBackForwardListClassic;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized close(I)V
    .locals 1
    .parameter "nativeFrame"

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebBackForwardListClassic;->mCurrentIndex:I

    .line 110
    invoke-static {p1}, Landroid/webkit/WebBackForwardListClassic;->nativeClose(I)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebBackForwardListClassic;->mClearPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getClearPending()Z
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebBackForwardListClassic;->mClearPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentIndex()I
    .locals 1

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebBackForwardListClassic;->mCurrentIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getCurrentItem()Landroid/webkit/WebHistoryItem;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/webkit/WebBackForwardListClassic;->getCurrentItem()Landroid/webkit/WebHistoryItemClassic;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCurrentItem()Landroid/webkit/WebHistoryItemClassic;
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebBackForwardListClassic;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebBackForwardListClassic;->getItemAtIndex(I)Landroid/webkit/WebHistoryItemClassic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getItemAtIndex(I)Landroid/webkit/WebHistoryItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/webkit/WebBackForwardListClassic;->getItemAtIndex(I)Landroid/webkit/WebHistoryItemClassic;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getItemAtIndex(I)Landroid/webkit/WebHistoryItemClassic;
    .locals 1
    .parameter "index"

    .prologue
    .line 49
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebBackForwardListClassic;->getSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt p1, v0, :cond_1

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebHistoryItemClassic;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()I
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setClearPending()V
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/webkit/WebBackForwardListClassic;->mClearPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCurrentIndex(I)V
    .locals 2
    .parameter "newIndex"

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroid/webkit/WebBackForwardListClassic;->mCurrentIndex:I

    .line 153
    iget-object v0, p0, Landroid/webkit/WebBackForwardListClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Landroid/webkit/WebBackForwardListClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {p0, p1}, Landroid/webkit/WebBackForwardListClassic;->getItemAtIndex(I)Landroid/webkit/WebHistoryItemClassic;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/CallbackProxy;->onIndexChanged(Landroid/webkit/WebHistoryItem;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
