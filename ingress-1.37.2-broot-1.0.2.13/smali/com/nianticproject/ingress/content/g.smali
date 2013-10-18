.class public final Lcom/nianticproject/ingress/content/g;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/content/g;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 38
    const-string/jumbo v0, "nemesis.db"

    const/4 v1, 0x0

    const/16 v2, 0x13

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public final getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 124
    sget-object v1, Lcom/nianticproject/ingress/content/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 131
    sget-object v1, Lcom/nianticproject/ingress/content/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter

    .prologue
    .line 43
    invoke-static {}, Lcom/nianticproject/ingress/content/NemesisProvider;->e()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 44
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0xe

    const/16 v1, 0xf

    .line 57
    invoke-static {}, Lcom/nianticproject/ingress/content/NemesisProvider;->a()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 58
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    const/16 v0, 0xb

    if-eq p2, v0, :cond_1

    const/16 v0, 0xc

    if-eq p2, v0, :cond_1

    const/16 v0, 0xd

    if-ne p2, v0, :cond_2

    .line 66
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/content/NemesisProvider;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    :cond_2
    if-lt p2, v5, :cond_3

    const/16 v0, 0x13

    if-ge p2, v0, :cond_3

    .line 75
    if-ne p2, v5, :cond_5

    .line 82
    invoke-static {}, Lcom/nianticproject/ingress/content/NemesisProvider;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v0, v1

    .line 86
    :goto_1
    if-ne v0, v1, :cond_3

    .line 93
    invoke-static {}, Lcom/nianticproject/ingress/content/NemesisProvider;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    :cond_3
    if-ne p2, v1, :cond_4

    .line 116
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->p()V

    .line 119
    :cond_4
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/content/g;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 120
    return-void

    :cond_5
    move v0, p2

    goto :goto_1
.end method
