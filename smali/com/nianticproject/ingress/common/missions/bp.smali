.class public Lcom/nianticproject/ingress/common/missions/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/a;

.field private final c:Lcom/nianticproject/ingress/common/scanner/k;

.field private final d:Lcom/nianticproject/ingress/common/scanner/e;

.field private final e:Lcom/nianticproject/ingress/common/g/p;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/missions/ca;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/nianticproject/ingress/common/missions/cq;

.field private h:Lcom/nianticproject/ingress/common/missions/bo;

.field private final i:Lcom/nianticproject/ingress/common/g/ad;

.field private final j:Lcom/nianticproject/ingress/common/model/m;

.field private final k:Lcom/nianticproject/ingress/common/h/k;

.field private final l:Lcom/nianticproject/ingress/common/c/e;

.field private final m:Lcom/nianticproject/ingress/common/missions/cc;

.field private final n:Lcom/nianticproject/ingress/common/model/a/e;

.field private final o:Lcom/nianticproject/ingress/common/factionchoice/n;

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/a/a/ak",
            "<",
            "Lcom/nianticproject/ingress/common/missions/ck;",
            "Lcom/nianticproject/ingress/common/missions/ck;",
            ">;",
            "Lcom/nianticproject/ingress/common/missions/ck;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/nianticproject/ingress/common/missions/cj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/missions/bp;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/bp;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/nianticproject/ingress/common/g/p;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/g/b;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/h/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/e;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/model/a/e;Lcom/nianticproject/ingress/common/missions/cq;Lcom/nianticproject/ingress/common/missions/cc;Lcom/nianticproject/ingress/common/factionchoice/d;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/missions/ca;",
            ">;",
            "Lcom/nianticproject/ingress/common/g/p;",
            "Lcom/nianticproject/ingress/common/a;",
            "Lcom/nianticproject/ingress/common/g/b;",
            "Lcom/nianticproject/ingress/common/model/m;",
            "Lcom/nianticproject/ingress/common/h/k;",
            "Lcom/nianticproject/ingress/common/scanner/k;",
            "Lcom/nianticproject/ingress/common/scanner/e;",
            "Lcom/nianticproject/ingress/common/c/e;",
            "Lcom/nianticproject/ingress/common/model/a/e;",
            "Lcom/nianticproject/ingress/common/missions/cq;",
            "Lcom/nianticproject/ingress/common/missions/cc;",
            "Lcom/nianticproject/ingress/common/factionchoice/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    .line 410
    new-instance v1, Lcom/nianticproject/ingress/common/missions/bv;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/missions/bv;-><init>(Lcom/nianticproject/ingress/common/missions/bp;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->q:Lcom/nianticproject/ingress/common/missions/cj;

    .line 104
    invoke-static {p1}, Lcom/google/a/c/dc;->a(Ljava/util/Collection;)Lcom/google/a/c/dc;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    .line 105
    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/bp;->e:Lcom/nianticproject/ingress/common/g/p;

    .line 106
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/a;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->b:Lcom/nianticproject/ingress/common/a;

    .line 107
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/g/ad;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->i:Lcom/nianticproject/ingress/common/g/ad;

    .line 108
    invoke-static {p5}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/model/m;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->j:Lcom/nianticproject/ingress/common/model/m;

    .line 109
    iput-object p6, p0, Lcom/nianticproject/ingress/common/missions/bp;->k:Lcom/nianticproject/ingress/common/h/k;

    .line 110
    invoke-static {p7}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/scanner/k;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->c:Lcom/nianticproject/ingress/common/scanner/k;

    .line 111
    invoke-static {p8}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/scanner/e;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->d:Lcom/nianticproject/ingress/common/scanner/e;

    .line 112
    invoke-static {p9}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/c/e;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->l:Lcom/nianticproject/ingress/common/c/e;

    .line 113
    invoke-static {p10}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/model/a/e;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    .line 114
    invoke-static/range {p11 .. p11}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/missions/cq;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->g:Lcom/nianticproject/ingress/common/missions/cq;

    .line 115
    invoke-static/range {p12 .. p12}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/missions/cc;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->m:Lcom/nianticproject/ingress/common/missions/cc;

    .line 116
    new-instance v1, Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/g/p;->i()Lcom/nianticproject/ingress/common/u/q;

    move-result-object v2

    move-object/from16 v0, p13

    invoke-direct {v1, v0, p9, v2}, Lcom/nianticproject/ingress/common/factionchoice/n;-><init>(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/u/q;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->o:Lcom/nianticproject/ingress/common/factionchoice/n;

    .line 118
    invoke-interface/range {p11 .. p11}, Lcom/nianticproject/ingress/common/missions/cq;->s_()Lcom/nianticproject/ingress/common/missions/cl;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/common/missions/bq;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/missions/bq;-><init>(Lcom/nianticproject/ingress/common/missions/bp;)V

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/missions/cl;->a(Lcom/nianticproject/ingress/common/missions/cm;)V

    .line 126
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/missions/bp;->a(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->b:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->e:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->b:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->b:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->b:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->b:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->b:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->b:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->b:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->b:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->e:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->b:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->b:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->b:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->e:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->e:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->b:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->b:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->e:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->e:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->e:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->e:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->b:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->b:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->e:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->e:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->e:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->e:Lcom/nianticproject/ingress/common/missions/ck;

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->e:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v2, v3, v4}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->e:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/missions/bo;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->h:Lcom/nianticproject/ingress/common/missions/bo;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/bp;Lcom/nianticproject/ingress/common/missions/ca;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/missions/bp;->a(Lcom/nianticproject/ingress/common/missions/ca;Z)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/bp;Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ck;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/missions/bp;->a(Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ck;)V

    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/missions/ca;Z)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 328
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->h:Lcom/nianticproject/ingress/common/missions/bo;

    if-nez v0, :cond_1

    move v0, v11

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 332
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->g:Lcom/nianticproject/ingress/common/missions/cq;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bp;->i:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/bp;->j:Lcom/nianticproject/ingress/common/model/m;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/bp;->k:Lcom/nianticproject/ingress/common/h/k;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/missions/bp;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/missions/bp;->d:Lcom/nianticproject/ingress/common/scanner/e;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/missions/bp;->l:Lcom/nianticproject/ingress/common/c/e;

    iget-object v8, p0, Lcom/nianticproject/ingress/common/missions/bp;->b:Lcom/nianticproject/ingress/common/a;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->m()Lcom/nianticproject/ingress/common/d/a;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->x()Lcom/nianticproject/ingress/common/ui/elements/i;

    move-result-object v9

    iget-object v10, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    move-object v0, p1

    invoke-interface/range {v0 .. v10}, Lcom/nianticproject/ingress/common/missions/ca;->b(Lcom/nianticproject/ingress/common/missions/cq;Lcom/nianticproject/ingress/common/g/ad;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/h/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/e;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/ui/elements/i;Lcom/nianticproject/ingress/common/model/a/e;)Lcom/nianticproject/ingress/common/missions/bo;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->h:Lcom/nianticproject/ingress/common/missions/bo;

    .line 346
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/missions/ca;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/missions/bp;->a(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->h:Lcom/nianticproject/ingress/common/missions/bo;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/bo;->b()Lcom/nianticproject/ingress/common/missions/ch;

    move-result-object v2

    .line 350
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->q:Lcom/nianticproject/ingress/common/missions/cj;

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/common/missions/ch;->a(Lcom/nianticproject/ingress/common/missions/cj;)V

    .line 351
    invoke-interface {v2, p2}, Lcom/nianticproject/ingress/common/missions/ch;->a(Z)V

    move v1, v12

    .line 352
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/ca;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/co;->a(Lcom/nianticproject/ingress/common/missions/ca;)Lcom/nianticproject/ingress/common/model/a/i;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-virtual {v4, v3}, Lcom/nianticproject/ingress/common/model/a/e;->c(Lcom/nianticproject/ingress/common/model/a/i;)Lcom/nianticproject/ingress/common/missions/ck;

    move-result-object v3

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    if-eq v3, v4, :cond_2

    if-eq p1, v0, :cond_2

    move v0, v12

    :goto_2
    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/common/missions/ch;->b(Z)V

    move v1, v12

    .line 353
    :goto_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/ca;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/co;->a(Lcom/nianticproject/ingress/common/missions/ca;)Lcom/nianticproject/ingress/common/model/a/i;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-virtual {v4, v3}, Lcom/nianticproject/ingress/common/model/a/e;->c(Lcom/nianticproject/ingress/common/model/a/i;)Lcom/nianticproject/ingress/common/missions/ck;

    move-result-object v3

    sget-object v4, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    if-ne v3, v4, :cond_4

    if-eq p1, v0, :cond_4

    :goto_4
    invoke-interface {v2, v12}, Lcom/nianticproject/ingress/common/missions/ch;->c(Z)V

    .line 354
    invoke-interface {v2}, Lcom/nianticproject/ingress/common/missions/ch;->s()V

    .line 357
    invoke-interface {v2}, Lcom/nianticproject/ingress/common/missions/ch;->b()V

    .line 360
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->j:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/m;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    if-nez v0, :cond_6

    .line 362
    new-instance v0, Lcom/nianticproject/ingress/common/missions/bu;

    invoke-direct {v0, p0, v2}, Lcom/nianticproject/ingress/common/missions/bu;-><init>(Lcom/nianticproject/ingress/common/missions/bp;Lcom/nianticproject/ingress/common/missions/ch;)V

    .line 373
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->j:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/model/m;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 380
    :goto_5
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->b:Lcom/nianticproject/ingress/common/a;

    if-eqz v0, :cond_0

    .line 382
    const-string/jumbo v0, "training mission"

    .line 385
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->b:Lcom/nianticproject/ingress/common/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Started "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/missions/ch;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x1388

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/a;->a(Ljava/lang/String;JI)V

    .line 393
    :cond_0
    return-void

    :cond_1
    move v0, v12

    .line 329
    goto/16 :goto_0

    .line 352
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_3
    move v0, v11

    goto :goto_2

    .line 353
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    move v12, v11

    goto :goto_4

    .line 377
    :cond_6
    invoke-interface {v2}, Lcom/nianticproject/ingress/common/missions/ch;->c()V

    goto :goto_5
.end method

.method private a(Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ck;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/model/a/e;->c(Lcom/nianticproject/ingress/common/model/a/i;)Lcom/nianticproject/ingress/common/missions/ck;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->p:Ljava/util/Map;

    new-instance v2, Lcom/google/a/a/ak;

    invoke-direct {v2, v0, p2}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/ck;

    .line 407
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-virtual {v1, p1, v0}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ck;)V

    .line 408
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 291
    new-instance v1, Lcom/nianticproject/ingress/common/missions/cd;

    new-instance v0, Lcom/nianticproject/ingress/common/missions/bs;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/bs;-><init>(Lcom/nianticproject/ingress/common/missions/bp;)V

    invoke-direct {v1, p1, v0}, Lcom/nianticproject/ingress/common/missions/cd;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 301
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/ca;

    .line 302
    new-instance v3, Lcom/nianticproject/ingress/common/missions/bt;

    invoke-direct {v3, p0, v0}, Lcom/nianticproject/ingress/common/missions/bt;-><init>(Lcom/nianticproject/ingress/common/missions/bp;Lcom/nianticproject/ingress/common/missions/ca;)V

    .line 314
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/ca;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/ca;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/co;->a(Lcom/nianticproject/ingress/common/missions/ca;)Lcom/nianticproject/ingress/common/model/a/i;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/nianticproject/ingress/common/model/a/e;->c(Lcom/nianticproject/ingress/common/model/a/i;)Lcom/nianticproject/ingress/common/missions/ck;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v3, v0}, Lcom/nianticproject/ingress/common/missions/cd;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/missions/ck;)V

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->m:Lcom/nianticproject/ingress/common/missions/cc;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/cc;->a(Lcom/nianticproject/ingress/common/missions/cd;)V

    .line 322
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/g/p;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->e:Lcom/nianticproject/ingress/common/g/p;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/model/m;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->j:Lcom/nianticproject/ingress/common/model/m;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/a;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->b:Lcom/nianticproject/ingress/common/a;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/missions/bo;
    .locals 1
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->h:Lcom/nianticproject/ingress/common/missions/bo;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/missions/bp;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    return-object v0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/model/a/i;->r:Lcom/nianticproject/ingress/common/model/a/i;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;)Z

    move-result v0

    .line 183
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/missions/ca;
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/bp;->h()Lcom/nianticproject/ingress/common/missions/ca;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->c:Lcom/nianticproject/ingress/common/scanner/k;

    sget-object v1, Lcom/nianticproject/ingress/common/missions/dz;->a:Lcom/nianticproject/ingress/common/scanner/ev;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/scanner/ev;)V

    .line 236
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->c:Lcom/nianticproject/ingress/common/scanner/k;

    sget-object v1, Lcom/nianticproject/ingress/common/missions/ed;->a:Lcom/nianticproject/ingress/common/scanner/ev;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/scanner/ev;)V

    .line 237
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->c:Lcom/nianticproject/ingress/common/scanner/k;

    sget-object v1, Lcom/nianticproject/ingress/common/missions/dj;->a:Lcom/nianticproject/ingress/common/scanner/ev;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/scanner/ev;)V

    .line 238
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->c:Lcom/nianticproject/ingress/common/scanner/k;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ac;->a:Lcom/nianticproject/ingress/common/scanner/ac;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/scanner/ac;)V

    .line 239
    return-void
