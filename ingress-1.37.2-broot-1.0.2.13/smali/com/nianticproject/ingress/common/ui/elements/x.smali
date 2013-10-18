.class final Lcom/nianticproject/ingress/common/ui/elements/x;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

.field final synthetic b:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/x;->b:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/elements/x;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;-><init>()V

    return-void
.end method

.method private a(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x4000

    .line 222
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/x;->b:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->c:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->close:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    sget-object v2, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->X:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    if-eq v1, v2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 229
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/x;->b:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->a(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getWidth()F

    move-result v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/x;->b:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->a(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getHeight()F

    move-result v3

    div-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 230
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/x;->b:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->a(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 232
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 233
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    invoke-virtual {v2, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 235
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v1

    .line 237
    const/high16 v2, 0x4240

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    div-float/2addr v2, v5

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 242
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 245
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 246
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/x;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 247
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/x;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/x;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    .line 247
    :cond_0
    const/4 v0, 0x0

    .line 249
    goto :goto_0
.end method


# virtual methods
.method public final touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/ui/elements/x;->b(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/ui/elements/x;->a(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z

    move-result v0

    .line 268
    :goto_0
    return v0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/x;->b:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->c:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;

    iget-boolean v0, v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->touchOutsideToClose:Z

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/x;->b:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->g()V

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/x;->b:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->c:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;

    iget-boolean v0, v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->fullModal:Z

    goto :goto_0
.end method

.method public final touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    .line 275
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/ui/elements/x;->a(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/x;->b:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->f()V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/x;->b:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->c:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;

    iget-boolean v0, v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->touchInsideToClose:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/ui/elements/x;->b(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/x;->b:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->g()V

    .line 282
    :cond_1
    return-void
.end method
