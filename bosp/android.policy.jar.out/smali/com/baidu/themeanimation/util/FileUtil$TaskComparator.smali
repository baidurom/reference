.class Lcom/baidu/themeanimation/util/FileUtil$TaskComparator;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/util/FileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/themeanimation/util/FileUtil;


# direct methods
.method private constructor <init>(Lcom/baidu/themeanimation/util/FileUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/baidu/themeanimation/util/FileUtil$TaskComparator;->this$0:Lcom/baidu/themeanimation/util/FileUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/themeanimation/util/FileUtil;Lcom/baidu/themeanimation/util/FileUtil$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/util/FileUtil$TaskComparator;-><init>(Lcom/baidu/themeanimation/util/FileUtil;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 478
    invoke-virtual {p2}, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 474
    check-cast p1, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;

    .end local p1
    check-cast p2, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/themeanimation/util/FileUtil$TaskComparator;->compare(Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;)I

    move-result v0

    return v0
.end method
