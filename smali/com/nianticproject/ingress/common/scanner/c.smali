.class final Lcom/nianticproject/ingress/common/scanner/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/gameentity/f;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/nianticproject/ingress/common/scanner/d;

.field private d:Lcom/nianticproject/ingress/common/scanner/d;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a()Lcom/nianticproject/ingress/gameentity/PersistentGameEntity;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/c;->a:Lcom/nianticproject/ingress/gameentity/f;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->b:Ljava/util/Map;

    .line 35
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/c;->d()Lcom/nianticproject/ingress/common/scanner/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->c:Lcom/nianticproject/ingress/common/scanner/d;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->d:Lcom/nianticproject/ingress/common/scanner/d;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->e:Z

    return-void
.end method

.method private a(Lcom/google/a/c/dh;)Lcom/google/a/c/dh;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/dh",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;)",
            "Lcom/google/a/c/dh",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {}, Lcom/google/a/c/dh;->j()Lcom/google/a/c/di;

    move-result-object v1

    .line 185
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/c;->a:Lcom/nianticproject/ingress/gameentity/f;

    if-eq v3, v4, :cond_0

    .line 187
    invoke-virtual {v1, v0}, Lcom/google/a/c/di;->a(Ljava/util/Map$Entry;)Lcom/google/a/c/di;

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p1}, Lcom/google/a/c/dh;->f()Lcom/google/a/c/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 196
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 197
    invoke-virtual {v1, v0}, Lcom/google/a/c/di;->a(Ljava/util/Map$Entry;)Lcom/google/a/c/di;

    goto :goto_1

    .line 200
    :cond_3
    invoke-virtual {v1}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/a/c/du;)Lcom/google/a/c/dv;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/du",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/a/c/dv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    invoke-static {}, Lcom/google/a/c/du;->h()Lcom/google/a/c/dv;

    move-result-object v1

    .line 205
    invoke-virtual {p1}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/c;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    invoke-virtual {v1, v0}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    goto :goto_0

    .line 210
    :cond_1
    return-object v1
.end method

.method private b(Lcom/google/a/c/du;)Lcom/google/a/c/dv;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/du",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;)",
            "Lcom/google/a/c/dv",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {}, Lcom/google/a/c/du;->h()Lcom/google/a/c/dv;

    move-result-object v1

    .line 215
    invoke-virtual {p1}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 216
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    invoke-virtual {v1, v0}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    goto :goto_0

    .line 220
    :cond_1
    return-object v1
.end method

.method private c()Lcom/nianticproject/ingress/common/scanner/d;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->d:Lcom/nianticproject/ingress/common/scanner/d;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->c:Lcom/nianticproject/ingress/common/scanner/d;

    .line 231
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->d:Lcom/nianticproject/ingress/common/scanner/d;

    goto :goto_0
.end method

