.class public final Lcom/nianticproject/ingress/shared/model/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/Long;

.field private g:Z

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/model/PlayerDamage;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/nianticproject/ingress/gameentity/f;

.field private j:Lcom/google/a/c/dc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dc",
            "<",
            "Lcom/nianticproject/ingress/shared/model/ApGain;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/nianticproject/ingress/shared/model/LevelUp;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/nianticproject/ingress/shared/model/e;)V
    .locals 1
    .parameter

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->b()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/f;->a:Ljava/util/Set;

    .line 257
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/f;->b:Ljava/util/Set;

    .line 258
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->f()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/f;->c:Ljava/util/Collection;

    .line 259
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->d()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/f;->d:Ljava/util/Collection;

    .line 260
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->e()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/f;->e:Ljava/lang/Long;

    .line 261
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->g()Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/f;->f:Ljava/lang/Long;

    .line 262
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/shared/model/f;->g:Z

    .line 263
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->h()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/f;->h:Ljava/util/Set;

    .line 264
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->i()Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/f;->i:Lcom/nianticproject/ingress/gameentity/f;

    .line 265
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->j()Lcom/google/a/c/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/f;->j:Lcom/google/a/c/dc;

    .line 266
    invoke-interface {p1}, Lcom/nianticproject/ingress/shared/model/e;->k()Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/model/LevelUp;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/f;->k:Lcom/nianticproject/ingress/shared/model/LevelUp;

    .line 267
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/shared/model/f;Z)Lcom/nianticproject/ingress/shared/model/f;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/nianticproject/ingress/shared/model/f;->g:Z

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;
    .locals 12

    .prologue
    .line 325
    new-instance v0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/model/f;->a:Ljava/util/Set;

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/f;->b:Ljava/util/Set;

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/model/f;->c:Ljava/util/Collection;

    iget-object v4, p0, Lcom/nianticproject/ingress/shared/model/f;->d:Ljava/util/Collection;

    iget-object v5, p0, Lcom/nianticproject/ingress/shared/model/f;->e:Ljava/lang/Long;

    iget-object v6, p0, Lcom/nianticproject/ingress/shared/model/f;->f:Ljava/lang/Long;

    iget-boolean v7, p0, Lcom/nianticproject/ingress/shared/model/f;->g:Z

    iget-object v8, p0, Lcom/nianticproject/ingress/shared/model/f;->h:Ljava/util/Set;

    iget-object v9, p0, Lcom/nianticproject/ingress/shared/model/f;->i:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v10, p0, Lcom/nianticproject/ingress/shared/model/f;->j:Lcom/google/a/c/dc;

    iget-object v11, p0, Lcom/nianticproject/ingress/shared/model/f;->k:Lcom/nianticproject/ingress/shared/model/LevelUp;

    invoke-direct/range {v0 .. v11}, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Long;Ljava/lang/Long;ZLjava/util/Set;Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/c/dc;Lcom/nianticproject/ingress/shared/model/LevelUp;)V

    return-object v0
.end method

.method public final a(Ljava/util/Collection;)Lcom/nianticproject/ingress/shared/model/f;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nianticproject/ingress/shared/model/f;"
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {p1}, Lcom/google/a/c/du;->a(Ljava/util/Collection;)Lcom/google/a/c/du;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/f;->c:Ljava/util/Collection;

    .line 281
    return-object p0
.end method

.method public final a(Ljava/util/Set;)Lcom/nianticproject/ingress/shared/model/f;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;)",
            "Lcom/nianticproject/ingress/shared/model/f;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p1}, Lcom/google/a/c/du;->a(Ljava/util/Collection;)Lcom/google/a/c/du;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/f;->a:Ljava/util/Set;

    .line 271
    return-object p0
.end method

.method public final a(Ljava/util/Set;Ljava/lang/Long;)Lcom/nianticproject/ingress/shared/model/f;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/nianticproject/ingress/shared/model/f;"
        }
    .end annotation

    .prologue
    .line 286
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/model/f;->d:Ljava/util/Collection;

    .line 287
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/model/f;->e:Ljava/lang/Long;

    .line 288
    return-object p0
.end method

.method public final b(Ljava/util/Set;)Lcom/nianticproject/ingress/shared/model/f;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;)",
            "Lcom/nianticproject/ingress/shared/model/f;"
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {p1}, Lcom/google/a/c/du;->a(Ljava/util/Collection;)Lcom/google/a/c/du;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/f;->b:Ljava/util/Set;

    .line 276
    return-object p0
.end method
