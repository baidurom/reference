.class Lcom/android/phone/MultipleSimCallSetting$2;
.super Ljava/lang/Object;
.source "MultipleSimCallSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MultipleSimCallSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MultipleSimCallSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MultipleSimCallSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/phone/MultipleSimCallSetting$2;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 484
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 485
    return-void
.end method
