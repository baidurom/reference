.class Lcom/android/internal/policy/impl/SimUnlockScreen$7;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;->dealwithSIMInfoChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->displaythesimcardinfo(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;I)V

    .line 1316
    return-void
.end method
