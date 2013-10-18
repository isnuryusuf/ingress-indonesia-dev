.class public final Lcom/nianticproject/ingress/common/scanner/i;
.super Lcom/nianticproject/ingress/common/scanner/ew;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/c;


# instance fields
.field protected a:Z

.field private final d:Lcom/nianticproject/ingress/common/r;

.field private final e:Lcom/nianticproject/ingress/common/model/k;

.field private final f:Lcom/nianticproject/ingress/gameentity/f;

.field private final g:Z

.field private final h:Lcom/nianticproject/ingress/common/scanner/j;

.field private final i:Lcom/nianticproject/ingress/common/h/l;

.field private final j:Lcom/nianticproject/ingress/common/a;

.field private k:Lcom/nianticproject/ingress/common/scanner/z;

.field private l:Lcom/nianticproject/ingress/common/u;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/j;ZLcom/nianticproject/ingress/common/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const-string/jumbo v0, "PortalKeyScannerActivity"

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/scanner/ew;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->l:Lcom/nianticproject/ingress/common/u;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->a:Z

    .line 69
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/i;->d:Lcom/nianticproject/ingress/common/r;

    .line 70
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/i;->i:Lcom/nianticproject/ingress/common/h/l;

    .line 71
    iput-object p4, p0, Lcom/nianticproject/ingress/common/scanner/i;->e:Lcom/nianticproject/ingress/common/model/k;

    .line 72
    iput-object p5, p0, Lcom/nianticproject/ingress/common/scanner/i;->f:Lcom/nianticproject/ingress/gameentity/f;

    .line 73
    invoke-static {p6}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/j;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->h:Lcom/nianticproject/ingress/common/scanner/j;

    .line 74
    iput-boolean p7, p0, Lcom/nianticproject/ingress/common/scanner/i;->g:Z

    .line 75
    invoke-static {p8}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/a;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->j:Lcom/nianticproject/ingress/common/a;

    .line 76
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/ui/x;II)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/bj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/i;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/i;->d:Lcom/nianticproject/ingress/common/r;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/i;->i:Lcom/nianticproject/ingress/common/h/l;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/i;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/i;->e:Lcom/nianticproject/ingress/common/model/k;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/i;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v5, v5, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/i;->f:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/i;->h:Lcom/nianticproject/ingress/common/scanner/j;

    iget-object v8, p0, Lcom/nianticproject/ingress/common/scanner/i;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v8, v8, Lcom/nianticproject/ingress/common/scanner/k;->b:Lcom/nianticproject/ingress/common/scanner/ey;

    iget-object v9, p0, Lcom/nianticproject/ingress/common/scanner/i;->c:Lcom/nianticproject/ingress/common/ui/t;

    iget-boolean v10, p0, Lcom/nianticproject/ingress/common/scanner/i;->g:Z

    invoke-direct/range {v0 .. v10}, Lcom/nianticproject/ingress/common/scanner/modes/bj;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/j;Lcom/nianticproject/ingress/common/scanner/modes/bl;Lcom/nianticproject/ingress/common/ui/t;Z)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/i;->a(Lcom/nianticproject/ingress/common/ui/e/a;)V

    .line 87
    const v1, 0x3f0ccccd

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/a;->c(F)V

    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->C()Lcom/nianticproject/ingress/common/scanner/z;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->k:Lcom/nianticproject/ingress/common/scanner/z;

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nianticproject/ingress/common/scanner/ew;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/ui/x;II)V

    .line 91
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->a:Z

    .line 135
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public final h_()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/ew;->h_()V

    .line 119
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->j:Lcom/nianticproject/ingress/common/a;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->a:Z

    .line 121
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->j:Lcom/nianticproject/ingress/common/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/a;->c(Z)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->j:Lcom/nianticproject/ingress/common/a;

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/a;->a(Lcom/nianticproject/ingress/common/c;)V

    .line 127
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->d:Lcom/nianticproject/ingress/common/r;

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->e()Lcom/nianticproject/ingress/knobs/ScannerKnobs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/knobs/ScannerKnobs;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/r;->a(I)Lcom/nianticproject/ingress/common/u;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->l:Lcom/nianticproject/ingress/common/u;

    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->l:Lcom/nianticproject/ingress/common/u;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/i;->h:Lcom/nianticproject/ingress/common/scanner/j;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/scanner/j;->b()Lcom/google/a/d/u;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/u;->a(Lcom/google/a/d/u;)V

    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->d:Lcom/nianticproject/ingress/common/r;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/r;->b()V

    .line 130
    return-void
.end method

.method public final i_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->l:Lcom/nianticproject/ingress/common/u;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->l:Lcom/nianticproject/ingress/common/u;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/u;->a()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->l:Lcom/nianticproject/ingress/common/u;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->j:Lcom/nianticproject/ingress/common/a;

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/a;->b(Lcom/nianticproject/ingress/common/c;)V

    .line 107
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->a:Z

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->j:Lcom/nianticproject/ingress/common/a;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/a;->b(Z)V

    .line 109
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/i;->a:Z

    .line 112
    :cond_1
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/ew;->i_()V

    .line 113
    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->h:Lcom/nianticproject/ingress/common/scanner/j;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/j;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p_()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/ew;->p_()V

    .line 96
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/i;->k:Lcom/nianticproject/ingress/common/scanner/z;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/z;->a()V

    .line 97
    return-void
.end method
