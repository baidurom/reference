.class public Lcom/baidu/themeanimation/model/HotWordProvider$DBlite;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HotWordProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/model/HotWordProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DBlite"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/themeanimation/model/HotWordProvider;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/model/HotWordProvider;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/baidu/themeanimation/model/HotWordProvider$DBlite;->this$0:Lcom/baidu/themeanimation/model/HotWordProvider;

    .line 47
    const-string v0, "hotworddb"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 48
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 4
    .parameter "hotword"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/baidu/themeanimation/model/HotWordProvider$DBlite;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 63
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "info"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "hotwordtable"

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 66
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 52
    const-string v0, "create table hotwordtable(id int, info text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    const-string v0, "http"

    const-string v1, "create table"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 59
    return-void
.end method
