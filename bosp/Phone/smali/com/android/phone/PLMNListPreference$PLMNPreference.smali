.class Lcom/android/phone/PLMNListPreference$PLMNPreference;
.super Landroid/preference/Preference;
.source "PLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PLMNListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PLMNPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PLMNListPreference;


# direct methods
.method public constructor <init>(Lcom/android/phone/PLMNListPreference;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/phone/PLMNListPreference$PLMNPreference;->this$0:Lcom/android/phone/PLMNListPreference;

    .line 231
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 233
    return-void
.end method
