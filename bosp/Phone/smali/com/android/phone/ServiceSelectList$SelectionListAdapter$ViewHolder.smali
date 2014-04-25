.class Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ServiceSelectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ServiceSelectList$SelectionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field ckRadioOn:Landroid/widget/RadioButton;

.field imageSim:Landroid/widget/RelativeLayout;

.field imageStatus:Landroid/widget/ImageView;

.field text3G:Landroid/widget/TextView;

.field textName:Landroid/widget/TextView;

.field textNum:Landroid/widget/TextView;

.field textNumFormat:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/phone/ServiceSelectList$SelectionListAdapter;


# direct methods
.method constructor <init>(Lcom/android/phone/ServiceSelectList$SelectionListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter$ViewHolder;->this$1:Lcom/android/phone/ServiceSelectList$SelectionListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
