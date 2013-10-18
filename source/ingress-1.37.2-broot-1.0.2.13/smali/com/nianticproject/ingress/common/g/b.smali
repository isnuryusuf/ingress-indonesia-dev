.class public Lcom/nianticproject/ingress/common/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/g/ad;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/g/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/g/g;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/nianticproject/ingress/common/g/e;

.field private e:Z

.field private f:Lcom/nianticproject/ingress/common/g/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/g/b;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/g/b;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/nianticproject/ingress/common/w/j;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->b:Ljava/util/Set;

    .line 36
    invoke-static {}, Lcom/nianticproject/ingress/common/w/j;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->c:Ljava/util/Set;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/g/h;J)Lcom/google/a/a/ak;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/g/h;",
            "J)",
            "Lcom/google/a/a/ak",
            "<",
            "Lcom/nianticproject/ingress/common/model/i;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/common/g/h;J)Lcom/google/a/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/g/b;->e:Z

    const-string/jumbo v1, "delegate is not TrainingNemesisCache"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->f:Lcom/nianticproject/ingress/common/g/ad;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/nianticproject/ingress/common/g/ad;->a(Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/google/a/d/u;IILjava/lang/String;Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/g/b;->e:Z

    const-string/jumbo v1, "delegate is not TrainingNemesisCache"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->f:Lcom/nianticproject/ingress/common/g/ad;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/nianticproject/ingress/common/g/ad;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/google/a/d/u;IILjava/lang/String;Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/components/Portal;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/g/b;->e:Z

    const-string/jumbo v1, "delegate is not TrainingNemesisCache"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->f:Lcom/nianticproject/ingress/common/g/ad;

    invoke-interface {v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/g/ad;->a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/components/Portal;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/shared/ai;Ljava/util/Collection;J)Lcom/nianticproject/ingress/gameentity/f;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/ai;",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            ">;J)",
            "Lcom/nianticproject/ingress/gameentity/f;"
        }
    .end annotation

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/g/b;->e:Z

    const-string/jumbo v1, "delegate is not TrainingNemesisCache"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->f:Lcom/nianticproject/ingress/common/g/ad;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nianticproject/ingress/common/g/ad;->a(Lcom/nianticproject/ingress/shared/ai;Ljava/util/Collection;J)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/e;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Class;Lcom/nianticproject/ingress/common/g/h;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/nianticproject/ingress/common/g/h;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/g/e;->a(Ljava/lang/Class;Lcom/nianticproject/ingress/common/g/h;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/e;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 1
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/g/e;->a(J)V

    .line 257
    return-void
.end method

.method public final a(Lcom/google/a/d/u;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/g/b;->e:Z

    const-string/jumbo v1, "delegate is not TrainingNemesisCache"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->f:Lcom/nianticproject/ingress/common/g/ad;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/g/ad;->a(Lcom/google/a/d/u;I)V

    .line 268
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/g/e;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    .line 57
    instance-of v0, p1, Lcom/nianticproject/ingress/common/g/ad;

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/g/b;->e:Z

    .line 58
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/g/b;->e:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/nianticproject/ingress/common/g/ad;

    :goto_0
    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->f:Lcom/nianticproject/ingress/common/g/ad;

    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/f;

    .line 63
    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/common/g/f;)V

    .line 64
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/f;->a()V

    goto :goto_1

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/g;

    .line 67
    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/common/g/g;)V

    .line 68
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/g;->a()V

    goto :goto_2

    .line 70
    :cond_2
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/g/f;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/common/g/f;)V

    .line 103
    :cond_0
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/g/g;)V
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/common/g/g;)V

    .line 191
    :cond_0
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/model/e;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/shared/model/e;)V

    .line 129
    return-void
.end method

.method public final a([J[J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/g/e;->a([J[J)V

    .line 170
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/g/b;->e:Z

    return v0
.end method

.method public final a(Ljava/util/Set;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/e;->a(Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public final a([J)[J
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/e;->a([J)[J

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/e;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/e;->b()V

    .line 82
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/g/f;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/e;->b(Lcom/nianticproject/ingress/common/g/f;)V

    .line 119
    :cond_0
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/g/g;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/e;->b(Lcom/nianticproject/ingress/common/g/g;)V

    .line 207
    :cond_0
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/e;->b(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 160
    return-void
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/g/b;->e:Z

    const-string/jumbo v1, "delegate is not TrainingNemesisCache"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->f:Lcom/nianticproject/ingress/common/g/ad;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/ad;->b(Ljava/util/Collection;)V

    .line 297
    return-void
.end method

.method public final b(Ljava/util/Set;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/e;->b(Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/e;->c()V

    .line 87
    return-void
.end method

.method public final c(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/g/b;->e:Z

    const-string/jumbo v1, "delegate is not TrainingNemesisCache"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->f:Lcom/nianticproject/ingress/common/g/ad;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/ad;->c(Ljava/util/Set;)V

    .line 309
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/e;->d()V

    .line 175
    return-void
.end method

.method public final d(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/g/b;->e:Z

    const-string/jumbo v1, "delegate is not TrainingNemesisCache"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->f:Lcom/nianticproject/ingress/common/g/ad;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/ad;->d(Ljava/util/Set;)V

    .line 315
    return-void
.end method

.method public final e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/e;->e()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/e;->f()I

    move-result v0

    return v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->d:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/e;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()Lcom/nianticproject/ingress/common/g/e;
    .locals 2

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/g/b;->e:Z

    const-string/jumbo v1, "delegate is not TrainingNemesisCache"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 350
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/b;->f:Lcom/nianticproject/ingress/common/g/ad;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/ad;->h()Lcom/nianticproject/ingress/common/g/e;

    move-result-object v0

    return-object v0
.end method
