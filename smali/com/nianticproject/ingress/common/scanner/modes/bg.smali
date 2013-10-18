.class final Lcom/nianticproject/ingress/common/scanner/modes/bg;
.super Lcom/nianticproject/ingress/common/scanner/modes/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/bf;

.field private e:Lcom/nianticproject/ingress/common/j/as;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/bf;Lcom/nianticproject/ingress/common/j/as;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bg;->a:Lcom/nianticproject/ingress/common/scanner/modes/bf;

    .line 145
    const-string/jumbo v0, "DEPLOY"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/aa;-><init>(Ljava/lang/String;)V

    .line 146
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bg;->e:Lcom/nianticproject/ingress/common/j/as;

    .line 147
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bg;->a:Lcom/nianticproject/ingress/common/scanner/modes/bf;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bf;->b(Lcom/nianticproject/ingress/common/scanner/modes/bf;)Lcom/nianticproject/ingress/common/itemupgrade/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bg;->a:Lcom/nianticproject/ingress/common/scanner/modes/bf;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bf;->b(Lcom/nianticproject/ingress/common/scanner/modes/bf;)Lcom/nianticproject/ingress/common/itemupgrade/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->d()V

    .line 171
    :cond_0
    return-void
.end method

.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/modes/bg;->a:Lcom/nianticproject/ingress/common/scanner/modes/bf;

    new-instance v0, Lcom/nianticproject/ingress/common/itemupgrade/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bg;->a:Lcom/nianticproject/ingress/common/scanner/modes/bf;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/bf;->a(Lcom/nianticproject/ingress/common/scanner/modes/bf;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bg;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bg;->d:Lcom/nianticproject/ingress/common/ui/a/c;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/bg;->e:Lcom/nianticproject/ingress/common/j/as;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/bg;->a:Lcom/nianticproject/ingress/common/scanner/modes/bf;

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/itemupgrade/c;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/ui/widget/ActionButton;Lcom/nianticproject/ingress/common/ui/a/c;Lcom/nianticproject/ingress/common/j/as;Lcom/nianticproject/ingress/common/scanner/modes/bf;)V

    invoke-static {v6, v0}, Lcom/nianticproject/ingress/common/scanner/modes/bf;->a(Lcom/nianticproject/ingress/common/scanner/modes/bf;Lcom/nianticproject/ingress/common/itemupgrade/c;)Lcom/nianticproject/ingress/common/itemupgrade/c;

    .line 153
    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 154
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bg;->a:Lcom/nianticproject/ingress/common/scanner/modes/bf;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bf;->b(Lcom/nianticproject/ingress/common/scanner/modes/bf;)Lcom/nianticproject/ingress/common/itemupgrade/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 155
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/modes/aa;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    .line 156
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bg;->a:Lcom/nianticproject/ingress/common/scanner/modes/bf;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bf;->c(Lcom/nianticproject/ingress/common/scanner/modes/bf;)Lcom/nianticproject/ingress/common/model/GameState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bg;->a:Lcom/nianticproject/ingress/common/scanner/modes/bf;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bg;->a:Lcom/nianticproject/ingress/common/scanner/modes/bf;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/bf;->c(Lcom/nianticproject/ingress/common/scanner/modes/bf;)Lcom/nianticproject/ingress/common/model/GameState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/bf;->b(Lcom/nianticproject/ingress/common/model/GameState;)V

    .line 159
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bg;->a:Lcom/nianticproject/ingress/common/scanner/modes/bf;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bf;->c()V

    .line 176
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/modes/aa;->e()V

    .line 164
    return-void
.end method