.method private static d()Lcom/nianticproject/ingress/common/scanner/d;
    .locals 6

    .prologue
    .line 239
    new-instance v0, Lcom/nianticproject/ingress/common/model/GameState;

    const-wide/16 v1, 0x0

    invoke-static {}, Lcom/google/a/c/du;->g()Lcom/google/a/c/du;

    move-result-object v3

    invoke-static {}, Lcom/google/a/c/du;->g()Lcom/google/a/c/du;

    move-result-object v4

    invoke-static {}, Lcom/google/a/c/dh;->i()Lcom/google/a/c/dh;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/model/GameState;-><init>(JLcom/google/a/c/du;Lcom/google/a/c/du;Lcom/google/a/c/dh;)V

    .line 241
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/d;

    invoke-direct {v1, v0, v0}, Lcom/nianticproject/ingress/common/scanner/d;-><init>(Lcom/nianticproject/ingress/common/model/GameState;Lcom/nianticproject/ingress/common/model/GameState;)V

    return-object v1
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/model/GameState;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->d:Lcom/nianticproject/ingress/common/scanner/d;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 94
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->e:Z

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->c:Lcom/nianticproject/ingress/common/scanner/d;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/d;->b:Lcom/nianticproject/ingress/common/model/GameState;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/c;->d:Lcom/nianticproject/ingress/common/scanner/d;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/scanner/d;->b:Lcom/nianticproject/ingress/common/model/GameState;

    invoke-static {v0, v2}, Lcom/nianticproject/ingress/common/model/i;->a(Lcom/nianticproject/ingress/common/model/GameState;Lcom/nianticproject/ingress/common/model/GameState;)Lcom/nianticproject/ingress/common/model/GameState;

    move-result-object v0

    .line 91
    :goto_1
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/c;->d:Lcom/nianticproject/ingress/common/scanner/d;

    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/c;->c:Lcom/nianticproject/ingress/common/scanner/d;

    .line 92
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/c;->d:Lcom/nianticproject/ingress/common/scanner/d;

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/c;->e:Z

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->d:Lcom/nianticproject/ingress/common/scanner/d;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/d;->b:Lcom/nianticproject/ingress/common/model/GameState;

    goto :goto_1
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 7
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/c;->c()Lcom/nianticproject/ingress/common/scanner/d;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/d;->a:Lcom/nianticproject/ingress/common/model/GameState;

    if-eq p1, v0, :cond_2

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->d:Lcom/nianticproject/ingress/common/scanner/d;

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->e:Z

    .line 73
    :cond_1
    new-instance v6, Lcom/nianticproject/ingress/common/scanner/d;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    :goto_0
    invoke-direct {v6, p1, v0}, Lcom/nianticproject/ingress/common/scanner/d;-><init>(Lcom/nianticproject/ingress/common/model/GameState;Lcom/nianticproject/ingress/common/model/GameState;)V

    iput-object v6, p0, Lcom/nianticproject/ingress/common/scanner/c;->d:Lcom/nianticproject/ingress/common/scanner/d;

    .line 75
    :cond_2
    return-void

    .line 73
    :cond_3
    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/c;->a(Lcom/google/a/c/dh;)Lcom/google/a/c/dh;

    move-result-object v5

    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->disappeared:Lcom/google/a/c/du;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/c;->a(Lcom/google/a/c/du;)Lcom/google/a/c/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v3

    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->changedEntities:Lcom/google/a/c/du;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/c;->b(Lcom/google/a/c/du;)Lcom/google/a/c/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v4

    new-instance v0, Lcom/nianticproject/ingress/common/model/GameState;

    iget-wide v1, p1, Lcom/nianticproject/ingress/common/model/GameState;->timestamp:J

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/model/GameState;-><init>(JLcom/google/a/c/du;Lcom/google/a/c/du;Lcom/google/a/c/dh;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/c;->c:Lcom/nianticproject/ingress/common/scanner/d;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/scanner/d;->b:Lcom/nianticproject/ingress/common/model/GameState;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v1, v0}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/f;

    .line 101
    if-eqz v1, :cond_0

    .line 102
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/c;->b:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/c;->b:Ljava/util/Map;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/c;->a:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->d:Lcom/nianticproject/ingress/common/scanner/d;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->e:Z

    .line 159
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 160
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/c;->d()Lcom/nianticproject/ingress/common/scanner/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/c;->c:Lcom/nianticproject/ingress/common/scanner/d;

    .line 161
    return-void
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/c/eq;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 111
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/c;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 113
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    :goto_1
    return-void

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/c;->c()Lcom/nianticproject/ingress/common/scanner/d;

    move-result-object v0

    .line 125
    iget-object v6, v0, Lcom/nianticproject/ingress/common/scanner/d;->a:Lcom/nianticproject/ingress/common/model/GameState;

    .line 126
    iget-object v0, v6, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/c;->a(Lcom/google/a/c/dh;)Lcom/google/a/c/dh;

    move-result-object v5

    .line 130
    invoke-static {}, Lcom/google/a/c/du;->h()Lcom/google/a/c/dv;

    move-result-object v3

    .line 131
    invoke-static {}, Lcom/google/a/c/du;->h()Lcom/google/a/c/dv;

    move-result-object v4

    .line 132
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    invoke-virtual {v5, v0}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/f;

    .line 134
    if-eqz v1, :cond_3

    .line 135
    invoke-virtual {v4, v1}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    goto :goto_2

    .line 137
    :cond_3
    invoke-virtual {v3, v0}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    goto :goto_2

    .line 140
    :cond_4
    new-instance v0, Lcom/nianticproject/ingress/common/model/GameState;

    iget-wide v1, v6, Lcom/nianticproject/ingress/common/model/GameState;->timestamp:J

    invoke-virtual {v3}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/model/GameState;-><init>(JLcom/google/a/c/du;Lcom/google/a/c/du;Lcom/google/a/c/dh;)V

    .line 143
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/c;->d:Lcom/nianticproject/ingress/common/scanner/d;

    if-eqz v1, :cond_5

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/c;->e:Z

    .line 146
    :cond_5
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/d;

    invoke-direct {v1, v6, v0}, Lcom/nianticproject/ingress/common/scanner/d;-><init>(Lcom/nianticproject/ingress/common/model/GameState;Lcom/nianticproject/ingress/common/model/GameState;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/c;->d:Lcom/nianticproject/ingress/common/scanner/d;

    goto :goto_1
.end method