.end method

.method private h()Lcom/nianticproject/ingress/common/missions/ca;
    .locals 4

    .prologue
    .line 280
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/ca;

    .line 282
    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/co;->a(Lcom/nianticproject/ingress/common/missions/ca;)Lcom/nianticproject/ingress/common/model/a/i;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/model/a/e;->c(Lcom/nianticproject/ingress/common/model/a/i;)Lcom/nianticproject/ingress/common/missions/ck;

    move-result-object v2

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    if-ne v2, v3, :cond_0

    .line 287
    :goto_1
    return-object v0

    .line 280
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 287
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/missions/bp;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/bp;->i()V

    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->j:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/m;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    sget-object v0, Lcom/nianticproject/ingress/common/missions/bp;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 452
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/bp;->d()V

    .line 457
    :goto_0
    return-void

    .line 454
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/missions/bp;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 455
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/bp;->j()V

    goto :goto_0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/missions/bp;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/bp;->j()V

    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 479
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/bp;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->j:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/m;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/nianticproject/ingress/common/missions/bp;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Unable to send training announcement, player\'s location is unknown."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 483
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/g/p;->a(Z)V

    .line 484
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->j()Lcom/nianticproject/ingress/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/r;->b()V

    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/missions/bp;->a(Ljava/lang/String;)V

    .line 486
    return-void

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bp;->j:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/m;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/ai;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "successfully completed agent training and joined the %s."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bp;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/g/p;->m()Lcom/nianticproject/ingress/common/d/a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/nianticproject/ingress/common/d/a;->a(Ljava/lang/String;Lcom/google/a/d/u;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/model/a/i;->q:Lcom/nianticproject/ingress/common/model/a/i;

    invoke-virtual {v0, v1, v5}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;Z)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/missions/bp;)V
    .locals 3
    .parameter

    .prologue
    .line 62
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/model/a/i;->r:Lcom/nianticproject/ingress/common/model/a/i;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;Z)V

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/bp;->g()V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/nianticproject/ingress/common/missions/bp;)V
    .locals 3
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/ca;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/co;->a(Lcom/nianticproject/ingress/common/missions/ca;)Lcom/nianticproject/ingress/common/model/a/i;

    move-result-object v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/model/a/e;->c(Lcom/nianticproject/ingress/common/model/a/i;)Lcom/nianticproject/ingress/common/missions/ck;

    move-result-object v0

    sget-object v2, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :goto_1
    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/ca;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/co;->a(Lcom/nianticproject/ingress/common/missions/ca;)Lcom/nianticproject/ingress/common/model/a/i;

    move-result-object v0

    sget-object v2, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {p0, v0, v2}, Lcom/nianticproject/ingress/common/missions/bp;->a(Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ck;)V

    move v0, v1

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private k()Z
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/ca;

    .line 505
    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/co;->a(Lcom/nianticproject/ingress/common/missions/ca;)Lcom/nianticproject/ingress/common/model/a/i;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/model/a/e;->c(Lcom/nianticproject/ingress/common/model/a/i;)Lcom/nianticproject/ingress/common/missions/ck;

    move-result-object v0

    sget-object v2, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    if-ne v0, v2, :cond_0

    .line 507
    const/4 v0, 0x1

    .line 510
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 619
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/model/a/i;->q:Lcom/nianticproject/ingress/common/model/a/i;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;)Z

    move-result v0

    .line 621
    if-eqz v0, :cond_0

    move v0, v2

    .line 637
    :goto_0
    return v0

    .line 626
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->l()Lcom/nianticproject/ingress/knobs/PlayerAnnounceSharedKnobs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/knobs/PlayerAnnounceSharedKnobs;->a()J

    move-result-wide v0

    .line 628
    sget-object v3, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    sget-object v4, Lcom/nianticproject/ingress/shared/ah;->a:Lcom/nianticproject/ingress/shared/ah;

    if-ne v3, v4, :cond_1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    .line 631
    const-wide/16 v0, 0x0

    .line 636
    :cond_1
    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v4, Lcom/nianticproject/ingress/common/model/a/i;->g:Lcom/nianticproject/ingress/common/model/a/i;

    invoke-virtual {v3, v4}, Lcom/nianticproject/ingress/common/model/a/e;->b(Lcom/nianticproject/ingress/common/model/a/i;)J

    move-result-wide v3

    .line 637
    cmp-long v0, v3, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/missions/ca;)V
    .locals 3
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    sget-object v0, Lcom/nianticproject/ingress/common/missions/bp;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not find mission in mission controller: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-static {p1}, Lcom/nianticproject/ingress/common/missions/co;->a(Lcom/nianticproject/ingress/common/missions/ca;)Lcom/nianticproject/ingress/common/model/a/i;

    move-result-object v0

    .line 256
    sget-object v1, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/missions/bp;->a(Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ck;)V

    .line 260
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->H()Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/missions/bp;->a(Lcom/nianticproject/ingress/common/missions/ca;Z)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->j:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/m;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/bp;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/bp;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 191
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/ca;

    .line 200
    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/co;->a(Lcom/nianticproject/ingress/common/missions/ca;)Lcom/nianticproject/ingress/common/model/a/i;

    move-result-object v0

    .line 201
    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/model/a/e;->c(Lcom/nianticproject/ingress/common/model/a/i;)Lcom/nianticproject/ingress/common/missions/ck;

    move-result-object v2

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    if-ne v2, v3, :cond_0

    .line 202
    sget-object v2, Lcom/nianticproject/ingress/common/missions/ck;->e:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {p0, v0, v2}, Lcom/nianticproject/ingress/common/missions/bp;->a(Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ck;)V

    .line 198
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/bp;->h()Lcom/nianticproject/ingress/common/missions/ca;

    move-result-object v0

    .line 208
    if-nez v0, :cond_4

    .line 209
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/bp;->i()V

    .line 213
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/bp;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/bp;->g()V

    .line 223
    :cond_2
    :goto_1
    return-void

    .line 215
    :cond_3
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/bp;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    new-instance v0, Lcom/nianticproject/ingress/common/missions/bx;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/bx;-><init>(Lcom/nianticproject/ingress/common/missions/bp;)V

    new-instance v1, Lcom/nianticproject/ingress/common/missions/by;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/missions/by;-><init>(Lcom/nianticproject/ingress/common/missions/bp;)V

    new-instance v2, Lcom/nianticproject/ingress/common/missions/bz;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/missions/bz;-><init>(Lcom/nianticproject/ingress/common/missions/bp;)V

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/bp;->c:Lcom/nianticproject/ingress/common/scanner/k;

    new-instance v4, Lcom/nianticproject/ingress/common/missions/br;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/nianticproject/ingress/common/missions/br;-><init>(Lcom/nianticproject/ingress/common/missions/bp;Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;)V

    invoke-virtual {v3, v4}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/scanner/ev;)V

    goto :goto_1

    .line 222
    :cond_4
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/missions/bp;->a(Lcom/nianticproject/ingress/common/missions/ca;)V

    goto :goto_1
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->n:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/model/a/i;->r:Lcom/nianticproject/ingress/common/model/a/i;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;Z)V

    .line 243
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->o:Lcom/nianticproject/ingress/common/factionchoice/n;

    new-instance v1, Lcom/nianticproject/ingress/common/missions/bw;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/missions/bw;-><init>(Lcom/nianticproject/ingress/common/missions/bp;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/factionchoice/n;->a(Lcom/nianticproject/ingress/common/factionchoice/ai;)V

    .line 472
    return-void
.end method

.method public final e()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 684
    sget-object v1, Lcom/nianticproject/ingress/common/missions/bp;->a:Lcom/nianticproject/ingress/common/w/aa;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/bp;->l()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    .line 688
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->r()Lcom/nianticproject/ingress/common/model/a/e;

    move-result-object v2

    .line 689
    sget-object v1, Lcom/nianticproject/ingress/common/model/a/i;->q:Lcom/nianticproject/ingress/common/model/a/i;

    invoke-virtual {v2, v1, v0}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;Z)V

    .line 692
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    move v1, v0

    .line 693
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bp;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/ca;

    .line 695
    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/co;->a(Lcom/nianticproject/ingress/common/missions/ca;)Lcom/nianticproject/ingress/common/model/a/i;

    move-result-object v4

    .line 696
    if-ne v1, v3, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    .line 698
    :goto_1
    invoke-virtual {v2, v4, v0}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ck;)V

    .line 693
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 696
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/missions/ck;->a:Lcom/nianticproject/ingress/common/missions/ck;

    goto :goto_1

    .line 704
    :cond_1
    return-void
.end method
