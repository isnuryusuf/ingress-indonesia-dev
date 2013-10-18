.class public final Lcom/nianticproject/ingress/common/scanner/modes/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/scanner/k;

.field private final c:Lcom/nianticproject/ingress/common/model/k;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/nianticproject/ingress/common/gameentity/e;

.field private f:Lcom/nianticproject/ingress/common/scanner/visuals/t;

.field private g:Lcom/nianticproject/ingress/common/scanner/visuals/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nianticproject/ingress/common/scanner/modes/i;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->b:Lcom/nianticproject/ingress/common/scanner/k;

    .line 50
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->c:Lcom/nianticproject/ingress/common/model/k;

    .line 51
    invoke-interface {p3}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->d:Ljava/lang/String;

    .line 52
    invoke-static {p4}, Lcom/nianticproject/ingress/common/gameentity/g;->h(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/common/gameentity/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->e:Lcom/nianticproject/ingress/common/gameentity/e;

    .line 53
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/i;->a(Z)V

    .line 58
    sget-boolean v0, Lcom/nianticproject/ingress/common/scanner/modes/i;->a:Z

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 68
    new-instance v2, Lcom/nianticproject/ingress/common/scanner/visuals/c;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ag;->L:Lcom/nianticproject/ingress/common/j/ai;

    invoke-direct {v2, v3, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->g:Lcom/nianticproject/ingress/common/scanner/visuals/c;

    .line 69
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/k;->l()Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->g:Lcom/nianticproject/ingress/common/scanner/visuals/c;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 71
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;-><init>(F)V

    .line 73
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput-object v2, v1, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;->b:Lcom/badlogic/gdx/graphics/Color;

    .line 75
    new-instance v2, Lcom/nianticproject/ingress/common/scanner/visuals/t;

    invoke-direct {v2, v1, v4, v4}, Lcom/nianticproject/ingress/common/scanner/visuals/t;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/b/t;Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/common/scanner/ej;)V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->f:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    .line 76
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->f:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/t;->a(Z)V

    .line 77
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->f:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/t;->a()V

    .line 79
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->f:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/b/b;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ej;->b(Lcom/nianticproject/ingress/common/j/o;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 83
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->g:Lcom/nianticproject/ingress/common/scanner/visuals/c;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->g:Lcom/nianticproject/ingress/common/scanner/visuals/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/c;->d()V

    .line 85
    iput-object v7, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->g:Lcom/nianticproject/ingress/common/scanner/visuals/c;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->f:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->f:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/t;->a(Z)V

    .line 93
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v6

    .line 94
    if-eqz p1, :cond_2

    if-eqz v6, :cond_2

    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->f:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/t;->e()Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->c()F

    move-result v0

    const v1, 0x3d4ccccd

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->f:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/t;->f()F

    move-result v1

    sub-float v5, v0, v1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->l()Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    move-result-object v0

    invoke-interface {v6}, Lcom/nianticproject/ingress/common/scanner/ej;->c()Lcom/google/a/d/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->a(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v3

    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/p;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->e:Lcom/nianticproject/ingress/common/gameentity/e;

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/visuals/p;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/gameentity/e;Lcom/nianticproject/ingress/common/scanner/eo;Lcom/nianticproject/ingress/common/scanner/eo;F)V

    invoke-interface {v6, v0}, Lcom/nianticproject/ingress/common/scanner/ej;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 99
    :goto_0
    iput-object v7, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->f:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    .line 101
    :cond_1
    return-void

    .line 97
    :cond_2
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/s;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/s;-><init>()V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->b:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/i;->f:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/t;->a(Lcom/nianticproject/ingress/common/scanner/visuals/b/t;)V

    goto :goto_0
.end method
