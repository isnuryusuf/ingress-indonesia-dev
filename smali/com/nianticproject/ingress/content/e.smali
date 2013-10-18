.class public Lcom/nianticproject/ingress/content/e;
.super Landroid/support/v4/a/c;
.source "SourceFile"


# static fields
.field private static final t:Lcom/nianticproject/ingress/common/w/aa;

.field private static final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/content/e;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/content/e;->t:Lcom/nianticproject/ingress/common/w/aa;

    .line 42
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/content/e;->u:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nianticproject/ingress/common/b;Ljava/lang/Integer;ILjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Landroid/support/v4/a/c;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-static {p2, p3}, Lcom/nianticproject/ingress/content/a;->a(Lcom/nianticproject/ingress/common/b;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v3

    .line 110
    if-nez p4, :cond_1

    move-object v0, v1

    move-object v2, v1

    .line 122
    :goto_0
    sget-object v4, Lcom/nianticproject/ingress/content/e;->t:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v5, "CommsLoader: selection=%s selectionArgs=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/content/e;->a(Landroid/net/Uri;)V

    .line 126
    sget-object v1, Lcom/nianticproject/ingress/content/b;->a:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/content/e;->a([Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v2}, Lcom/nianticproject/ingress/content/e;->a(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/content/e;->b([Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p5}, Lcom/nianticproject/ingress/content/e;->b(Ljava/lang/String;)V

    .line 130
    return-void

    .line 118
    :cond_1
    invoke-static {v1, p4}, Lcom/nianticproject/ingress/content/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 119
    new-array v0, v7, [Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a([B)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-static {p0}, Lcom/nianticproject/ingress/content/e;->c([B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static b([B)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 135
    .line 138
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 142
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 145
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 145
    :cond_0
    if-eqz v2, :cond_1

    .line 146
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_1
    throw v0

    .line 142
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method private static c([B)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    :try_start_0
    const-string/jumbo v0, "CommsLoader.deserializeNoneOnFail"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/nianticproject/ingress/content/e;->u:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :try_start_1
    invoke-static {p0}, Lcom/nianticproject/ingress/content/e;->b([B)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 168
    :goto_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    :try_start_2
    sget-object v2, Lcom/nianticproject/ingress/content/e;->t:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Exception while deserializing markup entries list"

    invoke-virtual {v2, v1, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method static synthetic p()Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/nianticproject/ingress/content/e;->u:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/nianticproject/ingress/content/e;->e()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final e()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 175
    :try_start_0
    const-string/jumbo v0, "CommsLoader.loadInBackground"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/nianticproject/ingress/content/f;

    invoke-super {p0}, Landroid/support/v4/a/c;->e()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/content/f;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
