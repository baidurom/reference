.class Lcom/android/phone/InCallScreen$PostDrawListener;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPostDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostDrawListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method private constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 7045
    iput-object p1, p0, Lcom/android/phone/InCallScreen$PostDrawListener;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7045
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen$PostDrawListener;-><init>(Lcom/android/phone/InCallScreen;)V

    return-void
.end method


# virtual methods
.method public onPostDraw()Z
    .locals 1

    .prologue
    .line 7047
    const-string v0, "InCallScreen.PostDraw"

    invoke-static {v0}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    .line 7048
    const/4 v0, 0x1

    return v0
.end method
