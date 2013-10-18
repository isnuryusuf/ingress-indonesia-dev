.class public final Lcom/nianticproject/ingress/dj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ApplicationListener;


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Lcom/nianticproject/ingress/connectivity/a;

.field private final d:Lcom/google/a/a/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/ba",
            "<",
            "Lcom/nianticproject/ingress/common/o;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/ae;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/nianticproject/ingress/n/s;

.field private final g:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nianticproject/ingress/dn;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nianticproject/ingress/dn;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Lcom/nianticproject/ingress/common/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/dj;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/app/j;Lcom/nianticproject/ingress/connectivity/a;Lcom/google/a/a/ba;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/support/v4/app/j;",
            "Lcom/nianticproject/ingress/connectivity/a;",
            "Lcom/google/a/a/ba",
            "<",
            "Lcom/nianticproject/ingress/common/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-class v0, Lcom/nianticproject/ingress/dn;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/dj;->g:Ljava/util/EnumSet;

    .line 80
    const-class v0, Lcom/nianticproject/ingress/dn;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/dj;->h:Ljava/util/EnumSet;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/dj;->k:Lcom/nianticproject/ingress/common/o;

    .line 95
    iput-object p1, p0, Lcom/nianticproject/ingress/dj;->b:Landroid/app/Activity;

    .line 96
    iput-object p3, p0, Lcom/nianticproject/ingress/dj;->c:Lcom/nianticproject/ingress/connectivity/a;

    .line 97
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/dj;->e:Ljava/util/List;

    .line 98
    iput-object p4, p0, Lcom/nianticproject/ingress/dj;->d:Lcom/google/a/a/ba;

    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/common/k/w;

    new-instance v2, Lcom/nianticproject/ingress/do;

    sget-object v3, Lcom/nianticproject/ingress/dn;->c:Lcom/nianticproject/ingress/dn;

    invoke-direct {v2, p0, v3}, Lcom/nianticproject/ingress/do;-><init>(Lcom/nianticproject/ingress/dj;Lcom/nianticproject/ingress/dn;)V

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/k/w;-><init>(Lcom/nianticproject/ingress/common/af;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->g:Ljava/util/EnumSet;

    sget-object v1, Lcom/nianticproject/ingress/dn;->c:Lcom/nianticproject/ingress/dn;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/ae;

    new-instance v2, Lcom/nianticproject/ingress/do;

    sget-object v3, Lcom/nianticproject/ingress/dn;->b:Lcom/nianticproject/ingress/dn;

    invoke-direct {v2, p0, v3}, Lcom/nianticproject/ingress/do;-><init>(Lcom/nianticproject/ingress/dj;Lcom/nianticproject/ingress/dn;)V

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/scanner/ae;-><init>(Lcom/nianticproject/ingress/common/af;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->g:Ljava/util/EnumSet;

    sget-object v1, Lcom/nianticproject/ingress/dn;->b:Lcom/nianticproject/ingress/dn;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->g:Ljava/util/EnumSet;

    sget-object v1, Lcom/nianticproject/ingress/dn;->a:Lcom/nianticproject/ingress/dn;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v0, Lcom/nianticproject/ingress/n/ab;

    invoke-direct {v0}, Lcom/nianticproject/ingress/n/ab;-><init>()V

    .line 115
    new-instance v1, Lcom/nianticproject/ingress/dp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/dp;-><init>(Lcom/nianticproject/ingress/dj;B)V

    .line 117
    new-instance v2, Lcom/nianticproject/ingress/n/s;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/nianticproject/ingress/n/s;-><init>(Landroid/content/Context;Landroid/support/v4/app/j;Lcom/nianticproject/ingress/n/ab;Lcom/nianticproject/ingress/n/x;)V

    iput-object v2, p0, Lcom/nianticproject/ingress/dj;->f:Lcom/nianticproject/ingress/n/s;

    .line 120
    invoke-virtual {p0}, Lcom/nianticproject/ingress/dj;->resume()V

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/dj;Lcom/nianticproject/ingress/common/o;)Lcom/nianticproject/ingress/common/o;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/nianticproject/ingress/dj;->k:Lcom/nianticproject/ingress/common/o;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/dj;)Lcom/nianticproject/ingress/n/s;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->f:Lcom/nianticproject/ingress/n/s;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/dj;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/nianticproject/ingress/dj;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/dj;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/nianticproject/ingress/dj;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/dj;)Lcom/nianticproject/ingress/connectivity/a;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->c:Lcom/nianticproject/ingress/connectivity/a;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/dj;)Ljava/util/EnumSet;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->h:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/dj;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/n/q;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->f:Lcom/nianticproject/ingress/n/s;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 132
    :try_start_0
    const-string/jumbo v0, "PregameAppListener.startSignOn"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 133
    const-string/jumbo v0, "startSignOn"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->f:Lcom/nianticproject/ingress/n/s;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/n/s;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->h:Ljava/util/EnumSet;

    sget-object v1, Lcom/nianticproject/ingress/dn;->a:Lcom/nianticproject/ingress/dn;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public final create()V
    .locals 3

    .prologue
    .line 152
    :try_start_0
    const-string/jumbo v0, "PregameAppListener.create"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ae;

    .line 155
    sget-object v2, Lcom/nianticproject/ingress/dj;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 159
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->f:Lcom/nianticproject/ingress/n/s;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/n/s;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nianticproject/ingress/o/a;->b(Landroid/content/Context;)V

    .line 371
    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public final pause()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->b:Landroid/app/Activity;

    new-instance v1, Lcom/nianticproject/ingress/dm;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/dm;-><init>(Lcom/nianticproject/ingress/dj;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method public final render()V
    .locals 3

    .prologue
    .line 184
    :try_start_0
    const-string/jumbo v0, "PregameAppListener.render"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 186
    iget-boolean v0, p0, Lcom/nianticproject/ingress/dj;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 213
    :goto_0
    return-void

    .line 190
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    const-wide v1, 0xdf8475800L

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/x/i;->a(J)J

    .line 193
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 194
    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    .line 197
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->h:Ljava/util/EnumSet;

    iget-object v1, p0, Lcom/nianticproject/ingress/dj;->g:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/dj;->j:Z

    .line 202
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->d:Lcom/google/a/a/ba;

    iget-object v1, p0, Lcom/nianticproject/ingress/dj;->k:Lcom/nianticproject/ingress/common/o;

    invoke-static {v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/a/ba;->a(Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->b:Landroid/app/Activity;

    new-instance v1, Lcom/nianticproject/ingress/dk;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/dk;-><init>(Lcom/nianticproject/ingress/dj;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final resize(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    return-void
.end method

.method public final resume()V
    .locals 2

    .prologue
    .line 169
    :try_start_0
    const-string/jumbo v0, "PregameAppListener.resume"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/nianticproject/ingress/dj;->b:Landroid/app/Activity;

    new-instance v1, Lcom/nianticproject/ingress/dl;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/dl;-><init>(Lcom/nianticproject/ingress/dj;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
