.class public Landroid/support/v4/a/c;
.super Landroid/support/v4/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/a/a",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Landroid/support/v4/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/d",
            "<",
            "Landroid/database/Cursor;",
            ">.android/support/v4/a/e;"
        }
    .end annotation
.end field

.field g:Landroid/net/Uri;

.field h:[Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:[Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Landroid/support/v4/a/e;

    invoke-direct {v0, p0}, Landroid/support/v4/a/e;-><init>(Landroid/support/v4/a/d;)V

    iput-object v0, p0, Landroid/support/v4/a/c;->f:Landroid/support/v4/a/e;

    .line 97
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Landroid/support/v4/a/d;->r:Z

    if-eqz v0, :cond_1

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    .line 78
    iput-object p1, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    .line 80
    iget-boolean v1, p0, Landroid/support/v4/a/d;->p:Z

    if-eqz v1, :cond_2

    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/a/a;->b(Ljava/lang/Object;)V

    .line 84
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Landroid/support/v4/a/c;->g:Landroid/net/Uri;

    .line 168
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Landroid/support/v4/a/c;->i:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 205
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/c;->g:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Landroid/support/v4/a/c;->h:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/c;->i:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Landroid/support/v4/a/c;->j:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/c;->k:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/a/c;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 214
    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Landroid/support/v4/a/c;->h:[Ljava/lang/String;

    .line 176
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    check-cast p1, Landroid/database/Cursor;

    invoke-direct {p0, p1}, Landroid/support/v4/a/c;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Landroid/support/v4/a/c;->k:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public final b([Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Landroid/support/v4/a/c;->j:[Ljava/lang/String;

    .line 192
    return-void
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/support/v4/a/c;->e()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v4/a/d;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/a/c;->g:Landroid/net/Uri;

    iget-object v2, p0, Landroid/support/v4/a/c;->h:[Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/a/c;->i:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/a/c;->j:[Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/a/c;->k:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 54
    iget-object v1, p0, Landroid/support/v4/a/c;->f:Landroid/support/v4/a/e;

    iget-object v1, p0, Landroid/support/v4/a/c;->f:Landroid/support/v4/a/e;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 56
    :cond_0
    return-object v0
.end method

.method protected final f()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Landroid/support/v4/a/c;->a(Landroid/database/Cursor;)V

    .line 128
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/a/d;->s:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/a/d;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 129
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/a/c;->k()V

    .line 131
    :cond_2
    return-void
.end method

.method protected final g()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/support/v4/a/c;->b()Z

    .line 140
    return-void
.end method

.method protected final h()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v4/a/a;->h()V

    .line 154
    invoke-virtual {p0}, Landroid/support/v4/a/c;->b()Z

    .line 156
    iget-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    .line 160
    return-void
.end method
