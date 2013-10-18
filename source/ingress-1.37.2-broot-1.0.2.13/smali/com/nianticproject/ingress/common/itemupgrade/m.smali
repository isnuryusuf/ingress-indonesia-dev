.class final Lcom/nianticproject/ingress/common/itemupgrade/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/bc;


# instance fields
.field a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field final synthetic b:Lcom/nianticproject/ingress/common/itemupgrade/l;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/itemupgrade/l;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/nianticproject/ingress/common/itemupgrade/m;->b:Lcom/nianticproject/ingress/common/itemupgrade/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/m;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/m;->b:Lcom/nianticproject/ingress/common/itemupgrade/l;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/itemupgrade/l;->b(Lcom/nianticproject/ingress/common/itemupgrade/l;)V

    .line 205
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    return-void
.end method

.method public final b(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/m;->b:Lcom/nianticproject/ingress/common/itemupgrade/l;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/itemupgrade/l;->a(Lcom/nianticproject/ingress/common/itemupgrade/l;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/m;->b:Lcom/nianticproject/ingress/common/itemupgrade/l;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/itemupgrade/l;->a()V

    .line 181
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/m;->b:Lcom/nianticproject/ingress/common/itemupgrade/l;

    invoke-static {v0, p1, p1}, Lcom/nianticproject/ingress/common/itemupgrade/l;->a(Lcom/nianticproject/ingress/common/itemupgrade/l;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 182
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/m;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/m;->b:Lcom/nianticproject/ingress/common/itemupgrade/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/m;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-static {v0, v1, p1}, Lcom/nianticproject/ingress/common/itemupgrade/l;->a(Lcom/nianticproject/ingress/common/itemupgrade/l;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 185
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/ingress/common/itemupgrade/m;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 188
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/m;->b:Lcom/nianticproject/ingress/common/itemupgrade/l;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/itemupgrade/l;->b()V

    .line 189
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/m;->b:Lcom/nianticproject/ingress/common/itemupgrade/l;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/itemupgrade/l;->a(Lcom/nianticproject/ingress/common/itemupgrade/l;)V

    .line 190
    return-void
.end method

.method public final c(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    return-void
.end method
