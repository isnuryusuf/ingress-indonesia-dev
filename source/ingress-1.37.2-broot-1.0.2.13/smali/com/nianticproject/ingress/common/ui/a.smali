.class public abstract Lcom/nianticproject/ingress/common/ui/a;
.super Lcom/badlogic/gdx/InputMultiplexer;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/m;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/nianticproject/ingress/common/ui/ad;

.field private c:Lcom/nianticproject/ingress/common/ui/t;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/InputMultiplexer;-><init>()V

    .line 28
    new-instance v0, Lcom/nianticproject/ingress/common/ui/ad;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/ui/ad;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/a;->b:Lcom/nianticproject/ingress/common/ui/ad;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/a;->d:Z

    .line 33
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/a;->a:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method protected final J()Lcom/nianticproject/ingress/common/ui/t;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/a;->c:Lcom/nianticproject/ingress/common/ui/t;

    return-object v0
.end method

.method public final K()Lcom/nianticproject/ingress/common/ui/ad;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/a;->b:Lcom/nianticproject/ingress/common/ui/ad;

    return-object v0
.end method

.method public final L()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/a;->d:Z

    return v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected a(F)V
    .locals 0
    .parameter

    .prologue
    .line 136
    return-void
.end method

.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    return-void
.end method

.method protected a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/ui/x;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/a;->b:Lcom/nianticproject/ingress/common/ui/ad;

    invoke-interface {p2, p3, p4}, Lcom/nianticproject/ingress/common/ui/x;->a(II)Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 56
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/a;->b:Lcom/nianticproject/ingress/common/ui/ad;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/ad;->a()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/common/ui/a;->addProcessor(ILcom/badlogic/gdx/InputProcessor;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/ui/a;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 58
    return-void
.end method

.method public a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/t;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/a;->c:Lcom/nianticproject/ingress/common/ui/t;

    .line 181
    return-void
.end method

.method public final a_(F)V
    .locals 1
    .parameter

    .prologue
    .line 122
    :try_start_0
    const-string/jumbo v0, "AbstractSubActivity.doUpdate"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/ui/a;->a(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 128
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/a;->d:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/a;->b:Lcom/nianticproject/ingress/common/ui/ad;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/ad;->a(F)V

    .line 131
    :cond_0
    return-void

    .line 125
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final b(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/a;->b:Lcom/nianticproject/ingress/common/ui/ad;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/ui/ad;->a(II)V

    .line 162
    return-void
.end method

.method public b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    return-void
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method protected f()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public final g_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h_()V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;)V

    .line 70
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/a;->d:Z

    .line 71
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/a;->a()V

    .line 72
    return-void
.end method

.method public final i_()V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/nianticproject/ingress/common/a/c;->c()V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/a;->e()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/a;->d:Z

    .line 112
    return-void
.end method

.method public final j_()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/a;->g()V

    .line 141
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/a;->b:Lcom/nianticproject/ingress/common/ui/ad;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/ad;->b()V

    .line 142
    return-void
.end method

.method public k_()Lcom/nianticproject/ingress/common/ui/n;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/nianticproject/ingress/common/ui/n;->a:Lcom/nianticproject/ingress/common/ui/n;

    return-object v0
.end method

.method public l_()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public m_()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public p_()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/a;->b:Lcom/nianticproject/ingress/common/ui/ad;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/ad;->dispose()V

    .line 167
    return-void
.end method

.method public q_()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method
