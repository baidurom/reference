.class Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AllWindowsIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# instance fields
.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplayContentsIterator:Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;

.field private mReverse:Z

.field private mWindowList:Lcom/android/server/wm/WindowList;

.field private mWindowListIndex:I

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 11086
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11087
    new-instance v0, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;

    invoke-direct {v0, p1}, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mDisplayContentsIterator:Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;

    .line 11088
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mDisplayContentsIterator:Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;->next()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 11089
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowList:Lcom/android/server/wm/WindowList;

    .line 11090
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Z)V
    .locals 1
    .parameter
    .parameter "reverse"

    .prologue
    .line 11093
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 11094
    iput-boolean p2, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mReverse:Z

    .line 11095
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowListIndex:I

    .line 11096
    return-void

    .line 11095
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11100
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mReverse:Z

    if-eqz v2, :cond_2

    .line 11101
    iget v2, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowListIndex:I

    if-ltz v2, :cond_1

    .line 11103
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 11101
    goto :goto_0

    .line 11103
    :cond_2
    iget v2, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowListIndex:I

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public next()Lcom/android/server/wm/WindowState;
    .locals 3

    .prologue
    .line 11108
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11109
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowList:Lcom/android/server/wm/WindowList;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowListIndex:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 11110
    .local v0, win:Lcom/android/server/wm/WindowState;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mReverse:Z

    if-eqz v1, :cond_1

    .line 11111
    iget v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowListIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowListIndex:I

    .line 11112
    iget v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowListIndex:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mDisplayContentsIterator:Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11113
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mDisplayContentsIterator:Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;->next()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 11114
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowList:Lcom/android/server/wm/WindowList;

    .line 11115
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowListIndex:I

    .line 11126
    :cond_0
    :goto_0
    return-object v0

    .line 11118
    :cond_1
    iget v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowListIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowListIndex:I

    .line 11119
    iget v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowListIndex:I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mDisplayContentsIterator:Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11121
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mDisplayContentsIterator:Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;->next()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 11122
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowList:Lcom/android/server/wm/WindowList;

    .line 11123
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->mWindowListIndex:I

    goto :goto_0

    .line 11128
    .end local v0           #win:Lcom/android/server/wm/WindowState;
    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11079
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->next()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 11133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AllWindowsIterator.remove not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
