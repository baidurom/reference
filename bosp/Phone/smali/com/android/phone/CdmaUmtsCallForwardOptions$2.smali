.class Lcom/android/phone/CdmaUmtsCallForwardOptions$2;
.super Ljava/lang/Object;
.source "CdmaUmtsCallForwardOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CdmaUmtsCallForwardOptions;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaUmtsCallForwardOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$2;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions$2;->this$0:Lcom/android/phone/CdmaUmtsCallForwardOptions;

    const-string v1, "*730"

    #calls: Lcom/android/phone/CdmaUmtsCallForwardOptions;->call(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->access$200(Lcom/android/phone/CdmaUmtsCallForwardOptions;Ljava/lang/String;)V

    .line 271
    return-void
.end method
