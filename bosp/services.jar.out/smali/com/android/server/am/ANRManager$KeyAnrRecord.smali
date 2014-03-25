.class public Lcom/android/server/am/ANRManager$KeyAnrRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KeyAnrRecord"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/server/am/ANRManager;

.field protected mActivity:Lcom/android/server/am/ActivityRecord;

.field protected mAnnotation:Ljava/lang/String;

.field protected mApp:Lcom/android/server/am/ProcessRecord;

.field protected mParent:Lcom/android/server/am/ActivityRecord;


# direct methods
.method protected constructor <init>(Lcom/android/server/am/ANRManager;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/android/server/am/ANRManager$KeyAnrRecord;->a:Lcom/android/server/am/ANRManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    iput-object p2, p0, Lcom/android/server/am/ANRManager$KeyAnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1037
    iput-object p3, p0, Lcom/android/server/am/ANRManager$KeyAnrRecord;->mActivity:Lcom/android/server/am/ActivityRecord;

    .line 1038
    iput-object p4, p0, Lcom/android/server/am/ANRManager$KeyAnrRecord;->mParent:Lcom/android/server/am/ActivityRecord;

    .line 1039
    iput-object p5, p0, Lcom/android/server/am/ANRManager$KeyAnrRecord;->mAnnotation:Ljava/lang/String;

    .line 1040
    return-void
.end method
