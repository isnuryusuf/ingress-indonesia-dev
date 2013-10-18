.class final Lcom/nianticproject/ingress/common/missions/do;
.super Lcom/nianticproject/ingress/common/missions/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/dl;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/dl;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/missions/ab;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 280
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->a()V

    .line 281
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/dl;->a(Lcom/nianticproject/ingress/common/missions/dl;)Lcom/google/a/d/u;

    move-result-object v1

    iput-object v1, v0, Lcom/nianticproject/ingress/common/missions/dl;->N:Lcom/google/a/d/u;

    .line 284
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/dl;->N:Lcom/google/a/d/u;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/dl;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    invoke-virtual {v0, v1}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v0

    .line 285
    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/dl;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/missions/dl;->N:Lcom/google/a/d/u;

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/shared/b/a;->b(Lcom/google/a/d/u;Lcom/google/a/d/u;)D

    .line 287
    const-wide v2, 0x4041800000000000L

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4014

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/dl;->w()V

    .line 293
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/dl;->b(Lcom/nianticproject/ingress/common/missions/dl;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/dl;->c:Lcom/nianticproject/ingress/gameentity/f;

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/dl;->c(Lcom/nianticproject/ingress/common/missions/dl;)I

    .line 298
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/dl;->t()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/dl;->d(Lcom/nianticproject/ingress/common/missions/dl;)Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 299
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    const-string/jumbo v1, "SkippingFirstLink"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    .line 304
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/dl;->t()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/dl;->e(Lcom/nianticproject/ingress/common/missions/dl;)Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 302
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/do;->a:Lcom/nianticproject/ingress/common/missions/dl;

    const-string/jumbo v1, "RepeatingFirstLink"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    goto :goto_0
.end method
