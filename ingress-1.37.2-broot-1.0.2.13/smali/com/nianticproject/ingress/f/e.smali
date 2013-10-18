.class public final Lcom/nianticproject/ingress/f/e;
.super Landroid/support/v4/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/a/a",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/nianticproject/ingress/f/a;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final f:Landroid/net/Uri;

.field private static final g:[Ljava/lang/String;


# instance fields
.field private final h:Landroid/os/Handler;

.field private final i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/nianticproject/ingress/invites/ContactsLoader$ContactsLoadingProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/nianticproject/ingress/f/e;->f:Landroid/net/Uri;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/f/e;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/f/e;->h:Landroid/os/Handler;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/f/e;->i:Ljava/util/HashSet;

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/f/e;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nianticproject/ingress/f/e;->i:Ljava/util/HashSet;

    return-object v0
.end method

.method private e()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/f/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-virtual {p0}, Lcom/nianticproject/ingress/f/e;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/f/e;->f:Landroid/net/Uri;

    sget-object v2, Lcom/nianticproject/ingress/f/e;->g:[Ljava/lang/String;

    const-string/jumbo v3, "in_visible_group == 1 AND is_primary != 0"

    const/4 v4, 0x0

    const-string/jumbo v5, "display_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 169
    if-nez v1, :cond_0

    move-object v0, v6

    .line 188
    :goto_0
    return-object v0

    .line 173
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/nianticproject/ingress/f/e;->h:Landroid/os/Handler;

    new-instance v3, Lcom/nianticproject/ingress/f/f;

    invoke-direct {v3, p0, v0}, Lcom/nianticproject/ingress/f/f;-><init>(Lcom/nianticproject/ingress/f/e;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 179
    new-instance v5, Lcom/nianticproject/ingress/f/a;

    invoke-direct {v5, v0, v2, v3, v4}, Lcom/nianticproject/ingress/f/a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/f/e;->h:Landroid/os/Handler;

    new-instance v3, Lcom/nianticproject/ingress/f/g;

    invoke-direct {v3, p0, v0}, Lcom/nianticproject/ingress/f/g;-><init>(Lcom/nianticproject/ingress/f/e;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 184
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 185
    invoke-direct {p0}, Lcom/nianticproject/ingress/f/e;->p()V

    throw v0

    .line 184
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 185
    invoke-direct {p0}, Lcom/nianticproject/ingress/f/e;->p()V

    move-object v0, v6

    .line 188
    goto :goto_0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/nianticproject/ingress/f/e;->h:Landroid/os/Handler;

    new-instance v1, Lcom/nianticproject/ingress/f/h;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/f/h;-><init>(Lcom/nianticproject/ingress/f/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method


# virtual methods
.method public final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nianticproject/ingress/f/e;->e()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected final f()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/nianticproject/ingress/f/e;->k()V

    .line 158
    return-void
.end method
