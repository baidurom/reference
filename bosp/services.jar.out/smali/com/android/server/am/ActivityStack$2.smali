.class Lcom/android/server/am/ActivityStack$2;
.super Landroid/app/IThumbnailRetriever$Stub;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;

.field final synthetic val$thumbs:Lcom/android/server/am/TaskAccessInfo;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskAccessInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4568
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$2;->this$0:Lcom/android/server/am/ActivityStack;

    iput-object p2, p0, Lcom/android/server/am/ActivityStack$2;->val$thumbs:Lcom/android/server/am/TaskAccessInfo;

    invoke-direct {p0}, Landroid/app/IThumbnailRetriever$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getThumbnail(I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "index"

    .prologue
    .line 4570
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack$2;->val$thumbs:Lcom/android/server/am/TaskAccessInfo;

    iget-object v2, v2, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 4571
    :cond_0
    const/4 v2, 0x0

    .line 4578
    :goto_0
    return-object v2

    .line 4573
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$2;->val$thumbs:Lcom/android/server/am/TaskAccessInfo;

    iget-object v2, v2, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskAccessInfo$SubTask;

    .line 4574
    .local v1, sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$2;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4575
    .local v0, resumed:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    iget-object v3, v1, Lcom/android/server/am/TaskAccessInfo$SubTask;->holder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v2, v3, :cond_2

    .line 4576
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 4578
    :cond_2
    iget-object v2, v1, Lcom/android/server/am/TaskAccessInfo$SubTask;->holder:Lcom/android/server/am/ThumbnailHolder;

    iget-object v2, v2, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
