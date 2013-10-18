.class public final Lcom/nianticproject/ingress/common/scanner/modes/bh;
.super Lcom/nianticproject/ingress/common/scanner/modes/ag;
.source "SourceFile"


# instance fields
.field private final g:Lcom/nianticproject/ingress/common/j/av;

.field private final h:Lcom/nianticproject/ingress/common/g/e;

.field private final i:Lcom/nianticproject/ingress/common/j/h;

.field private final j:Lcom/nianticproject/ingress/common/h/l;

.field private final k:Lcom/nianticproject/ingress/common/model/k;

.field private final l:Lcom/nianticproject/ingress/common/scanner/ed;

.field private final m:Lcom/nianticproject/ingress/common/ui/elements/av;

.field private n:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

.field private o:Lcom/nianticproject/ingress/common/model/GameState;

.field private p:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/ui/elements/av;)V
    .locals 1
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

    .prologue
    .line 54
    invoke-direct {p0, p1, p7, p8}, Lcom/nianticproject/ingress/common/scanner/modes/ag;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/common/scanner/ej;)V

    .line 55
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/h;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->i:Lcom/nianticproject/ingress/common/j/h;

    .line 56
    invoke-static {p6}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->k:Lcom/nianticproject/ingress/common/model/k;

    .line 57
    invoke-static {p5}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/h/l;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->j:Lcom/nianticproject/ingress/common/h/l;

    .line 58
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/av;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->g:Lcom/nianticproject/ingress/common/j/av;

    .line 59
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->h:Lcom/nianticproject/ingress/common/g/e;

    .line 60
    invoke-static {p9}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/ed;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->l:Lcom/nianticproject/ingress/common/scanner/ed;

    .line 61
    invoke-static {p10}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/av;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->m:Lcom/nianticproject/ingress/common/ui/elements/av;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->p:Z

    .line 63
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/j/as;)V
    .locals 12
    .parameter

    .prologue
    .line 68
    :try_start_0
    const-string/jumbo v0, "PortalZoomMode.onStart"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 70
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->p:Z

    if-eqz v0, :cond_0

    const/high16 v11, 0x3f40

    invoke-static {v11}, La;->z(F)F

    move-result v11

    .line 74
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->p:Z

    .line 76
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->i:Lcom/nianticproject/ingress/common/j/h;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->g:Lcom/nianticproject/ingress/common/j/av;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->h:Lcom/nianticproject/ingress/common/g/e;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->k:Lcom/nianticproject/ingress/common/model/k;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->e:Lcom/nianticproject/ingress/common/scanner/ej;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->o:Lcom/nianticproject/ingress/common/model/GameState;

    iget-object v8, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->j:Lcom/nianticproject/ingress/common/h/l;

    iget-object v9, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->l:Lcom/nianticproject/ingress/common/scanner/ed;

    iget-object v10, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->m:Lcom/nianticproject/ingress/common/ui/elements/av;

    invoke-direct/range {v0 .. v11}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/common/model/GameState;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/ui/elements/av;F)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->n:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->n:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/modes/bi;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/scanner/modes/bi;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/bh;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->a(Lcom/nianticproject/ingress/common/ui/elements/aa;)V

    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->n:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 92
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a(Lcom/nianticproject/ingress/common/j/as;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 95
    return-void

    .line 70
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    :try_start_0
    const-string/jumbo v0, "PortalZoomMode.setGameState"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 116
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    .line 117
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->o:Lcom/nianticproject/ingress/common/model/GameState;

    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->n:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->n:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->a(Lcom/nianticproject/ingress/common/model/GameState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->n:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->n:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->g()V

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->n:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bh;->n:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    .line 109
    :cond_0
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->b()V

    .line 110
    return-void
.end method
