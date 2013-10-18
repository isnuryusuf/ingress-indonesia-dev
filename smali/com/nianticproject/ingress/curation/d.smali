.class public final Lcom/nianticproject/ingress/curation/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "com.nianticproject.ingress.content.NemesisProvider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "portal_curation"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/curation/d;->a:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/curation/d;->a:Landroid/net/Uri;

    sget-object v2, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a:[Ljava/lang/String;

    const-string/jumbo v3, "metadata_uploaded == ? OR photo_uploaded == ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v7, "0"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v7, "0"

    aput-object v7, v4, v5

    const-string/jumbo v5, "timestamp"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 55
    if-nez v1, :cond_0

    move-object v0, v6

    .line 67
    :goto_0
    return-object v0

    .line 60
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a(Landroid/database/Cursor;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 67
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/curation/d;->a:Landroid/net/Uri;

    sget-object v2, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a:[Ljava/lang/String;

    const-string/jumbo v3, "request_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 84
    if-nez v1, :cond_0

    .line 96
    :goto_0
    return-object v5

    .line 89
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-static {v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a(Landroid/database/Cursor;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/curation/d;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 38
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/curation/d;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a()Landroid/content/ContentValues;

    move-result-object v2

    const-string/jumbo v3, "request_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/curation/d;->a:Landroid/net/Uri;

    const-string/jumbo v2, "request_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    return-void
.end method
