.class public Lcom/nianticproject/ingress/common/scanner/ew;
.super Lcom/nianticproject/ingress/common/ui/f;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/m;


# instance fields
.field private final a:Ljava/lang/String;

.field protected final b:Lcom/nianticproject/ingress/common/scanner/k;

.field protected c:Lcom/nianticproject/ingress/common/ui/t;

.field private d:Lcom/nianticproject/ingress/common/ui/e/a;

.field private e:Lcom/nianticproject/ingress/common/ui/e/a;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/f;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/ew;->b:Lcom/nianticproject/ingress/common/scanner/k;

    .line 53
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/ew;->a:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/k;->a(II)V

    .line 133
    return-void
.end method

.method public a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/ui/x;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->d:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/e/b;->b()V

    .line 97
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/ex;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ew;->d:Lcom/nianticproject/ingress/common/ui/e/a;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/ew;->c:Lcom/nianticproject/ingress/common/ui/t;

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/ex;-><init>(Lcom/nianticproject/ingress/common/ui/e/a;Lcom/nianticproject/ingress/common/ui/t;)V

    .line 98
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ew;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/e/b;->c(Lcom/nianticproject/ingress/common/ui/e/a;)Lcom/nianticproject/ingress/common/ui/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->e:Lcom/nianticproject/ingress/common/ui/e/a;

    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/ew;->a(Lcom/badlogic/gdx/InputProcessor;)V

    .line 101
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    .line 163
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/e/a;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/ew;->d:Lcom/nianticproject/ingress/common/ui/e/a;

    .line 77
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/t;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/ew;->c:Lcom/nianticproject/ingress/common/ui/t;

    .line 113
    return-void
.end method

.method public final a_(F)V
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/k;->a_(F)V

    .line 168
    return-void
.end method

.method public final b(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/k;->b(II)V

    .line 138
    return-void
.end method

.method public final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    return-void
.end method

.method public final g_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h_()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->h_()V

    .line 153
    return-void
.end method

.method public i_()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->i_()V

    .line 148
    return-void
.end method

.method public final j_()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->j_()V

    .line 158
    return-void
.end method

.method public final k_()Lcom/nianticproject/ingress/common/ui/n;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->k_()Lcom/nianticproject/ingress/common/ui/n;

    move-result-object v0

    return-object v0
.end method

.method public final l_()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->l_()Z

    move-result v0

    return v0
.end method

.method public final m_()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->d:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/e/a;->a()Lcom/nianticproject/ingress/common/ui/e/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nianticproject/ingress/common/ui/e/d;->b:Z

    return v0
.end method

.method public p_()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/e/b;->b()V

    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ew;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ew;->e:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/e/b;->c(Lcom/nianticproject/ingress/common/ui/e/a;)Lcom/nianticproject/ingress/common/ui/e/a;

    .line 108
    return-void
.end method

.method public final q_()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method
