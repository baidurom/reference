.class Lcom/android/server/TextServicesManagerService$TextServicesSettings;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextServicesSettings"
.end annotation


# instance fields
.field private mCurrentUserId:I

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;I)V
    .locals 0
    .parameter "resolver"
    .parameter "userId"

    .prologue
    .line 915
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 916
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    .line 917
    iput p2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    .line 918
    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 1

    .prologue
    .line 930
    iget v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    return v0
.end method

.method public getSelectedSpellChecker()Ljava/lang/String;
    .locals 3

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_spell_checker"

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedSpellCheckerSubtype()Ljava/lang/String;
    .locals 3

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_spell_checker_subtype"

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSpellCheckerEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 960
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "spell_checker_enabled"

    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putSelectedSpellChecker(Ljava/lang/String;)V
    .locals 3
    .parameter "sciId"

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_spell_checker"

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 936
    return-void
.end method

.method public putSelectedSpellCheckerSubtype(I)V
    .locals 4
    .parameter "hashCode"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_spell_checker_subtype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 942
    return-void
.end method

.method public setCurrentUserId(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 926
    iput p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    .line 927
    return-void
.end method

.method public setSpellCheckerEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 945
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "spell_checker_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 947
    return-void

    .line 945
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
