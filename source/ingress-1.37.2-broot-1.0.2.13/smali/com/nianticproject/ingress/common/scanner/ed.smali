.class public final Lcom/nianticproject/ingress/common/scanner/ed;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/w/k;

.field private final b:Lcom/nianticproject/ingress/common/scanner/fp;

.field private final c:Lcom/nianticproject/ingress/common/model/k;

.field private final d:Lcom/nianticproject/ingress/common/scanner/eh;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/eg;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/ScannerDestination$OnDestinationSetListener;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/ef;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lcom/google/a/d/u;

.field private j:Lcom/google/a/d/u;

.field private final k:Lcom/nianticproject/ingress/common/w/a;

.field private l:D

.field private m:D

.field private n:D

.field private final o:F

.field private final p:Lcom/nianticproject/ingress/common/model/l;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/w/k;Lcom/nianticproject/ingress/common/scanner/eh;Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/model/k;F)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Lcom/nianticproject/ingress/common/w/j;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->e:Ljava/util/Set;

    .line 78
    invoke-static {}, Lcom/nianticproject/ingress/common/w/j;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->f:Ljava/util/Set;

    .line 79
    invoke-static {}, Lcom/nianticproject/ingress/common/w/j;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->g:Ljava/util/Set;

    .line 91
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/ee;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/ee;-><init>(Lcom/nianticproject/ingress/common/scanner/ed;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->p:Lcom/nianticproject/ingress/common/model/l;

    .line 128
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/ed;->a:Lcom/nianticproject/ingress/common/w/k;

    .line 129
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/fp;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->b:Lcom/nianticproject/ingress/common/scanner/fp;

    .line 130
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->c:Lcom/nianticproject/ingress/common/model/k;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->h:Z

    .line 135
    new-instance v0, Lcom/nianticproject/ingress/common/w/a;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/w/a;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->k:Lcom/nianticproject/ingress/common/w/a;

    .line 136
    iput-object v3, p0, Lcom/nianticproject/ingress/common/scanner/ed;->j:Lcom/google/a/d/u;

    .line 137
    iput-object v3, p0, Lcom/nianticproject/ingress/common/scanner/ed;->i:Lcom/google/a/d/u;

    .line 138
    iput-wide v1, p0, Lcom/nianticproject/ingress/common/scanner/ed;->l:D

    .line 139
    iput-wide v1, p0, Lcom/nianticproject/ingress/common/scanner/ed;->m:D

    .line 140
    iput-wide v1, p0, Lcom/nianticproject/ingress/common/scanner/ed;->n:D

    .line 141
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/ed;->d:Lcom/nianticproject/ingress/common/scanner/eh;

    .line 142
    iput p5, p0, Lcom/nianticproject/ingress/common/scanner/ed;->o:F

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/w/k;Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    new-instance v2, Lcom/nianticproject/ingress/common/scanner/eh;

    invoke-direct {v2}, Lcom/nianticproject/ingress/common/scanner/eh;-><init>()V

    const/high16 v5, 0x420c

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/ed;-><init>(Lcom/nianticproject/ingress/common/w/k;Lcom/nianticproject/ingress/common/scanner/eh;Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/model/k;F)V

    .line 116
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/ed;Lcom/google/a/d/u;)Lcom/google/a/d/u;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/ed;->j:Lcom/google/a/d/u;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/ed;)Lcom/nianticproject/ingress/common/w/a;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->k:Lcom/nianticproject/ingress/common/w/a;

    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 6
    .parameter

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->j:Lcom/google/a/d/u;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->j:Lcom/google/a/d/u;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ed;->i:Lcom/google/a/d/u;

    invoke-virtual {v0, v1}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->l:D

    .line 152
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->j:Lcom/google/a/d/u;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ed;->i:Lcom/google/a/d/u;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/shared/b/a;->b(Lcom/google/a/d/u;Lcom/google/a/d/u;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->m:D

    .line 153
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->l:D

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/ed;->o:F

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 155
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->l:D

    const-wide/high16 v2, 0x4004

    add-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 v0, v0, 0x5

    int-to-double v0, v0

    const-wide/high16 v2, 0x4014

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->n:D

    .line 156
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->d:Lcom/nianticproject/ingress/common/scanner/eh;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->d:Lcom/nianticproject/ingress/common/scanner/eh;

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/scanner/ed;->n:D

    iget-wide v4, p0, Lcom/nianticproject/ingress/common/scanner/ed;->m:D

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/eh;->a(FDD)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->d:Lcom/nianticproject/ingress/common/scanner/eh;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->d:Lcom/nianticproject/ingress/common/scanner/eh;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/eh;->a()V

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/eg;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/eg;->a()V

    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/ed;->b()V

    goto :goto_0
.end method

.method public final a(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->b:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/badlogic/gdx/math/Vector2;)Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/ed;->a(Lcom/google/a/d/u;)V

    .line 233
    return-void
.end method

.method public final a(Lcom/google/a/d/u;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 240
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->h:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/ed;->b()V

    .line 243
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/ed;->i:Lcom/google/a/d/u;

    .line 244
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/scanner/ed;->h:Z

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ed;->a:Lcom/nianticproject/ingress/common/w/k;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ed;->a:Lcom/nianticproject/ingress/common/w/k;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/w/k;->a(Z)V

    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ed;->c:Lcom/nianticproject/ingress/common/model/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/ed;->p:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ed;->p:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/model/l;->a(Lcom/nianticproject/ingress/common/ad;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/ed;->a(F)V

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->d:Lcom/nianticproject/ingress/common/scanner/eh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->d:Lcom/nianticproject/ingress/common/scanner/eh;

    iget-wide v1, p0, Lcom/nianticproject/ingress/common/scanner/ed;->n:D

    iget-wide v3, p0, Lcom/nianticproject/ingress/common/scanner/ed;->m:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/scanner/eh;->a(DD)V

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 246
    :cond_3
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ef;)V
    .locals 1
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/eg;)V
    .locals 1
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->h:Z

    return v0
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 185
    iput-boolean v4, p0, Lcom/nianticproject/ingress/common/scanner/ed;->h:Z

    .line 187
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->c:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ed;->p:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 188
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->k:Lcom/nianticproject/ingress/common/w/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/a;->b()V

    .line 189
    iput-object v5, p0, Lcom/nianticproject/ingress/common/scanner/ed;->j:Lcom/google/a/d/u;

    .line 190
    iput-object v5, p0, Lcom/nianticproject/ingress/common/scanner/ed;->i:Lcom/google/a/d/u;

    .line 191
    iput-wide v2, p0, Lcom/nianticproject/ingress/common/scanner/ed;->l:D

    .line 192
    iput-wide v2, p0, Lcom/nianticproject/ingress/common/scanner/ed;->m:D

    .line 194
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->a:Lcom/nianticproject/ingress/common/w/k;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->a:Lcom/nianticproject/ingress/common/w/k;

    invoke-interface {v0, v4}, Lcom/nianticproject/ingress/common/w/k;->a(Z)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/ef;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/ef;->a()V

    goto :goto_0

    .line 198
    :cond_1
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/scanner/ef;)V
    .locals 1
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 335
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/scanner/eg;)V
    .locals 1
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method public final c()D
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->l:D

    return-wide v0
.end method

.method public final d()D
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->n:D

    return-wide v0
.end method

.method public final e()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->i:Lcom/google/a/d/u;

    return-object v0
.end method

.method public final f()D
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/ed;->m:D

    return-wide v0
.end method
