.class Lcom/android/internal/policy/impl/keyguard/PagedView$6;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/PagedView;->endReordering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 2182
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onEndReordering()V

    .line 2186
    return-void
.end method
